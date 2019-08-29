package myRealTrip.regist_member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.regist_member.service.DupleCheckService;
import net.sf.json.JSONObject;

public class EmailCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DupleCheckService dupleCheckService = new DupleCheckService();
		
		System.out.println("이메일 체크핸들러실행!--------");
	      String email = request.getParameter("email");
	      boolean duple_email_result = dupleCheckService.checkEmailDuple(email);
	      //중복이메일 없으면 true반환
	   
	      JSONObject jsonObject = new JSONObject();
	      jsonObject.put("eduple", duple_email_result);
	      if(!duple_email_result) {
	         jsonObject.put("email_error", "이미 사용 중인 이메일입니다.");
	         
	      }else {
	    	  jsonObject.put("email_error", "사용가능한 이메일입니다.");
	      }
	      System.out.println(jsonObject);
	      request.setAttribute("emaildata", jsonObject);
	
	      return "/registmem/emailcheckajax";
	     

	
		
	   }

		

	}

	

