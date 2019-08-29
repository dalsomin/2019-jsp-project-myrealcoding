package myRealTrip.myrealtripMember.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import myRealTrip.auth.model.Member;
import net.sf.json.JSONArray;


public class UploadProfilePictureDAO {
   
   private static UploadProfilePictureDAO dao = new UploadProfilePictureDAO();

   public static UploadProfilePictureDAO getInstance() {
      return dao;
   }
   
   

   public int updateProfilePicture(Connection conn, String member_pic, int memberId){
      
      System.out.println("dao");
      String sql = " update member "
            +" set member_pic = ? "
            +" where memberId = ? ";

      PreparedStatement pstmt = null;      
      int result = 0;
      try {
         pstmt = conn.prepareStatement(sql);
          System.out.println("sql삽입");
         pstmt.setString(1, member_pic);
          System.out.println("1인자");
         pstmt.setInt(2, memberId);
          System.out.println("2인자");
         result = pstmt.executeUpdate();
          System.out.println("실행완료::"+result);
          conn.commit();
      } catch (SQLException e) { 
         e.printStackTrace();
      } finally {
         try { pstmt.close();
               conn.close();
         } catch (SQLException e) {   e.printStackTrace();   }
      }
      System.out.println("프로필 사진 업데이트");
      //System.out.println(result);
      return result;
   }
   
   

   
   public JSONArray selectProfilePicture(Connection conn, int memberId){

      JSONArray list = new JSONArray();

      PreparedStatement pstmt = null;
      ResultSet rs = null;

      String sql =   " select member_pic from member where memberId = ? ";
      

      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, memberId);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            Member dto = new Member();
            dto.setMember_pic(rs.getString("member_pic"));
            list.add(dto);
            System.out.println("---selectprofilepicture-dao----"+list+"------"+dto.getMember_pic());
            
            
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally{
         try {
            rs.close();
            pstmt.close();
            conn.close();
         } catch (SQLException e2) {
            e2.printStackTrace();
         }
      }
      return list;
   }
   
   
}