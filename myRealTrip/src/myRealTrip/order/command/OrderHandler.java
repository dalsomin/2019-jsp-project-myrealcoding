package myRealTrip.order.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.order.dto.OrderDTO;
import myRealTrip.order.service.OrderService;

public class OrderHandler implements CommandHandler{
	
	private OrderService service = new OrderService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Member login = (Member) request.getSession().getAttribute("authUser");
		
		if(login == null) {
			String location = request.getContextPath()+"/login.do";
			response.sendRedirect(location);
			return null;
		}
		String code = request.getParameter("code");
		String p_code = request.getParameter("p_code");
		String cnt = request.getParameter("cnt");
		String [] cnts = cnt.split(",");
		int [] nums = new int[cnt.length()];
		
		for (int i = 0; i < cnts.length; i++) {
			nums[i] = Integer.parseInt(cnts[i]); 
		}
		
		request.setAttribute("nums", nums);
		String [] memberInfo = {"", ""};
		
		
		memberInfo[0] = login.getMember_email();
		String [] tel = login.getMember_tel().split("  ");
		memberInfo[1] = tel[1];
		
		request.setAttribute("memberInfo", memberInfo);
		
		OrderDTO dto = service.getInfo(p_code);
		request.setAttribute("pInfo", dto);
		
		ArrayList<AirtelOptionDTO>list = service.getOptions(code);
		request.setAttribute("options", list);
		
		
		
		
		return "/order/order";
	}

	
	
}
