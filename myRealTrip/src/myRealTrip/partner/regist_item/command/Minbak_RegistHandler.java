package myRealTrip.partner.regist_item.command;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.B_addinfoDTO;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.MinbakDTO;
import myRealTrip.partner.regist_item.service.MinbakService;

public class Minbak_RegistHandler implements CommandHandler {

	private static final String FORM_VIEW="/partner/regist_item/regist_minbak";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get-민박등록핸들러호출");
			return registform(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post방식-민박등록핸들러호출");
		
			return submitform(request,response);
 
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
		
	}

	private String registform(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("핸들러-registform도착");
		ArrayList<CitycodeDTO> citylist = new ArrayList<>();
		ArrayList<CitycodeDTO> nationlist = new ArrayList<>();
		ArrayList<B_addinfoDTO> addinfolist = new ArrayList<>();
		
		MinbakService mservice = new MinbakService();
		try {
			citylist = mservice.selectcitylist();
			nationlist = mservice.selectnationlist();
			addinfolist= mservice.getaddinfolist();
			request.setAttribute("citylist", citylist);
			request.setAttribute("nationlist", nationlist);
			request.setAttribute("addinfolist", addinfolist);
		} catch (SQLException e) {
			System.out.println("국가리스트, 도시리스트 가져올때 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		return FORM_VIEW;		
	}

	private String submitform(HttpServletRequest request, HttpServletResponse response) {
		MinbakDTO mdto = new MinbakDTO();
		Member authUser  = (Member) request.getSession().getAttribute("authUser");
		String b = request.getParameter("b_atime");
		System.out.println("-------------"+b);
		 int b_atime = Integer.parseInt(b);//
		String p_code = request.getParameter("p_code");
		mdto.setMemberId(authUser.getMemberId());
		mdto.setP_code(p_code);
		mdto.setP_name(request.getParameter("p_name"));//
		mdto.setP_typename("민박");//
		mdto.setB_hcall(request.getParameter("b_hcall"));
		System.out.println("((((((((상품코드))))))-----------------------------------["+p_code+"]");
		mdto.setB_atime(b_atime);
		mdto.setB_pinclusion(request.getParameter("b_pinclusion"));
		mdto.setB_tburden(request.getParameter("b_tburden"));
		mdto.setB_eguide(request.getParameter("b_eguide"));
/*		String [] a=request.getParameterValues("b_a_code");
		int cnt = a.length;
		int [] ab = new int[cnt];	
		for (int i = 0; i < cnt; i++) {			
			ab[i]=Integer.parseInt(request.getParameterValues("b_a_code")[i]);
		}
		mdto.setB_a_code(ab); ;*/
		
		MinbakService mservice = new MinbakService();
		try {
			mservice.insert_minbakform(mdto);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return "/partner/regist_item/regist_minbak";
		
		
		
	}

}
