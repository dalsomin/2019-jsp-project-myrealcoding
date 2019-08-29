package myRealTrip.regist_member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import com.util.JdbcUtil;


import myRealTrip.regist_member.dto.RegistMemberDTO;
import myRealTrip.regist_member.dto.agreememDTO;


public class RegistMemberDAO {
	//싱글톤
	private static RegistMemberDAO mdao = null;
	private RegistMemberDAO() {}
	public static RegistMemberDAO getInstance() {
		if (mdao == null) {
			mdao = new RegistMemberDAO();
		}
		return mdao;
	}

	public int idCheck(Connection conn, RegistMemberDTO memdto) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement(" select count(*) cnt  from member where member_email = ? ");
			pstmt.setString(1, memdto.getMember_email());

			rs = pstmt.executeQuery();
			return rs.getInt("cnt");

		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}


	public void insertmem(Connection conn, RegistMemberDTO memdto) throws SQLException{
		System.out.println("dao:"+memdto.getMember_name());

		if (memdto.getAuth_p()!=null) {
			String sql =" insert into member (memberId, member_name, "
					+ " member_pwd, member_email, member_tel, member_regdate,auth_e,auth_p,member_pic,partner_yn) "
					+ " values(seq_memberId.nextval,?,?,?,?,sysdate,?,?,?,? ) ";
			try(PreparedStatement pstmt = conn.prepareStatement(sql)){
				pstmt.setString(1, 	memdto.getMember_name());
				pstmt.setString(2, 	memdto.getMember_pwd());
				pstmt.setString(3, 	memdto.getMember_email());
				pstmt.setString(4, 	memdto.getMember_tel());
				pstmt.setString(5, 	"인증하기");
				pstmt.setString(6,	memdto.getAuth_p());
				pstmt.setString(7,	"penguin.png");
				pstmt.setString(8,	"n");

				pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
				System.out.println("insert-phone- member 에러:"+e.toString());
			}


		}else if(memdto.getAuth_e()!=null) {
			String sql =" insert into member (memberId, member_name, "
					+ " member_pwd, member_email,  member_regdate,auth_e,auth_p) "
					+ " values(seq_memberId.nextval,?,?,?,sysdate,?,?) ";
			try(PreparedStatement pstmt = conn.prepareStatement(sql)){
				pstmt.setString(1, 	memdto.getMember_name());
				pstmt.setString(2, 	memdto.getMember_pwd());
				pstmt.setString(3, 	memdto.getMember_email());
				pstmt.setString(4,	memdto.getAuth_e());
				pstmt.setString(5, "인증하기");

				pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
				System.out.println("insert-email- member 에러:"+e.toString());
			}
		}
	}


	public void insertagree(Connection conn, agreememDTO agrdto) throws SQLException {
		String sql="insert into agree_mem values(seq_marcode.nextval, seq_memberId.currval, ?)";
		try(PreparedStatement pstmt = conn.prepareStatement(sql)){
			int cnt = agrdto.getMar_type().length;
			for (int j = 0; j < cnt; j++) {

				pstmt.setString(1, agrdto.getMar_type()[j]);
				pstmt.executeUpdate();

			}
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("insert agreemem 에러:"+e.toString());
		}

	}
	public static int selectEmailCheck(Connection conn, String email) throws SQLException {
		String sql = " select count(*) cnt from member where member_email = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = null;
		pstmt.setString(1, email);
		rs = pstmt.executeQuery();
		int result=0;
		if (rs.next()) {
			result = rs.getInt("cnt");

		}
		return result;
	}
	public static int selectPhonecheck(Connection conn, String phonenum) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select count(*) cnt from member "
				+ " where member_tel=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, phonenum);
		rs=pstmt.executeQuery();
		int result = 0;
		if (rs.next()) {
			result =rs.getInt("cnt");
		}
		return result;
	}//phonenumduplecheck method
	


}//class
