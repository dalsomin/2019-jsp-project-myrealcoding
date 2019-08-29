package myRealTrip.order.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.airtel.dto.AirtelOptionDTO;
import myRealTrip.order.dao.OrderDAO;
import myRealTrip.order.dto.OrderDTO;

public class OrderService {
	
	private OrderDAO dao = OrderDAO.getInstance();

	public OrderDTO getInfo(String p_code) {
		
		OrderDTO dto = new OrderDTO();
		try(Connection conn = ConnectionProvider.getConnection()){
			 dto = dao.getInfo(conn, p_code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		return dto;
		
		
	}

	public ArrayList<AirtelOptionDTO> getOptions(String code) {
		
		ArrayList<AirtelOptionDTO>list = new ArrayList<>();
		
		try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.getOptions(conn, code);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
