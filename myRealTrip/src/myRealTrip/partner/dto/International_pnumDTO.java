package myRealTrip.partner.dto;

public class International_pnumDTO {

	private int pk;
	private String country_name;  ///Country_name
	private String pnum;
	
	
	
	
	
	
	public International_pnumDTO() {

	}
	public International_pnumDTO(String string) {
		
	}
	public International_pnumDTO(String country_name, String pnum) {
		super();
		this.country_name = country_name;
		this.pnum = pnum;
	}
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	
	
}
