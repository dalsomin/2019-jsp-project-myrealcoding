package myRealTrip.support.command;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.support.service.SupportQWriteService;

public class SupportQCommentsHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		String uri = request.getRequestURI();
		String saveDirectory = 
				request.getRealPath("/myRealTrip/support/Cimgfile");
	     System.out.println("FileTest");
	      System.out.println(saveDirectory);
		
	      File saveDir = new File(saveDirectory);
	      if( !saveDir.exists() ) saveDir.mkdirs();
	      
	      int maxPostSize = 1024*1024*5; 
	      String encoding = "UTF-8"; 
	      FileRenamePolicy policy = new DefaultFileRenamePolicy(); 
	      
	      MultipartRequest mrequest 
	  	= new MultipartRequest(request, saveDirectory
	  			, maxPostSize, encoding, policy); 
	      
	      String qa_content = mrequest.getParameter("qa_content");
	      System.out.println(qa_content);
	      
	      int cq_code = Integer.parseInt(mrequest.getParameter("cq_code"));
	      
				SupportQWriteService qWriteService = new SupportQWriteService();
	  //file
				File uploadFile = mrequest.getFile("attachFile");
				String filesystemname ="";
				if (uploadFile != null) {
				//	long uploadFile_length = uploadFile.length(); // 파일 길이 
				//	String originalfilename = mrequest.getOriginalFileName("attachFile");  // 원래 파일 이름 
				     filesystemname  = mrequest.getFilesystemName("attachFile");  // 중복일시 바뀌는 파일 이름 
				
				}
		//insert 

		Member authUser = (Member)request.getSession().getAttribute("authUser");
	    int result = qWriteService.inertQA(qa_content, cq_code,filesystemname, authUser.getMember_name());
	    
	    if (result == 1) {
          //  response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qClickedArticle.do?qq=qq&cq_code="+request.getParameter("cq_code"));
			response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qArticles.do?qq=qq&cq_code="+request.getParameter("cq_code"));
		}else {
			
		}
		
//		//System.out.println("호출되면 안되는핸들러...");
//		
//		String qa_content = 
//				request.getParameter("qa_content");
//		
//		//System.out.println(qa_content);
//		
//		int cq_code = Integer.parseInt(request.getParameter("cq_code"));
//		//System.out.println(cq_code);
//		int result = qWriteService.inertQA(qa_content, cq_code);
//		
//		request.setAttribute("qa_content", qa_content);
//		//request.setAttribute("cq_code", cq_code);
//		
//		if (result == 1) {
//			//response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qClickedArticle.do?qq=qq&cq_code="+request.getParameter("cq_code"));
//			response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qArticles.do?qq=qq&cq_code="+request.getParameter("cq_code"));
//		}else {
//			
//		}
		
		return null;
	}

}
