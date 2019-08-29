package myRealTrip.partner.regist_item.command;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dto.B_addinfoDTO;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.TourTicketDTO;
import myRealTrip.partner.regist_item.service.MinbakService;
import myRealTrip.partner.regist_item.service.TourTicketService;

public class Tour_RegistHandler3 implements CommandHandler{

	private static final String FORM_VIEW="/partner/regist_item/regist_tour3";
	TourTicketService ttservice = new TourTicketService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get-투어등록-<기본>정보핸들러호출");
			return registTour_priceform(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post-투어등록-<기본>정보핸들러호출");			
			return  submitTour_priceform(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

	}

	private String registTour_priceform(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("핸들러-registform도착");
		
		return FORM_VIEW;		
	}

	private String submitTour_priceform(HttpServletRequest request, HttpServletResponse response) {
		
		Enumeration<String> en = request.getParameterNames();
		
		while (en.hasMoreElements()) {
			String c_name = en.nextElement();
			String c_value= request.getParameter(c_name);
			if (c_value!="") {
				System.out.println("------"+c_name+"//"+c_value);
			}
		}
		
		System.out.println("파라미터들..."+request.getParameterNames().toString());
		String price_type=request.getParameter("price_type");
		TourTicketService ttservice = new TourTicketService();
		TourTicketDTO tdto = new TourTicketDTO();
		String p_code = request.getParameter("p_code");
		System.out.println("p_code받아와지니? ---->(("+p_code+"))");
		
		if(price_type.equals("single")){
			int max_p =Integer.parseInt(request.getParameter("max_p"));
			int min_p =Integer.parseInt(request.getParameter("min_p"));
			int sp_one = Integer.parseInt(request.getParameter("sp_one"));
			tdto.setSP_MAXP(max_p);
			tdto.setSP_MINP(min_p);
			tdto.setPU_UNIT_S(request.getParameter("pu_unit_s"));
			tdto.setSP_ONE(sp_one);
			tdto.setP_CODE(p_code);
			System.out.println(min_p+"/"+max_p+"/"+sp_one+"/");
			//
			ttservice.registTour3_singleprice(tdto);
			System.out.println("singleprice 인서트끝");
			tdto.setT_PINCLUSION(request.getParameter("T_PINCLUSION"));
			tdto.setT_TBURDEN(request.getParameter("T_TBURDEN"));
			tdto.setT_EGUIDE(request.getParameter("T_EGUIDE"));
			//
			ttservice.insertTourTicket3(tdto);
			//
			
		}else if(price_type.equals("multi")) {

			//request.getParameterValues("dp_people");
			String [] pu_unit = request.getParameterValues("pu_unit_m");
			String [] a = request.getParameterValues("dp_people");
			System.out.println(a.toString());
			System.out.println(pu_unit.toString());
			String[] peoplebuffer =  request.getParameterValues("dp_people");
			String[] onebuffer =  request.getParameterValues("dp_one");
			int [] dppeople = new int[peoplebuffer.length] ;
			int [] dpone= new int[onebuffer.length];
			for (int i = 0; i < onebuffer.length; i++) {
				dppeople[i]=Integer.parseInt(peoplebuffer[i]);
				dpone[i]=Integer.parseInt(onebuffer[i]);
				tdto.setDP_PEOPLE(dppeople);
				tdto.setDP_ONE(dpone);

			}
			tdto.setPU_UNIT_M(pu_unit);
			tdto.setP_CODE(p_code);
			ttservice.registTour3_multiprice(tdto);
			System.out.println("multiprice 인서트끝");
			tdto.setT_PINCLUSION(request.getParameter("T_PINCLUSION"));
			tdto.setT_TBURDEN(request.getParameter("T_TBURDEN"));
			tdto.setT_EGUIDE(request.getParameter("T_EGUIDE"));
			ttservice.insertTourTicket3(tdto);
		}
		return FORM_VIEW;




	}
}