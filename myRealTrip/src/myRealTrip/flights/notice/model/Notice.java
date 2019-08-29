package myRealTrip.flights.notice.model;

import java.util.Date;

public class Notice {

	 private int num;
	 private String subject;
	 private Date regdate; 
	 private int cnt; 
	 private String content;
	 private String hot;
	 //
	 private int no;
	 //
	 private int prev_num;
	 private int next_num;
	 private String prev_subject;
	 private Date prev_regdate;	 
	 private String next_subject;
	 private Date next_regdate;
	 
	
	//
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHot() {
		return hot;
	}
	public void setHot(String hot) {
		this.hot = hot;
	}
	//
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getPrev_num() {
		return prev_num;
	}
	public void setPrev_num(int prev_num) {
		this.prev_num = prev_num;
	}
	public int getNext_num() {
		return next_num;
	}
	public void setNext_num(int next_num) {
		this.next_num = next_num;
	}
	// 
	public String getPrev_subject() {
		return prev_subject;
	}
	public void setPrev_subject(String prev_subject) {
		this.prev_subject = prev_subject;
	}
	public String getNext_subject() {
		return next_subject;
	}
	public void setNext_subject(String next_subject) {
		this.next_subject = next_subject;
	}
	public Date getPrev_regdate() {
		return prev_regdate;
	}
	public void setPrev_regdate(Date prev_regdate) {
		this.prev_regdate = prev_regdate;
	}
	public Date getNext_regdate() {
		return next_regdate;
	}
	public void setNext_regdate(Date next_regdate) {
		this.next_regdate = next_regdate;
	}
	
}
