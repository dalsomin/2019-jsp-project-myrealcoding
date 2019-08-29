package myRealTrip.uploadfile.command;





import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.myrealtripMember.dao.UploadProfilePictureDAO;
import myRealTrip.myrealtripMember.service.UploadProfilePictureService;
import net.sf.json.JSONArray;

public class File_CancelHandler implements CommandHandler{

   private UploadProfilePictureService uploadProfilePictureService = new UploadProfilePictureService();

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

      // opi = profileManagement.jsp에서 .calbtn 버튼 클릭하면 get 방식으로 넘겨준 o_profile_img값
      String o_profile_img =  request.getParameter("opi");// "무민30.jpg"; // "/myRealTrip/img/profilePicture/토토로31.jpg" ;// $("#profileImage").attr(src);
      
      // cpi = profileManagement.jsp에서 .calbtn 버튼 클릭하면 get 방식으로 넘겨준 c_profile_img값
      String c_profile_img =  request.getParameter("cpi");// ="토토로31.jpg";

      
      // 업로드 한 프로필 사진이 저장되는 경로
      String saveDirectory= request.getRealPath("/img/profilePicture"); 
      
      File f = new File(saveDirectory, c_profile_img);
      if( f.exists() ) f.delete();  // 취소하기 버튼 눌렀으니까 업로드 된 파일이 있다면 삭제하기


      HttpSession session = request.getSession();
      Member authUser = (Member)session.getAttribute("authUser");
      
      UploadProfilePictureDAO dao = UploadProfilePictureDAO.getInstance();
      
      //멤버 아이디 값을 가져와서
      int memberId = authUser.getMemberId();
      
      //해당 멤버 아이디에 변경 전 프로필 사진(o_profile_img)으로 업데이트 하기
      int update=uploadProfilePictureService.updateProfilePicture(o_profile_img, memberId);
      
      //세션(authUser)의 member_pic을 변경 전 프로필 사진으로 설정하기   
      authUser.setMember_pic(o_profile_img);

      return null;

   }



}