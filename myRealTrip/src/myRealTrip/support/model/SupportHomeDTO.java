package myRealTrip.support.model;

import java.util.Date;

public class SupportHomeDTO {
	
	//필드
	private String fs_answer;
	private int fs_code;
	private int acd_code;
	private int ac_code;
	private String  fs_title;
	private Date fs_date;
	private String fs_feedback;
	private int R ;
	private int num;
	private String acd_name;
	private String ac_name;
	//private int no;
	
	
	//생성자 
	public SupportHomeDTO() {}
	public SupportHomeDTO(String fs_answer, int fs_code, int acd_code, int ac_code, String fs_title, Date fs_date,
			String fs_feedback, String acd_name) {
		super();
		this.fs_answer = fs_answer;
		this.fs_code = fs_code;
		this.acd_code = acd_code;
		this.ac_code = ac_code;
		this.fs_title = fs_title;
		this.fs_date = fs_date;
		this.fs_feedback = fs_feedback;
		this.acd_name = acd_name;
		
	}
	public SupportHomeDTO(String fs_answer, int fs_code, int acd_code, int ac_code, String fs_title, Date fs_date,
			String fs_feedback) {
		super();
		this.fs_answer = fs_answer;
		this.fs_code = fs_code;
		this.acd_code = acd_code;
		this.ac_code = ac_code;
		this.fs_title = fs_title;
		this.fs_date = fs_date;
		this.fs_feedback = fs_feedback;
		
		
	}


	//getter setter 
	public String getFs_answer() {
		return fs_answer;
	}


	public void setFs_answer(String fs_answer) {
		this.fs_answer = fs_answer;
	}


	public int getFs_code() {
		return fs_code;
	}


	public void setFs_code(int fs_code) {
		this.fs_code = fs_code;
	}


	public int getAcd_code() {
		return acd_code;
	}


	public void setAcd_code(int acd_code) {
		this.acd_code = acd_code;
	}


	public int getAc_code() {
		return ac_code;
	}


	public void setAc_code(int ac_code) {
		this.ac_code = ac_code;
	}


	public String getFs_title() {
		return fs_title;
	}


	public void setFs_title(String fs_title) {
		this.fs_title = fs_title;
	}


	public Date getFs_date() {
		return fs_date;
	}


	public void setFs_date(Date fs_date) {
		this.fs_date = fs_date;
	}


	public String getFs_feedback() {
		return fs_feedback;
	}


	public void setFs_feedback(String fs_feedback) {
		this.fs_feedback = fs_feedback;
	}
	public int getR() {
		return R;
	}
	public void setR(int r) {
		R = r;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getAcd_name() {
		return acd_name;
	}
	public void setAcd_name(String ac_name) {
		this.acd_name = ac_name;
	}
	public String getAc_name() {
		return ac_name;
	}
	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}
	


}

