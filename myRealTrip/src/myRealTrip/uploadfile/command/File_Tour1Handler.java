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
import myRealTrip.partner.regist_item.dao.Minbak_RegistDAO;
import myRealTrip.partner.regist_item.service.TourService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class File_Tour1Handler implements CommandHandler{

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
		int c_code=Integer.parseInt(request.getParameter("citycode"));
		System.out.println("도시코드 받아와지니??"+c_code);
		String uri =request.getRequestURI();
		String saveDirectory= request.getRealPath("/img/tour"); 
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
			uploadFile=mrequest.getFile("offerPhotoFileBtn");

		String filesystemname  = null;
	//	String originalfilename = null;
		if( uploadFile != null ) { // 첨부파일이 있는 경우에만.
			long uploadFile_length = uploadFile.length();
		//	originalfilename =mrequest.getOriginalFileName("guideProfileBtn	");
			filesystemname=mrequest.getFilesystemName("offerPhotoFileBtn");
	
		}
		System.out.println("-----"+filesystemname);
		JSONArray jsonArray  = new JSONArray();
		Minbak_RegistDAO dao = Minbak_RegistDAO.getInstance();
		Member member = (Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		System.out.println("회원아이디--"+memberId);
		//dao.insertfilelist(conn,filesystemname, originalfilename, saveDirectory);
		TourService ms =new TourService();
	//	int c_code=77;

		//
		JSONObject js = new JSONObject();
		String p_code=request.getParameter("p_code");
		System.out.println(p_code);
		if (p_code.equals("first")) {
			System.out.println("처음 파일업로드하시네요...");
			p_code=ms.productiInsertAjax(memberId,filesystemname,c_code);
			System.out.println("핸들러에서 받은 피코드--"+p_code);
			jsonArray=ms.insertp_pic(memberId,filesystemname,c_code,p_code);
			js.put("p_code", p_code);
				
		}else {
			System.out.println("처음이 아니시군요...");
			jsonArray=ms.updatep_pic(p_code,filesystemname,c_code);
		}
		js.put("p_code", p_code);
		js.put("filename", jsonArray);
		request.setAttribute("jsonObject", js);

		System.out.println(js);
				return "/partner/regist_item/ajax/tourfileajax_1";
	}

}
