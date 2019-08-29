package myRealTrip.flights.notice.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.notice.dao.NoticeDAO;
import myRealTrip.flights.notice.model.Notice;

public class WriteService {

	public int wirte(Notice notice) {
		NoticeDAO dao = NoticeDAO.getInstance();
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			int insertedCount = dao.insert(conn, notice); 
			if (insertedCount == 0) {
				throw new RuntimeException("fail to insert article");
			}
			return insertedCount;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} catch (NamingException e) {  
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	} 
	
}
