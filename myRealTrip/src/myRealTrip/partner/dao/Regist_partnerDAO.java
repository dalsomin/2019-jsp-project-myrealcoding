package myRealTrip.partner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import myRealTrip.partner.dto.Bp_telDTO;
import myRealTrip.partner.dto.GnP_MatchDTO;
import myRealTrip.partner.dto.International_pnumDTO;
import myRealTrip.partner.dto.Regist_B_partnerDTO;
import myRealTrip.partner.dto.Regist_I_partnerDTO;
import myRealTrip.partner.dto.Regist_partnerDTO;
import myRealTrip.partner.dto.TaxbillDTO;
import myRealTrip.regist_member.dto.RegistMemberDTO;

public class Regist_partnerDAO {
	//싱글톤
	private static Regist_partnerDAO dao = null;
	private Regist_partnerDAO() {}
	public static Regist_partnerDAO getInstance() {
		if (dao == null) {
			dao = new Regist_partnerDAO();
		}
		return dao;
	}
	
	//국가번호가져오는
	public ArrayList<International_pnumDTO> getPnumList(Connection conn) throws SQLException {
	
		International_pnumDTO ipnumdto=null;//**********************************
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " select * from ipnum";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			ArrayList<International_pnumDTO> result = new ArrayList<>();
			while (rs.next()) {
				ipnumdto=new International_pnumDTO();
				ipnumdto.setCountry_name(rs.getString("country_name"));
				ipnumdto.setPnum(rs.getString("country_num"));
				result.add(ipnumdto);
				}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		

		
		
	}
	

	public void insertPartner
	(Connection conn,Regist_partnerDTO registPartnerDTO) throws SQLException {
		//String name;
		PreparedStatement pstmt=null;
		try{
					
		String sql=" update" + 
				"  partner set " +
							"  p_type=?, member_name=?, " + 
							" keyword1=?, keyword2=?, introduce=?, " + 
							" localPhoneNumber=?,EmergencyNumber=?, " + 
							" kakaoID=?,basicmessage='n',"
							+ "account_yn='n', interview_yn='n',"
							+ "quiz_yn='n',partner_regdate=sysdate "
							+ " where memberId=? ";
	
		 pstmt=conn.prepareStatement(sql);
		
			pstmt.setString(1, registPartnerDTO.getP_type());
			pstmt.setString(2, registPartnerDTO.getMember_name());
			//pstmt.setString(4,  registPartnerDTO.getPartnerPicture());// ipnumdto.getPnum()+registIpartnerDTO.getPartnerPicture());
			pstmt.setString(3,  registPartnerDTO.getKeyword1());
			pstmt.setString(4,  registPartnerDTO.getKeyword2());
			pstmt.setString(5,  registPartnerDTO.getIntroduce());
			pstmt.setString(6,  registPartnerDTO.getLocalPhoneNumber());// ipnumdto.getPnum()+registIpartnerDTO.getLocalPhoneNumber());
			pstmt.setString(7,  registPartnerDTO.getEmergencyNumber());
			pstmt.setString(8,  registPartnerDTO.getKakaoID());
			pstmt.setInt(9, registPartnerDTO.getMemberId());
			int result= pstmt.executeUpdate();
			System.out.println("PARTNER인서트업데이트"+result);

		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("XXXX" + e.toString());
		} finally {
	            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
	       
	         }
	
	}//insertPartner
	
