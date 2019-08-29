package myRealTrip.partner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import myRealTrip.partner.dto.InfoDTO;

public class InfoDAO {

	private static InfoDAO infodao = null;
	private InfoDAO() {}
	public static InfoDAO getInstance() {
		if (infodao==null) {
			infodao= new InfoDAO();
		}
		return infodao;
	};
	
	public List<InfoDTO> select_infolist
	(Connection conn, int startRow, int size)	{
		InfoDTO infodto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<InfoDTO> result   = null;
		String sql = " select * from (select rownum no, t.*  from (select * from p_info order by pn_no desc) t)b where b.no between ? and ?  ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, startRow+size-1);
			rs = pstmt.executeQuery();
		    result  = new ArrayList<>();
			while (rs.next()) {
				infodto=new InfoDTO();
				infodto.setPn_no(rs.getInt("pn_no"));
				infodto.setPn_title(rs.getString("pn_title"));
				infodto.setPn_detail(rs.getString("pn_detail"));
				infodto.setPn_regdate(rs.getDate("pn_regdate"));

				result.add(infodto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
	public int select_allcnt(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		int result = 0;
		String sql ="select count(*) cnt from p_info";
		try {
			pstmt=conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			if (rs.next()) {
				 result=rs.getInt("cnt");
				 return result;
			}
			return 0;

		} catch (SQLException e) {
			System.out.println("infodao에서 에러ㅜ,ㅜ");
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return 0;
		
	}
	

}
