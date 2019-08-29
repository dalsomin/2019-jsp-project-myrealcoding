package myRealTrip.partner.command;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.partner.dao.Regist_partnerDAO;

import myRealTrip.partner.dto.Regist_partnerDTO;
import myRealTrip.partner.service.Regist_partnerservice;

public class DashboardHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("--dashboard 서블릿 도착 ");

		// request.getMethod()
		Member member = (Member)request.getSession().getAttribute("authUser");
		
		int memberId = member.getMemberId();
		System.out.println();
		Regist_partnerservice rpservice = new Regist_partnerservice();
		Regist_partnerDTO ynlist = new Regist_partnerDTO();
		int surveycnt=0;
		String partnerType=null;
		
/////
		PreparedStatement ps = null;
		ResultSet rs  =null;
		Connection conn;
		ArrayList<String> gmtype = new ArrayList<>();
		try {
			conn = ConnectionProvider.getConnection();
			String sql="select gm_type from GNP_MATCH where memberId=? ";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs=ps.executeQuery();
			while(rs.next()){
				gmtype.add(rs.getString("gm_type"));
			}
			System.out.println(gmtype.toString());
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
/////////
		boolean Tour=gmtype.contains("Tour");
		boolean Ticket=gmtype.contains("Ticket");
		boolean HotDeal=gmtype.contains("HotDeal");
		boolean Lodging=gmtype.contains("Lodging"); 

		request.setAttribute("Tour", Tour);
		request.setAttribute("Ticket", Ticket);
		request.setAttribute("HotDeal", HotDeal);
		request.setAttribute("Lodging", Lodging);
///////		
		
		
	
		try {
			ynlist=rpservice.select_ynlist(memberId);
		surveycnt = rpservice.selectsurvey_yn(memberId);
		partnerType=rpservice.selectType(memberId);
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("surveycnt", surveycnt);
		request.setAttribute("ynlist", ynlist);
		System.out.println("//////////"+partnerType);
		if (partnerType.equals("개인")) {
			return "/partner/partner_dashboard";
			
		}else return "/partner/partner_dashboard_b";
		
	}

}
