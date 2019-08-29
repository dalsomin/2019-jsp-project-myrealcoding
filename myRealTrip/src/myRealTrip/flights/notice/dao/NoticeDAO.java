package myRealTrip.flights.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.util.JdbcUtil;

import myRealTrip.flights.notice.model.Notice;

public class NoticeDAO {

	//싱글톤
	private static NoticeDAO dao= null;
	private NoticeDAO() {}
	public static NoticeDAO getInstance() {
		if(dao==null) {
			dao=new NoticeDAO();
		}
		return dao;
	}


	//공지사항 글쓰기
	public int insert(Connection conn, Notice notice) throws SQLException {
		PreparedStatement pstmt=null;
		int result=0;
		String sql= "insert into flightsNotice (num, subject, content, hot)  values (seq_flightsNotice.nextval,?,?,?)";

		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, notice.getSubject());
			pstmt.setString(2, notice.getContent());        
			pstmt.setString(3, notice.getHot());
			result= pstmt.executeUpdate();
		}catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}	
		return result;
	}


	//페이징처리를 위한 메시지 토탈 얻어오는 함수
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from flightsNotice");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}


	//리스트 뿌리기. 
	public List<Notice> selectList(Connection conn, int firstRow, int endRow){
		String sql = 
				" select rownum no, f.* "
						+" from( "
						+" select num, subject, regdate, hot from flightsNotice "
						+" where hot ='hot')f "
						+"  order by no desc  ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Notice>list = new ArrayList<>();

		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Notice notice = null;
			while (rs.next()) {
				notice = new Notice();
				notice.setNum(rs.getInt("num"));
				notice.setNo(rs.getInt("no"));
				notice.setSubject(rs.getString("subject"));
				notice.setRegdate(rs.getDate("regdate"));
				notice.setHot(rs.getString("hot"));

				list.add(notice);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}	

		sql = "SELECT * FROM (" 
				+" select rownum no, f.* "
				+" from( "
				+" select num, subject, regdate from flightsNotice "
				+" order by num )f "				
				+" )WHERE no BETWEEN ? AND ?"
				+"  order by no desc  ";

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, firstRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			Notice notice = null;

			while (rs.next()) {
				notice = new Notice();
				notice.setNo(rs.getInt("no"));
				notice.setNum(rs.getInt("num"));
				notice.setSubject(rs.getString("subject"));
				notice.setRegdate(rs.getDate("regdate"));

				list.add(notice);
			}					

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}				
		return list;
	}





	// 조회수 증가
	public int updateReadcount(Connection conn, int num) {
		String sql = "update flightsNotice "
				+" set cnt = cnt +1 "
				+" where num = ?";

		PreparedStatement pstmt = null;		
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
		}
		return result;
	}


	//공지사항 읽기
	public Notice readNotice(Connection conn, int num) {
		String sql ="select * from (" + 
				"	select f.*," + 
				"	lag(num,1) over(order by num) prev_num, lag(subject,1) over(order by num) prev_subject, lag(regdate,1) over(order by num) prev_regdate,	" + 
				"	lead(num,1) over(order by num) next_num, lead(subject,1) over(order by num) next_subject, lead(regdate,1) over(order by num) next_regdate	" + 
				"	from(" + 
				"	select *" + 
				"	from flightsNotice" + 
				"	)f) where num=?	" ;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		Notice notice = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				notice = new Notice();
				notice.setSubject(rs.getString("subject"));
				notice.setRegdate(rs.getDate("regdate"));
				notice.setCnt(rs.getInt("cnt"));

				//순서***
				String content = rs.getString("content").replaceAll("<", "&lt;");
				content = content.replaceAll(">", "&gt;");
				content = content.replace("\r\n","<br>");
				notice.setContent(content);			
				
				//이전글, 다음글
				notice.setPrev_num(rs.getInt("prev_num"));
				notice.setNext_num(rs.getInt("next_num"));
				notice.setPrev_subject(rs.getString("prev_subject"));
				notice.setPrev_regdate(rs.getDate("prev_regdate"));
				notice.setNext_subject(rs.getString("next_subject"));
				notice.setNext_regdate(rs.getDate("next_regdate"));			
			}
		}catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
		}
		return notice;
	}

	public List<Notice> selectListRank(Connection conn, int rank){
		String sql = 
				"select t.*       "      +
				" from (select rownum no, f.* from flightsNotice f order by num desc)t "+
				" where no <= ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Notice>list = new ArrayList<>();

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rank);
			rs = pstmt.executeQuery();
			Notice notice = null;
			while (rs.next()) {
				notice = new Notice();
				notice.setNum(rs.getInt("num"));
				notice.setNo(rs.getInt("no"));
				notice.setSubject(rs.getString("subject"));
				notice.setRegdate(rs.getDate("regdate"));
				notice.setHot(rs.getString("hot"));

				list.add(notice);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}	

				
		return list;
	}
}
