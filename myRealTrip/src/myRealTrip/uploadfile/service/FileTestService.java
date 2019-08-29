package myRealTrip.uploadfile.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.uploadfile.dao.FileTestDAO;
import net.sf.json.JSONArray;

public class FileTestService {
	
	public JSONArray ipartner(int memberId, String filesystemname) {
		JSONArray ja =new JSONArray();
		FileTestDAO dao = FileTestDAO.getInstance();
		Connection conn = null;
	try {
		conn=ConnectionProvider.getConnection();
		//conn.setAutoCommit(false);
		int result=dao.selectmemberId(conn,memberId);
		 if(result==0) {
			dao.insertfilelist_ipartner(conn,memberId,filesystemname);
			System.out.println("insertdao성공하고 도라옴");
			 }
		 else if(result==1) {
			 dao.updatefile_ipartner(conn,memberId,filesystemname);
		 }
		
		ja=dao.selectfilelist_ipartner(conn,memberId,filesystemname);
		//jsonArray= dao.selectfilelist(conn);
		System.out.println("selectdao성공하고 도라옴");
		System.out.println(ja);
		conn.commit();


	}catch (Exception e) {
		e.printStackTrace();
		JdbcUtil.rollback(conn);
		throw new RuntimeException(e);
	}finally {
		//finall구문은 예외가 발생하든안하든 close한다.
		
		JdbcUtil.close(conn);
		
	}
		return ja;
	}
}
