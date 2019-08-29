package myRealTrip.flights.notice.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.notice.dao.NoticeDAO;
import myRealTrip.flights.notice.model.Notice;

public class ContentService {

	public Notice read(int num) {
		Notice notice = null;
		NoticeDAO dao = NoticeDAO.getInstance();
		
		Connection conn = null;
		try{	
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
				dao.updateReadcount(conn, num);
				notice = dao.readNotice(conn, num);

			conn.commit();
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} 
		return notice;
	}
	
}
