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

public class Tour_RegistHandler2 implements CommandHandler{
	
	private static final String FORM_VIEW="/partner/regist_item/regist_tour2";
	TourTicketService ttservice = new TourTicketService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get-투어등록-<코스>정보핸들러호출");
			return registTour_basicform(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post-투어등록-<코스>정보핸들러호출");			
			return  submitTour_basicform(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

}

	private String registTour_basicform(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("핸들러-registform도착");
		Member member = (Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		String pcode = ttservice.selectP_code(memberId);
		request.setAttribute("pcode", pcode);
		return FORM_VIEW;		
	}

	private String submitTour_basicform(HttpServletRequest request, HttpServletResponse response) {
		
		String p_code = request.getParameter("p_code");
		/*String sql1 = " insert into t_course (";
		String sql2 = " ) values ( "; */
		
		Enumeration<String> en = request.getParameterNames();
		
		while (en.hasMoreElements()) {
			String c_name = en.nextElement();
			String c_value= request.getParameter(c_name);
			if (c_value!="") {
				System.out.println("---"+c_name+"//"+c_value);

				
			}
		}
	/*	
		sql1= sql1.substring(0,sql1.length()-2);
		sql2= sql2.substring(0,sql1.length()-2);

		String sql = sql1 + sql2;
		
		System.out.println(sql);*/
	TourTicketDTO tdto = new TourTicketDTO();	
	String timecheck=request.getParameter("meeting_time_check");	

		tdto.setPCODE(p_code);

		//
		tdto.setT_SPOT(request.getParameter("t_spot"));
	//	tdto.setT_LOCATION(request.getParameter("t_location"));
	//timer 총소요시간 hour만나는시간	
		String size = request.getParameter("timer_size");
		String unit =request.getParameter("timer_unit");
		tdto.setT_TIMER(size+unit);
		//tour
		String [] tc_title=request.getParameterValues("tc_title");
		String [] tc_cate=request.getParameterValues("tc_cate");
		String [] tc_detail=request.getParameterValues("tc_detail");
		System.out.println("++++++++"+tc_title);
		System.out.println("++++++++"+tc_cate);
		System.out.println("++++++++"+tc_detail);
		tdto.setTC_TITLE(tc_title);	
		tdto.setTC_CATE(tc_cate);
		tdto.setTC_DETAIL(tc_detail);
		//
		String [] hour=request.getParameterValues("tc_hour");
		String [] min=request.getParameterValues("tc_min");
		int cnt = hour.length;
		String [] time= new String [cnt];
		for (int j = 0; j < min.length; j++) {
			time[j]=hour[j]+"시간"+min[j];
			System.out.println(j+"번째 시간---"+time[j]);
		}
		tdto.setTC_TIME(time);
		//
		//tdto.setTC_PIC(request.getParameterValues("tc_pic"));	
		if(timecheck.equals("time")){
			String mhour = request.getParameter("meetingtime_hour");
			String mmin =request.getParameter("meetingtime_min");
			String mtime=mhour+mmin;
			System.out.println("만나는시간-----"+mtime);
			tdto.setT_HOUR(mtime);
			try {
				ttservice.registTour2_hour(tdto);
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}else if(timecheck.equals("extra")) {
			tdto.setT_RCM(request.getParameter("meetingtime_extra"));
			ttservice.registTour2_rcm(tdto);

		}
		
		request.setAttribute("p_code", p_code);
		return "/partner/regist_item/regist_tour3";
		
		
	}
}