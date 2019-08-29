package myRealTrip.partner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import myRealTrip.partner.dto.AccountDTO;

public class AccountDAO {
	
	private static AccountDAO adao = null;
	private AccountDAO() {}
	public static AccountDAO getInstance() {
		if(adao==null) {
			adao = new AccountDAO();
	}
		return adao;
	}
	
	
	public void insertaccount(Connection conn, AccountDTO adto ){
	  PreparedStatement pstmt  = null;
	  try {
		String sql =" insert into cal_acc values("
				+ "?,?,?,?,?,?,?,?)";
		pstmt= conn.prepareStatement(sql);
		System.out.println("dao에서 멤버아이디 가져와지니??=="+adto.getMemberId());
		pstmt.setInt(1, adto.getMemberId());
		pstmt.setString(2, adto.getCa_name());
		pstmt.setString(3, adto.getCa_bank());
		pstmt.setString(4, adto.getCa_sno());
		pstmt.setString(5, adto.getCa_swift());
		pstmt.setString(6, adto.getCa_branch());
		pstmt.setString(7, adto.getCa_addr());
		pstmt.setString(8, adto.getCa_rn());
		
		pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("***accountDAO에서에러--"+e.toString());
	
	}
	  
  }
}
