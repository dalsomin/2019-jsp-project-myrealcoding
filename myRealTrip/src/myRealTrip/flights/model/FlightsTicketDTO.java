package myRealTrip.flights.model;

import java.util.Date;

public class FlightsTicketDTO {
	private int fa_code; // 항공사 코드
	private String fa_name; // 항공사 이름
	private String ft_apcode; // 항공기 코드
	private String aa_name; // 항공동맹 이름
	private Date ft_deptime; // 출발 시간
	private Date ft_arrtime; // 도착시간
	
	private String ft_flytime; // 걸리는 시간
	private String ft_pstype; // 승객 유형
	private String ap_code; // 출발 공항
	private String dept_name; // 출발 공항 이름
	
	private String ap_code2; // 도착 공항
	private String arr_name; // 도착 공항 이름
	
	private Date v_arrtime; // 경유지 도착 시간
	private Date v_deptime; // 경유지 출발 시간
	private String vap_code; // 경유지 항공 코드
	private String vft_code; // 경유지 항공기코드
	
	private String baggage;
	
	private int ff_fare; // 항공요금
	private int ff_fuel; // 유류할증료
	private int ff_tax; // 제세공과금
	private int ff_charge; // 발권수수료
	private String ff_confirm; // 요금확정여부
	private int ff_sum; // 총요금
	
	private String fa_logo; // 항공사 로고
	
	
	
	public String getFa_logo() {
		return fa_logo;
	}
	public void setFa_logo(String fa_logo) {
		this.fa_logo = fa_logo;
	}
	public int getFf_fare() {
		return ff_fare;
	}
	public void setFf_fare(int ff_fare) {
		this.ff_fare = ff_fare;
	}
	public int getFf_fuel() {
		return ff_fuel;
	}
	public void setFf_fuel(int ff_fuel) {
		this.ff_fuel = ff_fuel;
	}
	public int getFf_tax() {
		return ff_tax;
	}
	public void setFf_tax(int ff_tax) {
		this.ff_tax = ff_tax;
	}
	public int getFf_charge() {
		return ff_charge;
	}
	public void setFf_charge(int ff_charge) {
		this.ff_charge = ff_charge;
	}
	public String getFf_confirm() {
		return ff_confirm;
	}
	public void setFf_confirm(String ff_confirm) {
		this.ff_confirm = ff_confirm;
	}
	public int getFf_sum() {
		return ff_sum;
	}
	public void setFf_sum(int ff_sum) {
		this.ff_sum = ff_sum;
	}
	public String getBaggage() {
		return baggage;
	}
	public void setBaggage(String baggage) {
		this.baggage = baggage;
	}
	public int getFa_code() {
		return fa_code;
	}
	public void setFa_code(int fa_code) {
		this.fa_code = fa_code;
	}
	public String getFa_name() {
		return fa_name;
	}
	public void setFa_name(String fa_name) {
		this.fa_name = fa_name;
	}
	public String getFt_apcode() {
		return ft_apcode;
	}
	public void setFt_apcode(String ft_apcode) {
		this.ft_apcode = ft_apcode;
	}
	public String getAa_name() {
		return aa_name;
	}
	public void setAa_name(String aa_name) {
		this.aa_name = aa_name;
	}
	public Date getFt_deptime() {
		return ft_deptime;
	}
	public void setFt_deptime(Date ft_deptime) {
		this.ft_deptime = ft_deptime;
	}
	public Date getFt_arrtime() {
		return ft_arrtime;
	}
	public void setFt_arrtime(Date ft_arrtime) {
		this.ft_arrtime = ft_arrtime;
	}
	public String getFt_flytime() {
		return ft_flytime;
	}
	public void setFt_flytime(String ft_flytime) {
		this.ft_flytime = ft_flytime;
	}
	public String getFt_pstype() {
		return ft_pstype;
	}
	public void setFt_pstype(String ft_pstype) {
		this.ft_pstype = ft_pstype;
	}
	public String getAp_code() {
		return ap_code;
	}
	public void setAp_code(String ap_code) {
		this.ap_code = ap_code;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getAp_code2() {
		return ap_code2;
	}
	public void setAp_code2(String ap_code2) {
		this.ap_code2 = ap_code2;
	}
	public String getArr_name() {
		return arr_name;
	}
	public void setArr_name(String arr_name) {
		this.arr_name = arr_name;
	}
	public Date getV_arrtime() {
		return v_arrtime;
	}
	public void setV_arrtime(Date v_arrtime) {
		this.v_arrtime = v_arrtime;
	}
	public Date getV_deptime() {
		return v_deptime;
	}
	public void setV_deptime(Date v_deptime) {
		this.v_deptime = v_deptime;
	}
	public String getVap_code() {
		return vap_code;
	}
	public void setVap_code(String vap_code) {
		this.vap_code = vap_code;
	}
	public String getVft_code() {
		return vft_code;
	}
	public void setVft_code(String vft_code) {
		this.vft_code = vft_code;
	}
}
