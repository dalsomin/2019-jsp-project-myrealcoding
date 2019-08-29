package myRealTrip.partner.regist_item.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.plaf.synth.SynthSpinnerUI;

import com.sun.xml.internal.ws.resources.ProviderApiMessages;
import com.util.JdbcUtil;

import myRealTrip.partner.dto.B_addinfoDTO;
import myRealTrip.partner.regist_item.dto.CitycodeDTO;
import myRealTrip.partner.regist_item.dto.MinbakDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Minbak_RegistDAO {
	private static Minbak_RegistDAO dao= null;
	private Minbak_RegistDAO() {}
	public static Minbak_RegistDAO getInstance() {
		if(dao==null) {
			dao= new Minbak_RegistDAO();
		}
		return dao;
	}

	
	public ArrayList<B_addinfoDTO> getaddinfo(Connection conn) throws SQLException{
		System.out.println("b_addinfodto도착");
		B_addinfoDTO add_dto =null;
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		ArrayList<B_addinfoDTO> addinfolist = new ArrayList<>();
		
		String sql  = " select * from b_addinfo";
		try {
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				add_dto=new B_addinfoDTO();//얘의 위치
				add_dto.setB_a_code(rs.getInt("b_a_code"));
				add_dto.setB_a_detail(rs.getString("b_a_detail"));
				addinfolist.add(add_dto);
			}
			return addinfolist;
		} catch (SQLException e) {
			System.out.println("addinfolistdao에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return addinfolist;
	}
	
		
		
	
	
	public void updateProduct(Connection conn,MinbakDTO mdto){
		PreparedStatement ps=null;
		String sql = " update product set p_name=?,p_typename=? where p_code=? ";
				
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, mdto.getP_name());
			ps.setString(2, mdto.getP_typename());
			ps.setString(3, mdto.getP_code());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert-product-dao 에서 에러");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
		}
		

	}//insertproduct
	
	
		public void insertBnb(Connection conn, MinbakDTO mdto) {
			PreparedStatement ps = null;
			String sql = "insert into bnb values(?, ?,?,?,?,?,?)" ;
			try {
				ps=conn.prepareStatement(sql);
				System.out.println(mdto.getP_code());
				ps.setString(1, mdto.getP_code());
				ps.setInt(2, mdto.getB_atime());
				ps.setString(3, mdto.getB_hcall());
				ps.setString(4, mdto.getB_pinclusion());
				ps.setString(5, mdto.getB_tburden());
				ps.setString(6, mdto.getB_eguide());
				ps.setString(7, mdto.getP_name());
				ps.executeUpdate();
			} catch (SQLException e) {
				System.out.println("insertbnb에서 에러");
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
			     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
			}
			
			
		}//insertbnb
		
