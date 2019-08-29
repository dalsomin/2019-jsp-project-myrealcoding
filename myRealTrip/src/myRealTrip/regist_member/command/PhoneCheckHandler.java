package myRealTrip.regist_member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.regist_member.service.DupleCheckService;
import net.sf.json.JSONObject;

public class PhoneCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DupleCheckService dupleCheckService = new DupleCheckService();
		
		System.out.println("폰체크핸들러실행!--------");
	  
	      String phonenum=request.getParameter("phonenum");
	      System.out.println("입력된핸드폰번호---"+phonenum);
	      boolean duple_phonenum_result = dupleCheckService.checkphonenumDuple(phonenum);
	      System.out.println("중복됐는지 안됐는지~"+duple_phonenum_result);
	      //중복이메일 없으면 true반환
	   
	      JSONObject jsonObject = new JSONObject();
	      jsonObject.put("pduple", duple_phonenum_result);

	      if(!duple_phonenum_result) {
	         jsonObject.put("phone_error", "이미 사용 중인 번호입니다.");
	         
	      }else {
	    	  jsonObject.put("phone_error", "사용가능한 번호입니다.");
	      }
	      System.out.println(jsonObject);
	      request.setAttribute("phonedata", jsonObject);
	      
	      return "/registmem/phonecheckajax";
	      
		
		
	   }

		

	}

	

