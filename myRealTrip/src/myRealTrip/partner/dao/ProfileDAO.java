package myRealTrip.partner.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import myRealTrip.partner.dto.ProfileDTO;

public class ProfileDAO {

	private static ProfileDAO dao = null;
	private ProfileDAO() {}
	public static ProfileDAO getinstance() {
		if(dao==null) {
			dao = new ProfileDAO();
		}
			return dao;
	}
	
	public ProfileDTO getProfile(int memberId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = " select "
				
				+ " member_name,partnerpicture,"
				+ "keyword1, keyword2,introduce"
				+ " from partner where memberId =? ";
		return null;
		
	}
	public ProfileDTO getProduct(int memberId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = " select "
				
				+ " member_name,partnerpicture,"
				+ "keyword1, keyword2,introduce"
				+ " from partner where memberId =? ";
		return null;
		
	}
	
	
	
}//class
