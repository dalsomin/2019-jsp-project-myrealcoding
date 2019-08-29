package myRealTrip.uploadfile.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.uploadfile.dao.FileTestDAO;
import myRealTrip.uploadfile.service.FileTestService;
import net.sf.json.JSONArray;

public class File_Regist_PartnerHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get파일-업로드에이작스핸들러호출");
			return "/file";
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post파일-에이작스핸들러호출");			
			return  fileupload(request,response);
		}else {
			System.out.println("이상한방식..");
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	
	}

	private String fileupload(HttpServletRequest request, HttpServletResponse response) {
		String uri =request.getRequestURI();
		String saveDirectory= request.getRealPath("/img/partner_profile/"); 
		System.out.println("uri--"+uri);
		System.out.println("filepath--"+saveDirectory);
		File savedir = new File(saveDirectory);
		if (!savedir.exists()) {
			savedir.mkdirs();
		}
		int maxPostSize =1024*1024*5;
		String encoding = "UTF-8";
		FileRenamePolicy filepolicy = new DefaultFileRenamePolicy();
	
		File uploadFile =null;
		MultipartRequest mrequest = null;
		
			
			try {
				mrequest= new MultipartRequest
						(request, saveDirectory, maxPostSize,encoding,filepolicy);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			uploadFile=mrequest.getFile("guideProfileBtn");

		String filesystemname  = null;
	//	String originalfilename = null;
		if( uploadFile != null ) { // 첨부파일이 있는 경우에만.
			long uploadFile_length = uploadFile.length();
		//	originalfilename =mrequest.getOriginalFileName("guideProfileBtn	");
			filesystemname=mrequest.getFilesystemName("guideProfileBtn");
	
		}
		System.out.println("-----"+filesystemname);
		JSONArray jsonArray  = new JSONArray();
		FileTestDAO dao = FileTestDAO.getInstance();
		Member member = (Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		//dao.insertfilelist(conn,filesystemname, originalfilename, saveDirectory);
		FileTestService fs =new FileTestService();
		
		
		jsonArray=fs.ipartner(memberId,filesystemname);
		request.setAttribute("list", jsonArray);
		
		System.out.println(jsonArray);
				return "/partner/registpartner/ajaxfile_registpartner_ajax";
	}

}