	public void updatemem_partneryn(Connection conn, Regist_partnerDTO rpdto) {
		PreparedStatement pstmt = null;
		String sql = " update member set partner_yn='y' where memberId=? ";
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, rpdto.getMemberId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("**파트너등록여부 멤버테이블에 인서트하다가 에러"+e.toString());
		}finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
 	       
         }
		
	}
	
	public void insertIpartner
	(Connection conn, Regist_partnerDTO rpdto, Regist_I_partnerDTO ipartnerdto) throws SQLException {
		//String name;
		PreparedStatement pstmt=null;
		try{

			String sql=	" insert into ipartner(memberId, isVisa, pliveTerm, fliveTerm) "+
					"  values (?,?,?,?) ";
					
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, rpdto.getMemberId());
		pstmt.setString(2,ipartnerdto.getIsVisa());
		pstmt.setString(3,ipartnerdto.getPliveTerm());
		pstmt.setString(4,ipartnerdto.getFliveTerm());
		
		int result2= pstmt.executeUpdate();
		System.out.println("ipartner인서트"+result2);
			
			
		}catch (Exception e) {
			System.out.println("XXXX" + e.toString());
		} finally {
	            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
	       
	         }
	}//insertIpartner
	
	public void insertGnP
	(Connection conn,Regist_partnerDTO rpdto, GnP_MatchDTO gnpdto) throws SQLException {
		//String name;
		PreparedStatement pstmt=null;
		try{
			
			String sql= " insert into gnp_match values(seq_gmcode.nextval,?,?) ";
			pstmt=conn.prepareStatement(sql);
			int cnt =gnpdto.getGm_type().length;
			System.out.println("gnp_cnt---->"+cnt);
			for (int i = 0; i <cnt; i++) {
				pstmt.setInt(1, rpdto.getMemberId());
				pstmt.setString( 2, gnpdto.getGm_type()[i].toString());			
				System.out.println("for문돌면서++"+gnpdto.getGm_type()[i].toString());
				pstmt.executeUpdate();
				
			}
			
		System.out.println("gnp인서트완료..");
			
		}catch (Exception e) {
			System.out.println("gnp인서트오류" + e.toString());
		} finally {
			try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
			
		}
	}//insertGnP

	public void insertBpartner(Connection conn, Regist_partnerDTO rpdto,Regist_B_partnerDTO bPartnerdto,TaxbillDTO taxdto,Bp_telDTO bpteldto) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt=null;
		try{

			String sql=	" insert into bpartner(memberId,tb_code,city) "+
					"  values (?,seq_tbcode.currval,?) ";
					
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, rpdto.getMemberId());
		pstmt.setString(2,bPartnerdto.getCity());


		
		int resultB= pstmt.executeUpdate();
		System.out.println("Bpartner인서트"+resultB);
			
			
		}catch (Exception e) {
			System.out.println("XXXX" + e.toString());
			e.printStackTrace();
		} finally {
	            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
	       
	         }
		
	}
	public void insertTax_Y(Connection conn, TaxbillDTO taxdto) {
		PreparedStatement pstmt = null;
		try {
			String sql = " insert into taxbill(tb_code,tb_staff,tb_email,tb_yn) values(seq_tbcode.nextval,?,?,?) ";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, taxdto.getTb_staff());
			pstmt.setString(2, taxdto.getTb_email());
			pstmt.setString(3, taxdto.getTb_yn());
			
			int resultTy= pstmt.executeUpdate();
			System.out.println("tyy인서트:"+resultTy);
		
		} catch (Exception e) {
			System.out.println("t_y" + e.toString());
		}

	}
	public void insertTax_N(Connection conn, TaxbillDTO taxdto) {
		PreparedStatement pstmt = null;
		try {
			String sql = " insert into taxbill(tb_code,tb_yn,tb_why) values(seq_tbcode.nextval,?,?) ";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, taxdto.getTb_yn());
			pstmt.setString(2, taxdto.getTb_why());
			
			
			int resultTn= pstmt.executeUpdate();
			System.out.println("tax-n인서트:"+resultTn);
			
		} catch (Exception e) {
			System.out.println("t_n" + e.toString());
		}
	}
	
	public void insertBtel(Connection conn, Bp_telDTO bteldto, Regist_partnerDTO rpdto) {
		PreparedStatement pstmt = null;
		try {
			int cnt = bteldto.getOcity().length;
			System.out.println(cnt);
			String sql = " insert into bp_tel (otherc, ocity, otel,memberId) values(seq_otherc.nextval,?,?,?) ";
			for (int i = 0; i < cnt; i++) {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, bteldto.getOcity()[i].toString());
				pstmt.setString(2, bteldto.getOipnum()[i].toString()+bteldto.getOlocal_num()[i].toString());
				pstmt.setInt(3, rpdto.getMemberId()); 
				pstmt.executeUpdate();
				System.out.println("++for문돌면서--btel인서트..성공.."+ bteldto.getOcity()[i].toString());
			}
			System.out.println("btel인서트완료!!");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("btel" + e.toString());
		}
	}
	public void insert_quizyn(Connection conn,int memberId) {
		PreparedStatement pstmt = null;
		try {
			String sql = "update partner set quiz_yn='y' where memberId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
            try { pstmt.close();} catch (SQLException e) {   e.printStackTrace();   }
 	       
         }
	}
	public Regist_partnerDTO select_quizynlist(Connection conn, int memberId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Regist_partnerDTO rpdto= null;
		
		try {
			String sql = "select account_yn, interview_yn, quiz_yn from partner where memberId=? ";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs=ps.executeQuery();
			if (rs.next()) {
				rpdto = new Regist_partnerDTO();
				System.out.println(rs.getString("account_yn"));
				rpdto.setAccount_yn(rs.getString("account_yn"));
				rpdto.setInterview_yn(rs.getString("interview_yn"));
				rpdto.setQuiz_yn(rs.getString("quiz_yn"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
            try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
 	       
         }
		return rpdto;
		
	
	}
	public int select_survey_yn(Connection conn, int memberId) {
		PreparedStatement ps= null;
		String sql = "select count(*) cnt from survey where memberId=? ";
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs=ps.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
            try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
 	       
         }
		
		return cnt;
	}
	public String selectType(Connection conn, int memberId) {
		String type=null;
		PreparedStatement ps= null;
		String sql = "select p_type from partner where memberId=? ";
		ResultSet rs = null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs=ps.executeQuery();
			if (rs.next()) {
				type= rs.getString("p_type");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
            try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
 	       
         }
		return type;
	}
	
	
}

