package myRealTrip.partner.dto;

import java.sql.Date;
import java.util.Map;

public class Regist_partnerDTO {

	private int memberId;            
	private String p_type;        
	private String member_name;      
	private String partnerPicture; 
	private String keyword1;         
	private String keyword2;         
	private String introduce;        
	private String localPhoneNumber; 
	private String EmergencyNumber;  
	private String kakaoID;          
	private Date partner_regdate;
	//
	private String pnum_local;
	private String pnum_emer;
	private String localnum;
	private String emernum;
	//
	private String basicmessage;     
	private String account_yn;       
	private String interview_yn;     
	private String quiz_yn;
	
	private String backgroundimg;
	
	public Regist_partnerDTO() {
		
	}
	
	







	public Regist_partnerDTO(int memberId, String p_type, String member_name, String partnerPicture, String keyword1,
			String keyword2, String introduce, String localPhoneNumber, String emergencyNumber, String kakaoID) {

		this.partnerPicture = partnerPicture;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.introduce = introduce;
		this.localPhoneNumber = localPhoneNumber;
		this.EmergencyNumber = emergencyNumber;
		this.kakaoID = kakaoID;
	}









	public String getBackgroundimg() {
		return backgroundimg;
	}









	public void setBackgroundimg(String backgroundimg) {
		this.backgroundimg = backgroundimg;
	}









	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getPartnerPicture() {
		return partnerPicture;
	}
	public void setPartnerPicture(String partnerPicture) {
		this.partnerPicture = partnerPicture;
	}
	public String getKeyword1() {
		return keyword1;
	}
	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}
	public String getKeyword2() {
		return keyword2;
	}
	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getLocalPhoneNumber() {
		return localPhoneNumber;
	}
	public void setLocalPhoneNumber(String localPhoneNumber) {
		this.localPhoneNumber = localPhoneNumber;
	}
	public String getEmergencyNumber() {
		return EmergencyNumber;
	}
	public void setEmergencyNumber(String emergencyNumber) {
		EmergencyNumber = emergencyNumber;
	}
	public String getKakaoID() {
		return kakaoID;
	}
	public void setKakaoID(String kakaoID) {
		this.kakaoID = kakaoID;
	}
	public Date getPartner_regdate() {
		return partner_regdate;
	}
	public void setPartner_regdate(Date partner_regdate) {
		this.partner_regdate = partner_regdate;
	}
	public String getPnum_local() {
		return pnum_local;
	}
	public void setPnum_local(String pnum_local) {
		this.pnum_local = pnum_local;
	}
	public String getPnum_emer() {
		return pnum_emer;
	}
	public void setPnum_emer(String pnum_emer) {
		this.pnum_emer = pnum_emer;
	}
	public String getLocalnum() {
		return localnum;
	}
	public void setLocalnum(String localnum) {
		this.localnum = localnum;
	}
	public String getEmernum() {
		return emernum;
	}
	public void setEmernum(String emernum) {
		this.emernum = emernum;
	}
	public String getBasicmessage() {
		return basicmessage;
	}
	public void setBasicmessage(String basicmessage) {
		this.basicmessage = basicmessage;
	}
	public String getAccount_yn() {
		return account_yn;
	}
	public void setAccount_yn(String account_yn) {
		this.account_yn = account_yn;
	}
	public String getInterview_yn() {
		return interview_yn;
	}
	public void setInterview_yn(String interview_yn) {
		this.interview_yn = interview_yn;
	}
	public String getQuiz_yn() {
		return quiz_yn;
	}
	public void setQuiz_yn(String quiz_yn) {
		this.quiz_yn = quiz_yn;
	}          
	
	
	}
