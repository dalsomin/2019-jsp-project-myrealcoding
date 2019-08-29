package myRealTrip.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.review.service.ReviewService;
import net.sf.json.JSONArray;

public class ReviewAJAXHandler implements CommandHandler{

	ReviewService reviewservice = new ReviewService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String p_code= request.getParameter("p_code");
		int r_code=  Integer.parseInt(request.getParameter("r_code")) ;
		JSONArray jsonArray  = reviewservice.getMoreReview(p_code,r_code);
		request.setAttribute("jsonArray", jsonArray);

		return "/review/moreReview_ajax";
		
		
	}
	
	

}
