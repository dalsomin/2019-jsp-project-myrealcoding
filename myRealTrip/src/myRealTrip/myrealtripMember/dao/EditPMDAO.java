package myRealTrip.myrealtripMember.dao;

import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import myRealTrip.auth.model.Member;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;

public class EditPMDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private static EditPMDAO dao = new EditPMDAO();

	public static EditPMDAO getInstance() {
		return dao;
	}


	public int updateMember(Connection conn, String member_name, String facebook, String naver, String member_pic, int memberId){

		String sql = " update member "
				+" set member_name = ?, facebook = ?, naver = ?, member_pic = ? , moddate = sysdate "
				+" where memberId = ? ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_name);
			pstmt.setString(2, facebook);
			pstmt.setString(3, naver);			
			pstmt.setString(4, member_pic);
			pstmt.setInt(5, memberId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		return result;
	}

		
	
	
	public int insertAgreeMem(Connection conn, int memberId, String mar_type) {

		String sql = " insert into agree_mem "
				+" values (seq_marcode.nextval, ?, ?) ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId);
			pstmt.setString(2, mar_type);			
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		return result;
	}
	
	
	
	public int deleteAgreeMem(Connection conn, int memberId) {

		String sql = " delete from agree_mem "
				+" where memberId=?  ";

		PreparedStatement pstmt = null;      
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId); 
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		return result;
	}
	
	
	
	
	public ArrayList<String> selectMarType(Connection conn, int memberId){

			ArrayList<String> list = new ArrayList<>();

			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = conn.prepareStatement(" select mar_type from agree_mem where memberId = ? ");
				pstmt.setInt(1, memberId);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					list.add(   rs.getString("mar_type")  );
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} catch (SQLException e2) {
				}
				return list;
			}
		}
	
	
	
	/*
	public ArrayList<Member> selectModDate(Connection conn, int memberId){

		ArrayList<Member> list = new ArrayList<Member>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql =   " select scn_to_timestamp(ora_rowscn) as moddate "
				+	" from member "
				+	" where memberId = ? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId);
			rs = pstmt.executeQuery();
			//rs.next();  //
			while (rs.next()) {
				Member dto = new Member();
				dto.setModdate(rs.getDate("moddate"));
				list.add(dto);
				
				//System.out.println(dto.getModdate());
				
				//System.out.println("> " + dto.getModdate()  );
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e2) {
			}
			return list;
		}
	}
	*/
	
	
	
		
}
