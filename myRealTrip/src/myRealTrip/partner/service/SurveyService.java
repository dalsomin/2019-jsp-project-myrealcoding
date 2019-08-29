package myRealTrip.partner.service;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.NamingException;
import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import myRealTrip.partner.dao.SurveyDAO;
import myRealTrip.partner.dto.SurveyDTO;

public class SurveyService {

	public void insertSurveyResult(SurveyDTO sdto) throws NamingException, SQLException {
		SurveyDAO sdao = SurveyDAO.getInstance();
		Connection conn =null;
		conn = ConnectionProvider.getConnection();
		try {
			//
			conn.setAutoCommit(false);
			//트랜잭션처리 할려고 자동 커밋 막아놓은것...
			
			sdao.insertSurvey(conn, sdto);
			conn.commit();
		}catch(Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.

			JdbcUtil.close(conn);

		}
	}



}
