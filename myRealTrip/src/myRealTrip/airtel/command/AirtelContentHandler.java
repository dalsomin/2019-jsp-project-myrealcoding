package myRealTrip.airtel.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.airtel.dto.AirtelContentDTO;
import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.airtel.service.AirtelContentService;
import myRealTrip.command.CommandHandler;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import myRealTrip.review.service.ReviewService;

public class AirtelContentHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		AirtelContentService airtelContentService = new AirtelContentService();
		ReviewService reviewService = new ReviewService();

		String p_code = request.getParameter("p_code");
		ArrayList<String>list = airtelContentService.getContentPic(p_code);
		request.setAttribute("list", list);
		AirtelContentDTO dto = airtelContentService.getContent(p_code);
		request.setAttribute("dto", dto);
		String [] infos = airtelContentService.getPartnerInfo(p_code);
		request.setAttribute("infos", infos);
		ArrayList<AirtelOptionDTO> list4 = airtelContentService.getOptions(p_code);
		request.setAttribute("aoptions", list4);
		
		ArrayList<ReviewDTO>list2 = reviewService.getReview(p_code);
		request.setAttribute("review", list2);
		ReviewCountDTO dto2 = reviewService.getReviewCount(p_code);
		request.setAttribute("reviewCnt", dto2);
		ArrayList<String>list3 = reviewService.getReviewPicture(p_code);
	      request.setAttribute("reviewPic", list3);
	    ReviewDTO dto3 = reviewService.getRecentReview(p_code);
	    request.setAttribute("recentReview", dto3);
	      
	      
		return "/airtel/content";
	}
	

	
	
}
