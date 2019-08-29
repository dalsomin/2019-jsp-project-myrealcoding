package myRealTrip.order.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.order.dao.PayDAO;

public class PayService {

	private PayDAO dao = PayDAO.getInstance();
	
	public int insertOrder(String p_code, int m_id, String age, String purpose, String p_number, String message, String p_nation, String email
									, String cnt, String options, String kname, String ename, String gender, String birthday, String payment, String price) {
		
		Connection conn =null;
		String [] cnts = cnt.split(",");
		String [] option = options.split(",");
		
		try{
			
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
				
			 dao.insertOrder(conn, p_code, m_id, age, purpose, p_number, message, p_nation, email);
			 
			 for (int i = 0; i < option.length; i++) {
				 dao.insertOrderDetail(conn, option[i], cnts[i]);
			}
			 
			 dao.insertOrderInfo(conn, kname, gender, birthday, ename);
			 dao.insertPay(conn, payment, price);
			 
			 conn.commit();
			 
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		}finally {
			JdbcUtil.close(conn);
		}
		
		
		return 0;
	}
}
