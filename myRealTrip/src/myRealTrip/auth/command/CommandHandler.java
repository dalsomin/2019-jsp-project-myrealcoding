package myRealTrip.auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//p.597
public interface CommandHandler {

	public String process(HttpServletRequest req, HttpServletResponse res)throws Exception;
	
}
