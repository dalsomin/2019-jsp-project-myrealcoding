package myRealTrip.regist_member.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.regist_member.dao.RegistMemberDAO;

public class DupleCheckService {

	public boolean checkEmailDuple(String email) {

		      Connection conn = null;
		      try {
		         conn = ConnectionProvider.getConnection();
		         int checkemailcnt= RegistMemberDAO.selectEmailCheck(conn, email);
		         if(checkemailcnt == 0) //검색된 이메일이 없다면 true반환
		         	{return true;} 
		         else {return false;}
		      } catch (SQLException | NamingException e) {
		    	  System.out.println("이메일체크서비스에서 에러");
		         e.printStackTrace();
		      }
			return false	;
			
		    
		   }

	public boolean checkphonenumDuple(String phonenum) {

	      Connection conn = null;
	      try {
	         conn = ConnectionProvider.getConnection();
	         int checkphonecnt= RegistMemberDAO.selectPhonecheck(conn, phonenum);
	         if(checkphonecnt == 0) //검색된 이메일이 없다면 true반환
	         	{return true;} 
	         else {return false;}
	      } catch (SQLException | NamingException e) {
	    	  System.out.println("이메일체크서비스에서 에러");
	         e.printStackTrace();
	      }
		return false	;
		
	    
	}


	}


