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
import myRealTrip.partner.regist_item.dto.TourTicketDTO;
import myRealTrip.partner.regist_item.service.MinbakService;
import myRealTrip.partner.regist_item.service.TourTicketService;

public class Tour_RegistHandler1 implements CommandHandler{
	
	private static final String FORM_VIEW="/partner/regist_item/regist_tour1";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get-투어등록-<기본>정보핸들러호출");
			return registTour_basicform(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post-투어등록-<기본>정보핸들러호출");			
			return  submitTour_basicform(request,response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

}

	private String registTour_basicform(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("핸들러-registform도착");
		ArrayList<CitycodeDTO> citylist = new ArrayList<>();
		ArrayList<CitycodeDTO> nationlist = new ArrayList<>();
		
		MinbakService mservice = new MinbakService();
		try {
			citylist = mservice.selectcitylist();
			nationlist = mservice.selectnationlist();
			request.setAttribute("citylist", citylist);
			request.setAttribute("nationlist", nationlist);
		} catch (SQLException e) {
			System.out.println("국가리스트, 도시리스트 가져올때 에러");
			e.printStackTrace();
		}
		
		return FORM_VIEW;		
	}

	private String submitTour_basicform(HttpServletRequest request, HttpServletResponse response) {
		TourTicketDTO tdto = new TourTicketDTO();
		
		Member authUser  = (Member) request.getSession().getAttribute("authUser");
		String citycode_string =request.getParameter("citycode");
		int citycode = Integer.parseInt(citycode_string);//
		String p_code = request.getParameter("p_code");
		System.out.println("도시코드..."+citycode);
		System.out.println("상품코드..."+p_code);
		String [] bdpic = {"pic1","pic2"};
		System.out.println(citycode);
		int memberId = authUser.getMemberId();
		System.out.println("------"+citycode+"//"+memberId);
		tdto.setMEMBERID(memberId);
		tdto.setCITY_CODE(citycode);
		tdto.setP_CODE(p_code);
		tdto.setP_NAME(request.getParameter("p_name"));//
		tdto.setP_TYPENAME("투어");
		
		tdto.setT_SUMMARY(request.getParameter("t_summary"));
		tdto.setT_INTRODUCE(request.getParameter("t_introduce"));
		tdto.setT_CATEGORY(request.getParameter("t_category"));
		tdto.setT_SCALE(request.getParameter("t_scale"));
		tdto.setT_TIME(Integer.parseInt(request.getParameter("t_time")));
		tdto.setT_TRANS(request.getParameter("t_trans"));
		tdto.setT_TAGS(request.getParameterValues("t_tags"));
		tdto.setT_LANG(request.getParameter("t_lang"));
		//
		tdto.setP_pic("pic");
		tdto.setB_d_picture(bdpic);
		
		
		TourTicketService ttservice = new TourTicketService();
		try {
			
				ttservice.registTour1(memberId,tdto);
				System.out.println("투어상품1인서트");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("p_code", p_code);
		return "/partner/regist_item/regist_tour2";
		
		
		
	}
}