package myRealTrip.flights.book.model;

import java.util.Date;

public class FlightListDTO {
	private int fbookcode;
	private Date bookingdate;
	private String fa_name;
	private String dep_cname;
	private String arr_cname;
	private String ft_deptime;
	private String ft_arrtime;
	
	private String bookstatus;
	private String ff_confirm;
	
	
	public Date getBookingdate() {
		return bookingdate;
	}

	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}

	public String getFa_name() {
		return fa_name;
	}

	public void setFa_name(String fa_name) {
		this.fa_name = fa_name;
	}

	public String getDep_cname() {
		return dep_cname;
	}

	public void setDep_cname(String dep_cname) {
		this.dep_cname = dep_cname;
	}

	public String getArr_cname() {
		return arr_cname;
	}

	public void setArr_cname(String arr_cname) {
		this.arr_cname = arr_cname;
	}

	public String getFt_deptime() {
		return ft_deptime;
	}

	public void setFt_deptime(String ft_deptime) {
		this.ft_deptime = ft_deptime;
	}

	public String getFt_arrtime() {
		return ft_arrtime;
	}

	public void setFt_arrtime(String ft_arrtime) {
		this.ft_arrtime = ft_arrtime;
	}

	public String getBookstatus() {
		return bookstatus;
	}

	public void setBookstatus(String bookstatus) {
		this.bookstatus = bookstatus;
	}

	public String getFf_confirm() {
		return ff_confirm;
	}

	public void setFf_confirm(String ff_confirm) {
		this.ff_confirm = ff_confirm;
	}

	public int getFbookcode() {
		return fbookcode;
	}

	public void setFbookcode(int fbookcode) {
		this.fbookcode = fbookcode;
	}
}
