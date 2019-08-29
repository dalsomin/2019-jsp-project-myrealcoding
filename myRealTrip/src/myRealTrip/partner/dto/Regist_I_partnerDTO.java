package myRealTrip.partner.dto;

import java.sql.Date;
import java.util.Map;

public class Regist_I_partnerDTO {

	private String memberID;
	private String isVisa;
	private String pliveTerm;
	private String fliveTerm;
	private Date ipartner_regdate;
	private String docu_Visa;
	private String docu_Idc ;
	private String idriver;  
    private String docu_icar;
    private int cnt;
    
    
    
	public Regist_I_partnerDTO() {

	}

	public Regist_I_partnerDTO(String memberID, String isVisa, String pliveTerm, String fliveTerm,
			Date ipartner_regdate) {
		super();
		this.memberID = memberID;
		this.isVisa = isVisa;
		this.pliveTerm = pliveTerm;
		this.fliveTerm = fliveTerm;
		this.ipartner_regdate = ipartner_regdate;
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}

	public String getIsVisa() {
		return isVisa;
	}

	public void setIsVisa(String isVisa) {
		this.isVisa = isVisa;
	}

	public String getPliveTerm() {
		return pliveTerm;
	}

	public void setPliveTerm(String pliveTerm) {
		this.pliveTerm = pliveTerm;
	}

	public String getFliveTerm() {
		return fliveTerm;
	}

	public void setFliveTerm(String fliveTerm) {
		this.fliveTerm = fliveTerm;
	}

	public Date getIpartner_regdate() {
		return ipartner_regdate;
	}

	public void setIpartner_regdate(Date ipartner_regdate) {
		this.ipartner_regdate = ipartner_regdate;
	}

	public String getDocu_Visa() {
		return docu_Visa;
	}

	public void setDocu_Visa(String docu_Visa) {
		this.docu_Visa = docu_Visa;
	}

	public String getDocu_Idc() {
		return docu_Idc;
	}

	public void setDocu_Idc(String docu_Idc) {
		this.docu_Idc = docu_Idc;
	}

	public String getIdriver() {
		return idriver;
	}

	public void setIdriver(String idriver) {
		this.idriver = idriver;
	}

	public String getDocu_icar() {
		return docu_icar;
	}

	public void setDocu_icar(String docu_icar) {
		this.docu_icar = docu_icar;
	}




	
    
    
	
    
    
	}
