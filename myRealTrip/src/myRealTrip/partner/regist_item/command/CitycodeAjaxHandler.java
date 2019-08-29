package myRealTrip.partner.regist_item.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpUtils;
import javax.xml.ws.RequestWrapper;

import myRealTrip.command.CommandHandler;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.service.MinbakService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CitycodeAjaxHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get시티에이작스핸들러호출");
			return ajaxlist(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post-시티에이작스핸들러호출");			
			return  ajaxlist(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

		
		
		
	
		
	}


	private String ajaxlist(HttpServletRequest request, HttpServletResponse response) {
		MinbakService mservice = new MinbakService();
		int nationcode1 = 0;
	
		System.out.println("~~시티코드에이작스핸들러실행!--------");
		String nationcode =request.getParameter("n_code");
		System.out.println("파라미터로 받은것"+nationcode);
		
		   if(nationcode!=null){
		      try{
		        nationcode1 = Integer.parseInt(nationcode);
		       }catch(Exception e){
		    	   System.out.println("팔스인트하면서 오류");
		    	   e.printStackTrace();
		       }

		    }else nationcode1=3;
	   System.out.println("국가코드날아간것-->"+nationcode1);
 //   int nationcode2=6;
	      JSONArray citylist = new JSONArray();
	      citylist = mservice.selectCityListAjax(nationcode1);
	      //중복이메일 없으면 true반환
	      System.out.println(citylist);
	      request.setAttribute("citylist", citylist);
	
	     return "/partner/regist_item/citycodeajax";

	}

}
