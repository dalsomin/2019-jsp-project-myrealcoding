package myRealTrip.partner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import myRealTrip.partner.dto.SurveyDTO;

public class SurveyDAO {

	private static SurveyDAO serveydao = null;
	private SurveyDAO() {}
	public static SurveyDAO getInstance() {
		if (serveydao==null) {
			serveydao = new SurveyDAO();
		}
		return serveydao;
		
	}
	public void insertSurvey(Connection conn, SurveyDTO surveydto) {
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into survey values (?,?,?,?,?,?)";
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, surveydto.getMemberId());
			pstmt.setString(2, surveydto.getKnow_path());
			pstmt.setString(3, surveydto.getMncareer());
			pstmt.setString(4, surveydto.getOther_ch());
			pstmt.setString(5, surveydto.getInt_time());
			pstmt.setString(6, surveydto.getOther_q());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("serveyDAO에서 에러"+e.toString());
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}
