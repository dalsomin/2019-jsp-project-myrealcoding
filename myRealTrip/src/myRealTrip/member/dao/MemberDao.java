package myRealTrip.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.util.JdbcUtil;

import myRealTrip.auth.model.Member;


public class MemberDao {

	public Member selectById(Connection conn, String member_email) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement(" select * from member where member_email = ? ");
			pstmt.setString(1, member_email);

			rs = pstmt.executeQuery();
						
			Member member = null;
			if (rs.next()) {
				member = new Member(rs.getInt("memberId"), rs.getString("member_name"), rs.getString("member_pwd"), rs.getString("member_email"), rs.getString("member_tel"), rs.getDate("member_regdate"), rs.getInt("point"), rs.getString("facebook"), rs.getString("naver"), rs.getString("auth_e"), rs.getString("auth_p"), rs.getString("member_pic"), rs.getString("partner_yn"), rs.getDate("moddate"));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}

	
	public void insert(Connection conn, Member member) throws SQLException{
		try(PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?)")){
			pstmt.setString(1, member.getMember_email());
			pstmt.setString(3, member.getMember_pwd());
			pstmt.executeUpdate();
		}
	}
	
	
	public void update(Connection conn, Member member) throws SQLException {
		try (PreparedStatement pstmt = 
				conn.prepareStatement("update member set member_pwd = ? where member_email = ?")) {
			pstmt.setString(1, member.getMember_email());
			pstmt.setString(2, member.getMember_pwd());
			pstmt.executeUpdate();
		}
	}
	
	/*
	public member selectMemInfo(Connection conn, String member_email) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement(" select * from member where member_email = ? ");
			pstmt.setString(1, member_email);

			rs = pstmt.executeQuery();
						
			member member = null;
			if (rs.next()) {
				member = new member(rs.getInt("memberId"), rs.getString("member_name"), rs.getString("member_pwd"), rs.getString("member_email"), rs.getDate("member_regdate"), rs.getString("auth_check"), rs.getString("auth_way"), rs.getInt("point"));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	*/
}
