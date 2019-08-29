package myRealTrip.airtel.dto;

import java.util.Date;

public class AirtelListDTO {

	private int no;
	private String p_code;
	private Date a_period_start;
	private Date a_period_end;
	private String p_name;
	private String city_code;
	private String pic;
	private String typename;
	private int count;
	private double score;
	private String p_price;

	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public Date getA_period_start() {
		return a_period_start;
	}
	public void setA_period_start(Date a_period_start) {
		this.a_period_start = a_period_start;
	}
	public Date getA_period_end() {
		return a_period_end;
	}
	public void setA_period_end(Date a_period_end) {
		this.a_period_end = a_period_end;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	
	public AirtelListDTO() {
		super();
	}
	
	
	
	
}
