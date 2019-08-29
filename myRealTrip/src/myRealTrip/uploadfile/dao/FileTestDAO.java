package myRealTrip.uploadfile.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myRealTrip.uploadfile.model.FileTestDTO;
import net.sf.json.JSONArray;

public class FileTestDAO {
	// 싱글톤
	private static FileTestDAO dao = null;
	private FileTestDAO() {}
	public static FileTestDAO getInstance() {
		if( dao == null ) {
			dao = new FileTestDAO();
		}
		return dao;
	}
 
	public int insert(Connection conn, FileTestDTO dto, int memberId) {
		 int result = 0;
		String sql = "update partner set partnerpicture=? where memberId =? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getFilesystemname());
				pstmt.setInt(2, memberId);
	
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			try { pstmt.close(); } catch (SQLException e) {e.printStackTrace();			}
		}
		return result;
	}
 	
	public ArrayList<FileTestDTO> selectFileList(Connection conn) {
		ArrayList<FileTestDTO> list = new ArrayList<>();
		String sql = 
				" select num, subject, filesystemname, originalfilename, filelength  "
				+" from filetest "
				+" order by num desc ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			FileTestDTO dto = null;
			while( rs.next()) {
				dto = new FileTestDTO();
				    dto.setNum(rs.getInt("num"));
					dto.setSubject( rs.getString("subject"));
					dto.setFilesystemname(rs.getString("filesystemname"));
					dto.setOriginalfilename(rs.getString("originalfilename"));
					dto.setFilelength(rs.getLong("filelength"));
				list.add(dto);
			}
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			try { pstmt.close(); } catch (SQLException e) {e.printStackTrace();			}
		}
		return list;
	}
	public int delete(Connection conn, int num) {
	    int result = 0;
	    String sql = "delete from filetest where num = ?";
	    PreparedStatement pstmt = null;
	    try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch (SQLException e) { e.printStackTrace();			}
			try { conn.close(); } catch (SQLException e) { e.printStackTrace();			}
		}
		return result;
	}
	public FileTestDTO getDTO(Connection conn, int num) {
		String sql = 
				" select num, subject, filesystemname, originalfilename, filelength  "
				+" from filetest "
				+" where num = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		FileTestDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			   pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				dto = new FileTestDTO();
				    dto.setNum(rs.getInt("num"));
					dto.setSubject( rs.getString("subject"));
					dto.setFilesystemname(rs.getString("filesystemname"));
					dto.setOriginalfilename(rs.getString("originalfilename"));
					dto.setFilelength(rs.getLong("filelength"));
			}
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			try { pstmt.close(); } catch (SQLException e) {e.printStackTrace();			}
		}
		return dto;
	}
	public int update(Connection conn, FileTestDTO dto) {
		
		int result = 0;
	    String sql = " update filetest "
	    		+ " set subject=?,filesystemname=?,originalfilename=?,filelength=?   "
	            + " where num = ?";
	    PreparedStatement pstmt = null;
	    try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSubject());
				pstmt.setString(2, dto.getFilesystemname());
				pstmt.setString(3, dto.getOriginalfilename() );
				pstmt.setLong(4, dto.getFilelength());
				pstmt.setInt(5, dto.getNum() );
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close(); } catch (SQLException e) { e.printStackTrace();			}
			try { conn.close(); } catch (SQLException e) { e.printStackTrace();			}
		}
		return result;
		
	}

	 

	 

	public JSONArray selectfilelist(Connection conn) {
		System.out.println("selectfilelist DAO---");
		
		JSONArray jsonarray = new JSONArray();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from filetest";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				FileTestDTO dto  = new FileTestDTO();
				dto.setFilesystemname(rs.getString("filesystemname"));
				dto.setSubject(rs.getString("filepath"));
				
				jsonarray.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return jsonarray;
	}
	public void insertfilelist(Connection conn, 
			String filesystemname,
			String originalname,
			String filepath
			) {
		PreparedStatement  ps = null;
		String sql =" insert into filetest values(?,?,?)";
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, filesystemname);
			ps.setString(2,originalname);
			ps.setString(3, filepath);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void insertfilelist_ipartner(Connection conn, int memberId, String filesystemname) {
		System.out.println("insertfilelist--ipartner DAO---");
		// TODO Auto-generated method stub
		PreparedStatement  ps = null;
		String sql =" insert into partner(memberId,partnerpicture) values(?,?)";
		try {
			ps= conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			ps.setString(2, filesystemname);
			int result = ps.executeUpdate();
			System.out.println("성공적으로 인서트--"+result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try { ps.close(); } catch (SQLException e) { e.printStackTrace();			}
		//	try { conn.close(); } catch (SQLException e) { e.printStackTrace();			}
		}
	}
	public JSONArray selectfilelist_ipartner(Connection conn, int memberId, String filesystemname) {
		// TODO Auto-generated method stub
		System.out.println("selectfilelist--ipartner DAO---");
		System.out.println("파일 잘 넘어 오니? "+filesystemname);
		JSONArray jsonarray = new JSONArray();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select partnerpicture from partner where memberId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				FileTestDTO dto  = new FileTestDTO();
				dto.setFilesystemname(rs.getString("partnerpicture"));				
				jsonarray.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try { ps.close(); } catch (SQLException e) { e.printStackTrace();			}
			//try { conn.close(); } catch (SQLException e) { e.printStackTrace();			}
		}
		
		return jsonarray;
	}
	public int selectmemberId(Connection conn, int memberId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result=0;
		String sql = "select count(*) cnt from partner where memberId =? ";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs=ps.executeQuery();
			if (rs.next()) {
				result=rs.getInt("cnt");
			}
			System.out.println("이미 등록?--"+result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public void updatefile_ipartner(Connection conn, int memberId, String filesystemname) {
		// TODO Auto-generated method stub
		System.out.println("updatefile_ipartner DAO---");
		// TODO Auto-generated method stub
		PreparedStatement  ps = null;
		String sql =" update partner set partnerpicture=? "
				+ " where memberId=? ";
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, filesystemname);
			ps.setInt(2, memberId);
			int result = ps.executeUpdate();
			System.out.println("성공적으로 업데이트--"+result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try { ps.close(); } catch (SQLException e) { e.printStackTrace();			}
		//	try { conn.close(); } catch (SQLException e) { e.printStackTrace();			}
		}
	}


}









