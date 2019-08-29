package myRealTrip.flights.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import myRealTrip.auth.model.Member;

public class FlightBookDAO {

	public int insertflightbooking(Connection conn, String rsvusermphone, Member authUser, String seatLevel) throws SQLException {
		StringBuffer sql  = new StringBuffer();
		sql.append("insert into flightbooking values(flightBookNum.nextval, sysdate, ?, 'n', ?, ?, '확약')");
		
		PreparedStatement pstmt = null;
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, rsvusermphone);
		pstmt.setInt(2, authUser.getMemberId());
		pstmt.setString(3, seatLevel);
		pstmt.executeUpdate();
		
		JdbcUtil.close(pstmt);
		ResultSet rs = null;
		
		sql = new StringBuffer();
		sql.append("select flightBookNum.currval bookingnum from dual");
		pstmt = conn.prepareStatement(sql.toString());
		rs = pstmt.executeQuery();
		
		rs.next();
		return rs.getInt("bookingnum");
	}

	public void insertftr_item(Connection conn, String code) throws SQLException {
		StringBuffer sql  = new StringBuffer();
		sql.append("insert into ftr_item values(flightFTR_ITEM.nextval, ?, flightBookNum.currval )");
		
		PreparedStatement pstmt = null;
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, code);
		pstmt.executeUpdate();
		
		JdbcUtil.close(pstmt);
	}

	public void insertpassenger(Connection conn, String inpaxfirstname, String inpaxlastname, String birthYear, String birthMonth, String birthDay, String ft_pstype, String gender) throws SQLException {
		StringBuffer sql  = new StringBuffer();
		sql.append("insert into passenger values(flightPassenger.nextval, ?, ?, null, null, null, null,flightBookNum.currval, ?, ?)");
		
		PreparedStatement pstmt = null;
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, inpaxlastname + " " + inpaxfirstname);
		pstmt.setString(2, birthYear + " " + birthMonth + " " + birthDay);
		pstmt.setString(3, ft_pstype);
		pstmt.setString(4, gender);
		pstmt.executeUpdate();
		
		JdbcUtil.close(pstmt);
		
	}
	
}
