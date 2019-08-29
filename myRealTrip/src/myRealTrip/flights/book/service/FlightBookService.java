package myRealTrip.flights.book.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import myRealTrip.auth.model.Member;
import myRealTrip.flights.book.dao.FlightBookDAO;

public class FlightBookService {
	private static FlightBookService service = null;

	private FlightBookService() {}
	
	public static FlightBookService getInstance() {
		if(service == null) {
			service = new FlightBookService();
		}
		return service;
	}

	public int insertBookInfo(String codes, String rsvusername, String rsvuseremail, String rsvusermphone,
			String[] inpaxlastname, String[] inpaxfirstname, String[] birthYear, String[] birthMonth, String[] birthDay,
			String[] ft_pstype, String[] gender, Member authUser, String seatLevel) {
		Connection conn = null;
		int bookingnum = 0;
		String[] code = codes.split("/");
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			FlightBookDAO dao = new FlightBookDAO();
			bookingnum = dao.insertflightbooking(conn, rsvusermphone, authUser, seatLevel);
			for (int i = 0; i < code.length; i++) {
				dao.insertftr_item(conn, code[i]);
			}
			for (int i = 0; i < inpaxfirstname.length; i++) {
				dao.insertpassenger(conn, inpaxfirstname[i], inpaxlastname[i], birthYear[i], birthMonth[i], birthDay[i], ft_pstype[i], gender[i]);
			}
			conn.commit();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		}finally {
			JdbcUtil.close(conn);
		}
		
		return bookingnum;
	}
	
	
}