/*		public void insertB_add(Connection conn, MinbakDTO mdto) {
			PreparedStatement ps = null;
			int cnt = mdto.getB_a_code().length;
			String sql = "insert into bnb_addchoice values(seq_b_ac_code.nextval,?, ?)";
			try {
				for (int i = 0; i < cnt; i++) {
					ps  = conn.prepareStatement(sql);
					ps.setString(1, mdto.getP_code());
					ps.setInt(2, mdto.getB_a_code()[i]);
					ps.executeUpdate();
					
				}
			} catch (SQLException e) {
				System.out.println("insertb_add에서 에러");
				e.printStackTrace();
			}finally {
			     try { ps.close();} catch (SQLException e) {   e.printStackTrace();   }
			}
			
			
		}*/
		public ArrayList<CitycodeDTO> getcitylist(Connection conn) throws SQLException {
			CitycodeDTO cdto = null;
			
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select * from city";
			try {
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery();
				ArrayList<CitycodeDTO> getcitylist =new ArrayList<>();
				while (rs.next()) {
					cdto=new CitycodeDTO();
					cdto.setC_name(rs.getString("c_name"));
					cdto.setC_code(rs.getInt("c_code"));
					getcitylist.add(cdto);
				}
				return getcitylist;
/*			} catch (SQLException e) {
				System.out.println("citylistdao에서 에러");
				// TODO Auto-generated catch block
				e.printStackTrace();*/
			} finally {
	            try { ps.close(); conn.close();} catch (SQLException e) {   e.printStackTrace();   }
			}
			
			
			
		}
		public ArrayList<CitycodeDTO> getnationlist(Connection conn) {
			
			CitycodeDTO cdto = null;
			ArrayList<CitycodeDTO> getnationlist =new ArrayList<>();
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select * from nation";
			try {
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery();
				while (rs.next()) {
					cdto = new CitycodeDTO();
					cdto.setN_name(rs.getString("n_name"));
					cdto.setN_code(rs.getInt("n_code"));
					getnationlist.add(cdto);
					
				}
				return getnationlist;
			} catch (SQLException e) {
				System.out.println("nationlistdao에서 에러");
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
	            try { ps.close(); conn.close();} catch (SQLException e) {   e.printStackTrace();   }
			}
			return getnationlist;
		}
		public JSONArray selectcitylist_Ajax(Connection conn, int nationcode) {
			JSONArray citylist = new JSONArray();
	
		PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = "select * from city where n_code=? ";
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, nationcode);
				rs = ps.executeQuery();
				while (rs.next()) {
					JSONObject jsonObject = new JSONObject();
					jsonObject.put("c_code", rs.getInt("c_code"));
					jsonObject.put("c_name", rs.getString("c_name"));
					citylist.add(jsonObject);
				}
				System.out.println(citylist);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}finally {
					try {
					ps.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
			return citylist;
}
	
		//ajax dao/////////////////////////////////////////////////////////////////////////////////
		public void productinsertAJAX(Connection conn, int memberId, int c_code) {
			// TODO Auto-generated method stub
			PreparedStatement ps = null;
			String sql = " insert into product(p_code, city_code, memberId)"
					+ "values ('lod'||seq_product.nextval, ?, ?)";
			
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, c_code);
				ps.setInt(2, memberId);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
				ps.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
		}
		public String selectpcode(Connection conn) {
				// TODO Auto-generated method stub
				PreparedStatement ps = null;
				String p_code =null;
				ResultSet rs = null;
				String sql = " select 'lod'||seq_product.currval p_code from dual";
				
				try {
					ps = conn.prepareStatement(sql);
				//	ps.setInt(1, memberId);
					rs =ps.executeQuery();
					if (rs.next()) {
						p_code = rs.getString("p_code");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					try {
						ps.close();
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				return p_code;
		}
		public void insertp_pic(Connection conn, String p_code,String filesystemname) {
			// TODO Auto-generated method stub
			System.out.println("insertp_pic--p_code-"+p_code);
			PreparedStatement ps = null;
			String sql = "insert into p_pic values (?, ?)";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, p_code);
				ps.setString(2, filesystemname);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					ps.close();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		public JSONArray selectpic(Connection conn,String p_code) {
			// TODO Auto-generated method stub
			JSONArray systemname = new JSONArray();
			PreparedStatement ps = null;
			ResultSet rs  = null;
			//String systemname =null;
			String sql = "select p_pic from p_pic where p_code =?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, p_code);
				rs = ps.executeQuery();
				if (rs.next()) {
					systemname.add(rs.getString("p_pic"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
				ps.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			return systemname;
		}
		public int isPcode_p_pic(Connection conn, String p_code) {
			int result=0;
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = " select count(*) cnt from p_pic where p_code=? ";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, p_code);
				rs = ps.executeQuery();
				if(rs.next()) {
					result = rs.getInt("cnt");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
				ps.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			
			return result;
		}
		public void updatefilp_pic(Connection conn, String p_code, String filesystemname) {
			PreparedStatement ps = null;
			String sql = " update p_pic set p_pic=? where p_code=?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, filesystemname);
				ps.setString(2, p_code);
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
				ps.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			
		}
		public void insertbnb_dpic(Connection conn, String p_code, String filesystemname) {
			// TODO Auto-generated method stub
						System.out.println("insertbnb_dpic--p_code-"+p_code);
						PreparedStatement ps = null;
						String sql = "insert into bnb_dpic values (seq_bnbdpic.nextval, ?, ?)";
						try {
							ps = conn.prepareStatement(sql);
							ps.setString(1, filesystemname);
							ps.setString(2, p_code);
							ps.executeUpdate();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally {
							try {
								ps.close();
								
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
			
		}
		public JSONArray selectbnbpic(Connection conn, String p_code) {
			// TODO Auto-generated method stub
			JSONArray systemname = new JSONArray();
			PreparedStatement ps = null;
			ResultSet rs  = null;
			//String systemname =null;
			String sql = "select b_d_picture from bnb_dpic where p_code =?";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, p_code);
				rs = ps.executeQuery();
				while (rs.next()) {
					systemname.add(rs.getString("b_d_picture"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
				ps.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			return systemname;
		}
}