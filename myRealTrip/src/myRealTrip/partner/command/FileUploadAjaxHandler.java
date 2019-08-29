package myRealTrip.partner.command;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import com.util.ConnectionProvider;

import myRealTrip.command.CommandHandler;
import myRealTrip.uploadfile.dao.FileTestDAO;
import net.sf.json.JSONObject;

public class FileUploadAjaxHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			System.out.println("get파일-업로드에이작스핸들러호출");
			return fileupload(request,response);
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("post파일-에이작스핸들러호출");			
			return  fileupload(request,response);
		}else {
			System.out.println("이상한방식..");
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
		//
		
		//

	}

	private String fileupload(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("fileupload핸들러");
		String uri = request.getRequestURI();
		String filepath = request.getRealPath("partnerPicture");
		System.out.println(request.getRealPath("partnerPicture"));
		File saveDir = new File(filepath);
		if (!saveDir.exists()) {
			saveDir.mkdirs();
		}
		int maxPostSize = 1024*1024*5;
		String encoding="UTF-8";
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			MultipartRequest mrequest = new MultipartRequest
					(request, filepath, maxPostSize,encoding, policy);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		JSONObject jsonObject = new JSONObject();
		FileTestDAO dao = FileTestDAO.getInstance();
	//ArrayList<FileTestDTO> list = dao.selectFileList(conn);
		jsonObject.put("filepath", filepath);
		
		request.setAttribute("filepath", jsonObject);
		System.out.println(jsonObject);
		return "/partner/ajaxfileupload";
		
	}

}
