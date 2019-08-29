package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myRealTrip.auth.model.Member;
import myRealTrip.myrealtripMember.model.ProfileManagementDTO;


public class ProfileManagementDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private static ProfileManagementDAO dao = new ProfileManagementDAO();
	
	public static ProfileManagementDAO getInstance() {
		return dao;
	}
	
	
	
	
	private ProfileManagementDAO() {}
	
	
	public ArrayList<Member> selectMemberList(Connection conn){

		ArrayList<Member> list = new ArrayList<Member>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql =   " select * from member ";
		

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Member dto = new Member();
				dto.setMemberId(rs.getInt("memberId"));
				dto.setMember_name(rs.getString("member_name"));
				dto.setMember_pwd(rs.getString("member_pwd"));
				dto.setMember_email(rs.getString("member_email"));
				dto.setMember_tel(rs.getString("member_tel"));
				dto.setFacebook(rs.getString("facebook"));
				dto.setNaver(rs.getString("naver"));
				dto.setPoint(rs.getInt("point"));
				dto.setAuth_e(rs.getString("auth_e"));
				dto.setAuth_p(rs.getString("auth_p"));
				
				dto.setModdate(rs.getDate("moddate"));  // 
				
				
				list.add(dto);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e2) {
			}
			return list;
		}
	}
	
	
	public ProfileManagementDTO selectRA(Connection conn, int memberId){

		ProfileManagementDTO dto  = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		/*
		String sql =   " select r.*, a.*  "
				+	" from ref_acc r join agree_mem a "
				+	" on r.memberId = a.memberId ";
		*/
		String sql = " select * from ref_acc where memberId = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId);
			rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
				dto = new ProfileManagementDTO();  //
				
				dto.setRa_bank(rs.getString("ra_bank"));
				dto.setRa_sno(rs.getLong("ra_sno"));
				dto.setRa_name(rs.getString("ra_name"));
				//dto.setMar_code(rs.getInt("mar_code"));
				//dto.setMar_type(rs.getString("mar_type"));
				
				System.out.println("> " + dto.getRa_bank()  );
				System.out.println("> " + dto.getRa_sno()  );
				
				
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
			return dto;
		}
	}
	
	
	
	
	
	
	
	public ArrayList<ProfileManagementDTO> selectNOC(Connection conn, int memberId){

		ArrayList<ProfileManagementDTO> list = new ArrayList<ProfileManagementDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			pstmt = conn.prepareStatement(" select distinct memberId, count(cp_code) over (partition by memberId) noc from coupon where memberId=? ");
			pstmt.setInt(1, memberId);
			rs = pstmt.executeQuery();
			//rs.next();  //
			while (rs.next()) {
				ProfileManagementDTO dto = new ProfileManagementDTO();
				dto.setCp_code(rs.getInt("noc"));
				
				list.add(dto);
				
				//System.out.println("> " + dto.getCp_code()  );
				
				
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
	
	
	
	public ArrayList<String> selectAgreeAdList(Connection conn, int memberId){
	//public ArrayList<AgreeAdDTO> selectAgreeAdList(Connection conn, int memberId){

		//ArrayList<AgreeAdDTO> list = new ArrayList<AgreeAdDTO>();
		ArrayList<String> list = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			pstmt = conn.prepareStatement(" select * from agree_mem where memberId=? ");
			pstmt.setInt(1, memberId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				/*
				AgreeAdDTO dto = new AgreeAdDTO();
				dto.setMemberId(rs.getInt("memberId")); // 쓸모 없는 애
				dto.setMar_code(rs.getInt("mar_code"));
				dto.setMar_type(rs.getString("mar_type"));
				*/
				//System.out.println( dto.getMar_type()  );
				
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

	
	
	
	
			
	

}
