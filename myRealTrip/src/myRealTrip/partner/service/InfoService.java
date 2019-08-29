package myRealTrip.partner.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.partner.dao.InfoDAO;
import myRealTrip.partner.dto.InfoDTO;
import myRealTrip.partner.dto.InfoPageDTO;

public class InfoService {

	private InfoDAO infodao = InfoDAO.getInstance();
	private int size = 10;
	
	public InfoPageDTO getInfoPage(int pageNum) {
		
		try (Connection conn = ConnectionProvider.getConnection())
		{	int startRow = (pageNum-1)*size;
			int total = infodao.select_allcnt(conn);
			List<InfoDTO> content = infodao.select_infolist(conn, startRow, size);
	
			
			return new InfoPageDTO(total, pageNum, size, content); 
		} catch (NamingException e) {
			System.out.println("infoservice에서 에러ㅜ,ㅜ");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("infoservice에서 에러ㅜ,ㅜ");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
		
	}
}
