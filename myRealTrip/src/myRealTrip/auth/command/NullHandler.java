package myRealTrip.auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//404 에러를 응답으로 전송하는 핸들러 클래스(모델, 일하는 객체)
public class NullHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.sendError(HttpServletResponse.SC_NOT_FOUND); // SC_NOT_FOUND : 요청한 자원을 찾을 수 없다는 의미 - 404 오류
		//404 에러 메시지로 응답
		return null;
	}

	
	
}
