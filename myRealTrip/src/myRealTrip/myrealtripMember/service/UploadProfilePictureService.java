package myRealTrip.myrealtripMember.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import myRealTrip.myrealtripMember.dao.UploadProfilePictureDAO;
import net.sf.json.JSONArray;

public class UploadProfilePictureService {

   public static int updateProfilePicture(String member_pic, int memberId) {
      UploadProfilePictureDAO dao = UploadProfilePictureDAO.getInstance();
      try (Connection conn = ConnectionProvider.getConnection()) {
         System.out.println("서비스");
         System.out.println("사진이름 가져와지니?????"+member_pic);
         
         int result = dao.updateProfilePicture(conn, member_pic, memberId);
         return result;
      } catch (SQLException | NamingException e) {
         throw new RuntimeException(e);
      }
   }
   
   
   public JSONArray selectProfilePicture(int memberId) {
      UploadProfilePictureDAO dao = UploadProfilePictureDAO.getInstance();
      try (Connection conn = ConnectionProvider.getConnection()) {         
         JSONArray list = new JSONArray();
               list = dao.selectProfilePicture(conn, memberId);
         System.out.println("service-list출력-----"+list);
                  return list;
      } catch (SQLException | NamingException e) {
         e.printStackTrace();
         throw new RuntimeException(e);
      }
   }
   
}