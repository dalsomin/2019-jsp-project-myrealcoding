package myRealTrip.googleMap.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.googleMap.dao.MapDAO;
import myRealTrip.googleMap.dto.CityLatLngDto;

public class HotelMapHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String searchW = request.getParameter("search");
		
		System.out.println(searchW);
		Connection conn = ConnectionProvider.getConnection();
		MapDAO dao = MapDAO.getInstance();
		CityLatLngDto dto  = dao.getCqListAllAjax(searchW, conn);
		
		request.setAttribute("dto", dto);
		
		return "/hotel/search";
	}

}
