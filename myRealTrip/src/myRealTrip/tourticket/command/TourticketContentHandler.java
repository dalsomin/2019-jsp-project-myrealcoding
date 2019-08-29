package myRealTrip.tourticket.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.airtel.service.AirtelContentService;
import myRealTrip.command.CommandHandler;
import myRealTrip.review.dto.ReviewCountDTO;
import myRealTrip.review.dto.ReviewDTO;
import myRealTrip.review.service.ReviewService;
import myRealTrip.tourticket.dto.TourticketContentDTO;
import myRealTrip.tourticket.dto.TourticketCourseDTO;
import myRealTrip.tourticket.dto.TourticketDTO;
import myRealTrip.tourticket.service.TourticketContentService;

public class TourticketContentHandler implements CommandHandler{

	private TourticketContentService service = new TourticketContentService();
	private ReviewService rservice = new ReviewService();
	private AirtelContentService aservice = new AirtelContentService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String p_code	= request.getParameter("p_code");
		TourticketContentDTO dto = service.getContent(p_code);
		request.setAttribute("infodto", dto);
		ArrayList<String> list = service.getContentPic(p_code);
		request.setAttribute("contentPic", list);
		TourticketDTO dto2 = service.getProductInfo(p_code);
		request.setAttribute("dto", dto2);
		ArrayList<TourticketCourseDTO>list5 = service.getCourseInfo(p_code);
		request.setAttribute("course", list5);
		LinkedHashMap<Integer, String>map = service.getPrice(p_code);
		request.setAttribute("price", map);

		
		ArrayList<String>list4 = aservice.getContentPic(p_code);
		request.setAttribute("contentPic", list4);
		String [] info = aservice.getPartnerInfo(p_code);
		request.setAttribute("partner", info);
		
		ArrayList<ReviewDTO>list2 = rservice.getReview(p_code);
		request.setAttribute("review", list2);
		ReviewCountDTO dto3 = rservice.getReviewCount(p_code);
		request.setAttribute("reviewCnt", dto3);
		ArrayList<String>list3 = rservice.getReviewPicture(p_code);
		request.setAttribute("reviewPic", list3);
		ReviewDTO dto4 = rservice.getRecentReview(p_code);
		request.setAttribute("recentReview", dto4);
		
		
		return "/tourticket/tourticketcontent";
	}

	
	
}
