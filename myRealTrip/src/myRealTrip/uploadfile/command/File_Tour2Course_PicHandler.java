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
	import myRealTrip.partner.regist_item.dao.TourTicket_RegistDAO;
	import myRealTrip.partner.regist_item.service.MinbakService;
	import myRealTrip.partner.regist_item.service.TourTicketService;
	import myRealTrip.uploadfile.model.TempfileDTO;
	import net.sf.json.JSONArray;
	import net.sf.json.JSONObject;

	public class File_Tour2Course_PicHandler implements CommandHandler{

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
			String saveDirectory= request.getRealPath("/img/tour/course_pic"); 
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
				uploadFile=mrequest.getFile("tc_pic");

			String filesystemname  = null;
			
			if( uploadFile != null ) { // 첨부파일이 있는 경우에만.
				long uploadFile_length = uploadFile.length();
				filesystemname=mrequest.getFilesystemName("tc_pic");
				
			}
			
			//String tablename = request.getParameter("tablename");
			String ispic=request.getParameter("ispic");	
			String tablename=request.getParameter("tablename");
			String p_code=request.getParameter("p_code1");
			TempfileDTO tempdto = new TempfileDTO();
			tempdto.setFILEPATH(saveDirectory);
			tempdto.setFILENAME(filesystemname);
			tempdto.setP_CODE(p_code);
			tempdto.setTABLENAME(tablename);
			System.out.println("-----(핸들러)-------------------------------");
			System.out.println("| ismpic-----"+ispic);
			System.out.println("| filename-----"+filesystemname);
			System.out.println("| path-----"+saveDirectory);
			System.out.println("| p_code-----"+p_code);
			System.out.println("| tablename-----"+tablename);
			System.out.println("-------------------------------------------");
			
			
			JSONArray jsonArray  = new JSONArray();
			TourTicketService ts =new TourTicketService();
		
			//dao.insertfilelist(conn,filesystemname, originalfilename, saveDirectory);

			
			//
			JSONObject jo = new JSONObject();
			System.out.println(p_code);
			if (ispic.equals("firstpic")) {
				System.out.println("처음 파일업로드하시네요...");
			//	jsonArray=ts.tempfileInsertnSelect(tempdto);
				System.out.println(jsonArray);
			}else {
				System.out.println("처음이 아니시군요...");
			//	jsonArray=ts.tempfileUpdatenSelect(tempdto);
				System.out.println(jsonArray);
			}

			request.setAttribute("jsonObject", jsonArray);

			System.out.println(jsonArray);
					return "/partner/regist_item/ajax/minbakfileajax_2";
		}

	}
