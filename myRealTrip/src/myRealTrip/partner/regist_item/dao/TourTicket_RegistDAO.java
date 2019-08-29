package myRealTrip.partner.regist_item.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import jdk.nashorn.internal.scripts.JS;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.TourTicketDTO;
import myRealTrip.tourticket.dto.TourticketDTO;
import myRealTrip.uploadfile.model.TempfileDTO;
import net.sf.json.JSONArray;

public class TourTicket_RegistDAO {
	private static TourTicket_RegistDAO dao= null;
	private TourTicket_RegistDAO() {}
	public static TourTicket_RegistDAO getInstance() {
		if(dao==null) {
			dao= new TourTicket_RegistDAO();
		}
		return dao;

	}
	public void insertProduct(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps=null;
		String sql = " insert into product(p_code,p_name,p_typename,city_code,memberId) values"
				+ "('t'||seq_product.nextval,?,?,?,?) ";
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, tdto.getP_NAME());
			ps.setString(2, tdto.getP_TYPENAME());
			ps.setInt(3, tdto.getCITY_CODE());
			ps.setInt(4, tdto.getMEMBERID());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert-product-dao 에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		

	}//insertproduct


	public void insertTourTicket(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		String sql =
				" insert into tourticket "
				+ " (p_code,t_summary,t_introduce,t_category,t_scale,"
				+ " t_time,t_trans,t_tag1,t_tag2,t_lang) "
				+ " values(?,"
				+ " ?,?,?,?,?,?,?,?,?)" ;
		try {
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, tdto.getP_CODE());
			ps.setString(2, tdto.getT_SUMMARY());
			ps.setString(3, tdto.getT_INTRODUCE() );
			ps.setString(4, tdto.getT_CATEGORY() );
			ps.setString(5, tdto.getT_SCALE() );
			ps.setInt(6, tdto.getT_TIME());
			ps.setString(7, tdto.getT_TRANS() );
			ps.setString(8, tdto.getT_TAGS()[0]);
			ps.setString(9, tdto.getT_TAGS()[1]);
			ps.setString(10, tdto.getT_LANG());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insertTour에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
	}
	public void insertTourTicket2_hour(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps= null;
		String sql = "update tourticket "
				+ "set t_spot=? ,"
				+ "t_timer=?, t_hour=?  "
				+ " where p_code =? ";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, tdto.getT_SPOT());
			ps.setString(2, tdto.getT_TIMER());//총소요시간
			ps.setString(3, tdto.getT_HOUR());//만나는시간
		//	ps.setString(5, tdto.getT_RCM());
			ps.setString(4, tdto.getP_CODE());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	
	public void insertTourTicket2_rcm(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps= null;
		String sql = "update tourticket "
				+ "set t_spot=? ,"
				+ "t_timer=?, t_rcm=?  "
				+ " where p_code =? ";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, tdto.getT_SPOT());
			ps.setString(2, tdto.getT_TIMER());//총소요시간
			//ps.setString(3, tdto.getT_HOUR());//만나는시간
			ps.setString(5, tdto.getT_RCM());
			ps.setString(4, tdto.getP_CODE());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	public void insertTourCourse(Connection conn, TourTicketDTO tdto) {
			String pcode = tdto.getP_CODE();
			
			PreparedStatement ps = null;
			int cnt =tdto.getTC_TITLE().length;
			try {
			for (int i = 0; i < cnt; i++) {
				String sql=" insert into t_course(tc_code, tc_title, tc_detail, pcode, tc_time, tc_cate)"
						+ " values(seq_tccode.nextval,?,?,?,?,?)";
				ps=conn.prepareStatement(sql);
					ps.setString(1, tdto.getTC_TITLE()[i]);
					ps.setString(2, tdto.getTC_DETAIL()[i]);
					ps.setString(3, pcode);
					ps.setString(4, tdto.getTC_TIME()[i]);
					ps.setString(5, tdto.getTC_CATE()[i]);
					ps.executeUpdate();
				}
			}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		
	}

	public String selectpcode(Connection conn, int memberId) {
		PreparedStatement ps = null;
		ResultSet rs =null;
		String sql = "select p_code from product where memberId=?";
		String pcode=null;
		try {
			ps =conn.prepareStatement(sql);
			ps.setInt(1, memberId);
			rs = ps.executeQuery();
			if(rs.next()) {
			pcode=rs.getString("p_code");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
		return pcode;
	}
	
	
	
	
	
	////////////////////////////ajax로 임시파일테이블저장////////////////////////////////////////////////////////////////////
	public String tempfileInsert(Connection conn, TempfileDTO tempdto) {
		PreparedStatement ps = null;
		String sql = " insert into tempfile (filename, filepath, p_code, tablename)"
				+ " values (?,?,?,?)";
		int result=0;
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, tempdto.getFILENAME());
			ps.setString(2, tempdto.getFILEPATH());
			ps.setString(3, tempdto.getP_CODE());
			ps.setString(4, tempdto.getTABLENAME());
			result=ps.executeUpdate();
			System.out.println("인서트 잘됐니..."+result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
		return null;
	}
	public JSONArray selectfile_pcode(Connection conn, TempfileDTO tempdto) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = " select *  from tempfile where tablename=? and p_code=? ";
		JSONArray ja = new JSONArray();
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, tempdto.getTABLENAME());
			ps.setString(2, tempdto.getP_CODE());
			rs=ps.executeQuery();
			if (rs.next()) {
				tempdto.setFILENAME(rs.getString("filename"));
				tempdto.setFILEPATH(rs.getString("filepath"));
				ja.add(tempdto);
				System.out.println("DAOselectfile_pcode함수::"+ja);
				
			}
			
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
		return ja;
	}
	public void tempfileUpdate(Connection conn, TempfileDTO tempdto) {
		PreparedStatement ps = null;
		String sql = " update tempfile set filename=? "
				+ " where p_code=? and tablename=? ";
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, tempdto.getFILENAME());
			ps.setString(2, tempdto.getP_CODE());
			ps.setString(3, tempdto.getTABLENAME());
			int result=ps.executeUpdate();
			System.out.println("updateresult:"+result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	
	}
	public void insertSinglePrice(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		String sql = " insert into s_price values(seq_spcode.nextval,?,?,?,?,?)";
		try {
			ps= conn.prepareStatement(sql);
			ps.setInt(1,tdto.getSP_MAXP());
			ps.setInt(2,tdto.getSP_MINP());
			ps.setInt(3,tdto.getSP_ONE());
			ps.setString(4,tdto.getP_CODE());
			ps.setString(5,tdto.getPU_UNIT_S());
			int result = ps.executeUpdate();
			System.out.println("singleprice 인서트완료?>"+result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	public void insertMultiPrice(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		int cnt = tdto.getDP_ONE().length;
		System.out.println("cnt::"+cnt);
		String sql = " insert into d_price values(seq_dpcode.nextval,?,?,?,?)";
		try {
			for (int j = 0; j <cnt; j++) {
				ps= conn.prepareStatement(sql);
				ps.setString(1,tdto.getP_CODE());
				ps.setInt(2,tdto.getDP_PEOPLE()[j]);
				ps.setInt(3,tdto.getDP_ONE()[j]);
				ps.setString(4,tdto.getPU_UNIT_M()[j]);
				int result = ps.executeUpdate();
				System.out.println("for문돌면서 multiprice 인서트완료?("+j+")"+result);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	public void insertTourTicket_3(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		String sql =
				" update tourticket "
				+ " set T_PINCLUSION=?,T_TBURDEN=? ,T_EGUIDE=? where p_code=?";
			
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, tdto.getT_PINCLUSION());
			ps.setString(2, tdto.getT_TBURDEN());
			ps.setString(3, tdto.getT_EGUIDE());
			ps.setString(4, tdto.getP_CODE());
			int result=ps.executeUpdate();
			System.out.println("insertTour3완료??>"+result);
		} catch (SQLException e) {
			System.out.println("insertTour3에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	public void ms_picInsert(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		String sql =
				" insert into ms_pic "
				+ " values ('tour'||seq_mspcode.nextval,?,?)";
			
		try {
			
			ps = conn.prepareStatement(sql);	
			ps.setString(1, tdto.getMSP_PICTURE());
			ps.setString(2, tdto.getP_CODE());
			int result=ps.executeUpdate();
			System.out.println("insert_mspic2완료??>"+result);
		} catch (SQLException e) {
			System.out.println("insertTour3에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}
	public JSONArray selectmspic_pcode(Connection conn, TourTicketDTO tdto) {
		
		JSONArray ja  = new JSONArray();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql =
				" select * from ms_pic "
				+ " where pcode=?";
			
		try {
			
			ps = conn.prepareStatement(sql);	
			ps.setString(1,tdto.getP_CODE());
			rs=ps.executeQuery();
			if (rs.next()) {
				tdto.setMSP_PICTURE( rs.getString("msp_picture"));
				ja.add(tdto);
			}
			System.out.println("select_mspic2완료??>"+ja);
		} catch (SQLException e) {
			System.out.println("insertTour2 selectmspic_pcode에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		return ja;
	}
	public void ms_picUpdate(Connection conn, TourTicketDTO tdto) {
		PreparedStatement ps = null;
		String sql =
				" update ms_pic "
				+ " set msp_picture=? where pcode=?";
			
		try {
			
			ps = conn.prepareStatement(sql);	
			ps.setString(1, tdto.getMSP_PICTURE());
			ps.setString(2, tdto.getP_CODE());
			int result=ps.executeUpdate();
			System.out.println("update_mspic2완료??>"+result);
		} catch (SQLException e) {
			System.out.println("updatepic_tour3에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		
	}

		
	}

	
	
	
	
	
	
	
	

