package myRealTrip.partner.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myRealTrip.command.CommandHandler;
import myRealTrip.partner.service.Item_ListService;

public class ManageItemLIst_IHandler implements CommandHandler{

	private static final String FORM_VIEW ="/partner/manage_itemlist";
	private Item_ListService listservice = new Item_ListService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//request.setAttribute("itemlist", String itemlist);
		return FORM_VIEW;
	}
}
