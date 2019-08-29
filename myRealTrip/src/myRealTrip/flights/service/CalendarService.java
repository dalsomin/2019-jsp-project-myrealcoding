package myRealTrip.flights.service;

import java.util.Date;

import net.sf.json.JSONObject;

public class CalendarService {
	public JSONObject getCalendarInfo(int month, int year) {
		Date today = new Date();
		JSONObject obj = new JSONObject();
		int c_month = (month==0?today.getMonth()+1:month);
		int c_year = (year==0?today.getMonth()+1:year);
		
		
		obj.put("t_year", today.getYear()+1900);
		obj.put("t_month", today.getMonth()+1);
		obj.put("t_day", today.getDate());
		
		obj.put("c_month", c_month);
		obj.put("c_year", c_year);
		
		
		today.setMonth(c_month);
		today.setDate(0);
		
		obj.put("c_lastDay", today.getDate());
		
		
		int n_month = c_month+1;
		int n_year = c_year;
		if(n_month > 12){
			n_month = 1;
			n_year++;
		}
		
		today.setYear(n_year);
		today.setMonth(n_month);
		today.setDate(0);
		
		obj.put("n_month", n_month);
		obj.put("n_year", n_year);
		obj.put("n_lastDay", today.getDate());
		
		today.setYear(c_year-1900);
		today.setMonth(c_month-1);
		today.setDate(1);
		obj.put("c_firstweek", today.getDay());
		
		today.setYear(n_year-1900);
		today.setMonth(n_month-1);
		today.setDate(1);
		obj.put("n_firstweek", today.getDay());
		return obj;
	}
}
