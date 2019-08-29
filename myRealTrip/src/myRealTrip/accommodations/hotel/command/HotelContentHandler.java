package myRealTrip.accommodations.hotel.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.accommodations.hotel.dto.HotelContentDTO;
import myRealTrip.accommodations.hotel.dto.HotelRoomInfoDTO;
import myRealTrip.accommodations.hotel.service.HotelContentService;
import myRealTrip.command.CommandHandler;

public class HotelContentHandler implements CommandHandler{

	HotelContentService service = new HotelContentService();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String h_code= request.getParameter("h_code");
		
		HotelContentDTO dto= null;
		ArrayList<HotelRoomInfoDTO> list =null;
		ArrayList<String> confaclist = null;
		ArrayList<String> addfaclist = null;
		
		dto = service.getMainContent(h_code);
		list = service.getRoomInfo(h_code);
		confaclist = service.getHotelConfac(h_code);
		addfaclist = service.getHotelAddfac(h_code);
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("conlist", confaclist);
		request.setAttribute("addlist", addfaclist);
	
		return "/accommodations/hotel/hotelContent";
	}

	
}
