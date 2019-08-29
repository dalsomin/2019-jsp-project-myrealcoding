package myRealTrip.partner.regist_item.command;

import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.naming.NamingException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import com.util.ConnectionProvider;

import myRealTrip.auth.model.Member;
import myRealTrip.command.CommandHandler;
import myRealTrip.uploadfile.dao.FileTestDAO;
import myRealTrip.uploadfile.model.FileTestDTO;
import net.sf.json.JSONObject;

public class Item_minbak_fileAjaxHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)  {

		JSONObject jsonObject = new JSONObject();
		String para = request.getParameter("para");
		String a = request.getParameter("offer");
		System.out.println("---"+a);
		Member member =(Member) request.getSession().getAttribute("authUser");
		int memberId = member.getMemberId();
		String uri = request.getRequestURI();
		String saveDirectory =  request.getRealPath("/myRealTrip/minbak/file");
		///    
		System.out.println("saveDirectory"+saveDirectory);
		///

		File saveDir = new File(saveDirectory);
		if( !saveDir.exists() ) saveDir.mkdirs();

		int maxPostSize = 1024*1024*5; 
		String encoding = "UTF-8"; 
		FileRenamePolicy policy = new DefaultFileRenamePolicy(); 
		MultipartRequest mrequest = null;
		Connection conn = null;
		try {
			conn=ConnectionProvider.getConnection();
			mrequest = new MultipartRequest(
					request, 
					saveDirectory,
					maxPostSize, 
					encoding, policy
					);
		} catch (IOException | NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		///  


		String originalfilename = mrequest.getOriginalFileName("file");
		String filesystemname  = mrequest.getFilesystemName("file");
		FileTestDAO dao = FileTestDAO.getInstance();
		FileTestDTO dto = new FileTestDTO();
		Enumeration<String> en = request.getHeaderNames();
		System.out.println("> 전송받은 헤더 정보 출력<br>");
		while( en.hasMoreElements() ){
			String key = en.nextElement();
			String value = request.getHeader(key);
			System.out.println(key+" : "+ value + "<br>");
		}
		System.out.println("<br>> 전송받은 데이터 출력<br>");
		ServletInputStream sis;
		String line = "";
		try {
			sis = request.getInputStream();
			DataInputStream dis = new DataInputStream(sis);
			while( ( line = dis.readLine() ) != null ){
				System.out.println( new String( line.getBytes("ISO-8859-1"), "UTF-8" ) +"<br>" );
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//^파일을 스트링형태로 데이터를 읽어들인다. 
		//^한번더 가공함 한라인씩 출력하기 위해서 					   
		
		File uploadFile = mrequest.getFile("file");
		System.out.println(uploadFile);
		if( uploadFile != null ) { // 첨부파일이 있는 경우에만.

			long uploadFile_length = uploadFile.length();
			System.out.println(originalfilename);
			System.out.println(filesystemname);
			dto.setFilelength(uploadFile_length);
			dto.setFilesystemname(filesystemname);
			dto.setOriginalfilename(originalfilename);
		}

		// 게시판 글쓰기
		int result = dao.insert(conn, dto,memberId);
		System.out.println("dao인서트결과-->"+result);
		// list.do 포워딩....
		jsonObject.put("filepath", saveDirectory);
		jsonObject.put("result", "success");
		jsonObject.put("thumb", filesystemname);

		return "/partner/minbak_ajax";
	}

}
