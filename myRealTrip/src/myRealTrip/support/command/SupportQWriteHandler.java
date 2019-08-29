package myRealTrip.support.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import myRealTrip.command.CommandHandler;
import myRealTrip.support.model.HelpFileDTO;
import myRealTrip.support.model.QuestionDTO;
import myRealTrip.support.service.SupportQWriteService;


public class SupportQWriteHandler implements CommandHandler{

	private static final String  FORM_VIEW = "/support/qForm";

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 문의하기 insert
		if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}

	}



	private String processSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String uri = request.getRequestURI();
		//Connection conn = DBConn.getConnection(); // DB 객체 받아오기 
		String saveDirectory = 
				request.getRealPath("/myRealTrip/support/imgfile"); // 저장하는 경로 
		
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
  	
  	String cq_type = mrequest.getParameter("cq_type");
  	String cq_name = mrequest.getParameter("cq_name");
  	String cq_email = mrequest.getParameter("member_email");
  	String cq_title = mrequest.getParameter("cq_title");
  	int cq_bno = Integer.parseInt(mrequest.getParameter("cq_bno"));
  	String cq_tel = mrequest.getParameter("cq_tel");
  	int cq_c_code = Integer.parseInt(mrequest.getParameter("cq_c_code"));
  	String cq_detail = mrequest.getParameter("cq_detail");
    
  	SupportQWriteService qWriteService = new SupportQWriteService();
  	
  	//dto 에 담기 
  	
      QuestionDTO dto = new QuestionDTO();
      
		dto.setCq_type(cq_type);
		dto.setCq_name(cq_name);
		dto.setCq_email(cq_email);
		dto.setCq_title(cq_title);
		dto.setCq_bno(cq_bno);
		dto.setCq_tel(cq_tel);
		dto.setCq_c_code(cq_c_code);
		dto.setCq_detail(cq_detail);
       
		
		File uploadFile = mrequest.getFile("attachFile");
		
		HelpFileDTO fileDTO = new HelpFileDTO();
		int fileCnt =0;
		if (uploadFile != null) {
			long uploadFile_length = uploadFile.length(); // 파일 길이 
			String originalfilename = mrequest.getOriginalFileName("attachFile");  // 원래 파일 이름 
			String filesystemname  = mrequest.getFilesystemName("attachFile");  // 중복일시 바뀌는 파일 이름 
		
			fileDTO.setFilelength(uploadFile_length);
			fileDTO.setFilesystemname(filesystemname);
			fileDTO.setOriginalfilename(originalfilename); 
			
			
			fileCnt = qWriteService.insertHelpFile(fileDTO);
			//테이블 하나만들어라 
		}
		String file_name = "";
		
		if (fileCnt == 1) {
			file_name = qWriteService.getFileName();
			System.out.println(file_name+"무사히 잘 가져옴..");
		}else {
			file_name += "no file";
			System.out.println("insertHelpFile 실패!");
		}
		
		int result = qWriteService.qwrite(dto, file_name);
		
		
		
		HttpSession session = request.getSession();
		if (result == 1 ) {
			if (session.getAttribute("authUser") == null) {
				response.sendRedirect(request.getContextPath() + "/myrealtrip/support/home.do");
			}else {  
	     	//	response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qArticles.do?member_email="+member_email+"&cq_title="+cq_title+"&cq_detail="+cq_detail );
			response.sendRedirect(request.getContextPath() + "/myRealTrip/support/solution/qArticles.do");
			
			}
		}
		
		
		return null;
//	}//if 

	}
}//
