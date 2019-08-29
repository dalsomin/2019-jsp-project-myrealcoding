package myRealTrip.support.model;

public class BFeedbackDTO {

	private int bf_code;
	private String bf_content;
	private String bf_date;
	private String[] bf_select;// 배열로 넘기기 
	//
	public BFeedbackDTO() {
		super();
	}
	public int getBf_code() {
		return bf_code;
	}
	public void setBf_code(int bf_code) {
		this.bf_code = bf_code;
	}
	public String getBf_content() {
		return bf_content;
	}
	public void setBf_content(String bf_content) {
		this.bf_content = bf_content;
	}
	public String getBf_date() {
		return bf_date;
	}
	public void setBf_date(String bf_date) {
		this.bf_date = bf_date;
	}
	public String[] getBf_select() {
		return bf_select;
	}
	public void setBf_select(String[] bf_select ) {
		this.bf_select = bf_select;
	}
	
	
	
	
	
}
