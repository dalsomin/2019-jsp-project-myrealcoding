package myRealTrip.regist_member.dto;

import java.util.Date;
import java.util.Map;

public class RegistMemberDTO {


   private int memberId ;
   private String member_name ;
   private String member_pwd ;
   private String member_email;
   private String member_tel;
   private Date member_regdate;
   private int point;
   private String facebook;
   private String naver;
   private String auth_e;
   private String auth_p;
   private String partner_yn;
   

	
	
	//생성자
	public RegistMemberDTO() {
	}



	public int getMemberId() {
		return memberId;
	}



	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}



	public String getMember_name() {
		return member_name;
	}



	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



	public String getMember_pwd() {
		return member_pwd;
	}



	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}



	public String getMember_email() {
		return member_email;
	}



	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}



	public String getMember_tel() {
		return member_tel;
	}



	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}



	public Date getMember_regdate() {
		return member_regdate;
	}



	public void setMember_regdate(Date member_regdate) {
		this.member_regdate = member_regdate;
	}




	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



	public String getFacebook() {
		return facebook;
	}



	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}



	public String getNaver() {
		return naver;
	}



	public void setNaver(String naver) {
		this.naver = naver;
	}



	public String getAuth_e() {
		return auth_e;
	}



	public void setAuth_e(String auth_e) {
		this.auth_e = auth_e;
	}



	public String getAuth_p() {
		return auth_p;
	}



	public void setAuth_p(String auth_p) {
		this.auth_p = auth_p;
	}



	public String getPartner_yn() {
		return partner_yn;
	}



	public void setPartner_yn(String partner_yn) {
		this.partner_yn = partner_yn;
	}



	
	


}