package myRealTrip.auth.model;

import java.sql.Clob;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Member {

	private int memberId;
	private String member_name;
	private String member_pwd;
	private String member_email;
	private String member_tel;
	private Date member_regdate;
	private int point;
	private String facebook;
	private String naver;
	private String auth_e;
	private String auth_p;
	private String member_pic;
	private String partner_yn;
	private Date moddate;


	public Member() {}



	public Member(int memberId, String member_name, String member_pwd, String member_email, String member_tel,
			Date member_regdate, int point, String facebook, String naver, String auth_e, String auth_p,
			String member_pic, String partner_yn, Date moddate) {
		super();
		this.memberId = memberId;
		this.member_name = member_name;
		this.member_pwd = member_pwd;
		this.member_email = member_email;
		this.member_tel = member_tel;
		this.member_regdate = member_regdate;
		this.point = point;
		this.facebook = facebook;
		this.naver = naver;
		this.auth_e = auth_e;
		this.auth_p = auth_p;
		this.member_pic = member_pic;
		this.partner_yn = partner_yn;
		this.moddate = moddate;
	}




	public Member(String member_email, String member_pwd) {
		this.member_email = member_email;
		this.member_pwd = member_pwd;
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
		return this.member_pwd;
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


	public boolean matchPassword(String pwd) {
		return member_pwd.equals(pwd);
	}

	public void changePassword(String newPwd) {
		this.member_pwd = newPwd;
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


	
	public String getMember_pic() {
		return member_pic;
	}



	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}

	

	public String getPartner_yn() {
		return partner_yn;
	}


	public void setPartner_yn(String partner_yn) {
		this.partner_yn = partner_yn;
	}

	
	public Date getModdate() {
		
		return moddate;
	}


	public void setModdate(Date moddate) {
		this.moddate = moddate;
	}



	public String replaceStar(){  
		String starPassword = "";
		char[] charList = this.member_pwd.toCharArray();
		for(int i =0; i< this.member_pwd.length(); i++){
			charList[i]='*';
		}
		starPassword = new String(charList);
		return starPassword;
	}
	
	public String emailPre() {
		String email = this.member_email;
		return email.substring(0, email.indexOf("@"));
	}
	
	public String emailSub() {
		String email = this.member_email;
		return email.substring(email.indexOf("@")+1);
	}


}