package myRealTrip.regist_member.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.regist_member.dao.RegistMemberDAO;
import myRealTrip.regist_member.dto.RegistMemberDTO;
import myRealTrip.regist_member.dto.agreememDTO;

public class RegistMemberService {
	
	private RegistMemberDAO registmdao =RegistMemberDAO.getInstance();
	
	
	public void registm(RegistMemberDTO registmdto,agreememDTO agrdto){
		
		
		Connection conn = null;
		try {
			conn=ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			registmdao.insertmem(conn,registmdto);
			registmdao.insertagree(conn, agrdto);
			System.out.println("service:"+registmdto.getMember_name());
		
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
