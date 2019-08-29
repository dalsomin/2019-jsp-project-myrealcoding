package myRealTrip.support.model;

import java.util.Date;

public class QCommentDTO {
	//private int aq_code;
	private int cq_code;
	private String qa_content;
	private String qa_date;  //
	private String qa_writer; // cq_name 저장 
	private String file_name;
	//private String cq_name;
	// 이메일이 아니라 성함을 가져와야 한다...
	public QCommentDTO() {
		super();
	}
	public int getCq_code() {
		return cq_code;
	}
	public void setCq_code(int cq_code) {
		this.cq_code = cq_code;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public String getQa_date() {
		return qa_date;
	}
	public void setQa_date(String qa_date) {
		this.qa_date = qa_date;
	}
	public String getQa_writer() {
		return qa_writer;
	}
	public void setQa_writer(String qa_writer) {
		this.qa_writer = qa_writer;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	
	
	
	
	
}
