package myRealTrip.accommodations.lodgings.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.lodgings.dto.ContentDTO;
import myRealTrip.accommodations.lodgings.service.ContentService;
import myRealTrip.command.CommandHandler;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import myRealTrip.review.service.ReviewService;

public class ContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ContentService service =  new ContentService();
		String p_code  = request.getParameter("p_code");
		ContentDTO dto = null;
		ArrayList<ContentDTO> list = null;
		dto = service.getLodgingsContent(p_code);
		list = service.getPics(p_code);
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);


		ReviewService reviewService = new ReviewService();
		ArrayList<ReviewDTO>list2 = reviewService.getReview(p_code);
		request.setAttribute("review", list2);
		ReviewCountDTO dto2 = reviewService.getReviewCount(p_code);
		request.setAttribute("reviewCnt", dto2);
		ReviewDTO dto3 = reviewService.getRecentReview(p_code);
		request.setAttribute("recentReview", dto3);
		ArrayList<String> reviewPic = reviewService.getReviewPicture(p_code);
		request.setAttribute("reviewPic", reviewPic);
		

		return "/accommodations/lodgings/lodgingsContent";

	}

}
