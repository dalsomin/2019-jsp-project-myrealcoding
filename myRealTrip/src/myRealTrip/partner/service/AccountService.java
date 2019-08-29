package myRealTrip.partner.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.partner.dao.AccountDAO;
import myRealTrip.partner.dto.AccountDTO;

public class AccountService {

	public void insertaccount(AccountDTO adto) throws NamingException, SQLException{
		
	
		AccountDAO adao =AccountDAO.getInstance();
		Connection conn = null;
		conn= ConnectionProvider.getConnection();
		try {
			conn.setAutoCommit(false);
			adao.insertaccount(conn, adto);
			conn.commit();
		}catch (Exception e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally {
			//finall구문은 예외가 발생하든안하든 close한다.

			JdbcUtil.close(conn);

		}


	}

	}
