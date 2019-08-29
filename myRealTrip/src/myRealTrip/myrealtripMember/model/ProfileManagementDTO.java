package myRealTrip.myrealtripMember.model;


public class ProfileManagementDTO {

	private String ra_name;
	private String ra_bank;
	private Long ra_sno;

	private int cp_code;
	private String cp_name;
	private int cp_price;



	public ProfileManagementDTO() {}


	public String getRa_name() {
		return "(" + ra_name + ")";
	}


	public void setRa_name(String ra_name) {
		this.ra_name = ra_name;
	}


	public String getRa_bank() {
		return ra_bank;
	}


	public void setRa_bank(String ra_bank) {
		this.ra_bank = ra_bank;
	}


	public Long getRa_sno() {
		return ra_sno;
	}


	public void setRa_sno(Long ra_sno) {
		this.ra_sno = ra_sno;
	}


	public int getCp_code() {
		return cp_code;
	}


	public void setCp_code(int cp_code) {
		this.cp_code = cp_code;
	}


	public String getCp_name() {
		return cp_name;
	}


	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}


	public int getCp_price() {
		return cp_price;
	}


	public void setCp_price(int cp_price) {
		this.cp_price = cp_price;
	}




}