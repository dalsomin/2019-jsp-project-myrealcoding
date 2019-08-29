package myRealTrip.flights.notice.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.flights.notice.dao.NoticeDAO;
import myRealTrip.flights.notice.model.Notice;

public class ListService {

	private static final int MESSAGE_COUNT_PER_PAGE = 10;
	
	//
	public ListView getList(int pageNumber) {
		Connection conn = null;
		int currentPageNumber = pageNumber;
		
		try {
			conn = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();

			int msgTotalCount = dao.selectCount(conn);

			List<Notice> noticeList =null;
			int firstRow = 0;
			int endRow = 0;
			if (msgTotalCount > 0) {
				firstRow = (msgTotalCount - MESSAGE_COUNT_PER_PAGE*currentPageNumber)+1;
				endRow = msgTotalCount - MESSAGE_COUNT_PER_PAGE*(currentPageNumber-1);
				noticeList = dao.selectList(conn, firstRow, endRow);
			} else {
				currentPageNumber = 0;
				noticeList = Collections.emptyList();//....왓?
			}
			return new ListView(MESSAGE_COUNT_PER_PAGE, currentPageNumber, msgTotalCount, firstRow, endRow, noticeList);
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
	public List<Notice> getTop(int rank) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();


			List<Notice> noticeList = dao.selectListRank(conn, rank);
			return noticeList;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
}
