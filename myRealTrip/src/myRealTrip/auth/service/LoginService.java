package myRealTrip.auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.auth.model.Member;
import myRealTrip.member.dao.MemberDao;

public class LoginService {

	private MemberDao memberDao = new MemberDao();
	
	public Member login(String member_email, String member_pwd) throws NamingException {
		
		try (Connection conn = ConnectionProvider.getConnection()) {
			Member member = memberDao.selectById(conn, member_email);
			if (member == null) {
				throw new LoginFailException();
			}
			if (!member.matchPassword(member_pwd)) {
				throw new LoginFailException();
			}
		
			return member;
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
}
