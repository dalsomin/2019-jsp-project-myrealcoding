package myRealTrip.partner.regist_item.dto;

public class MinbakDTO {
	
	
//**product
	private String p_code; /* 상품코드 */
	private String p_name ;/* 상품명 */
	private String p_typename; /* 상품분류명 */
	private int city_code;  /* 도시코드 */
	private int p_price;/* 최저가 */

//**p_pic
	//private String p_code;/*상품코드*/
	private String []  p_pic;/*상품사진*/

//**p_addpic
	//private int b_d_code; /*시퀀스 상품상세사진코드*/
	private String [] b_d_picture;/*상세사진*/
	//private String p_code;
	
//**bnb
	//private String p_code; /* 상품코드 */
	private int memberId ; /* 회원ID */
	private int b_atime; /* 예약가능시간 */
	private String b_hcall; /* 해피콜유무 */
	private String b_pinclusion; /* 가격포함(포함사항) */
	private String b_tburden; /* 여행자부담(불포함사항) */
	private String b_eguide; /* 필수안내(사용방법) */
	
//**bnb_addchoice
	// b_ac_code;  /* 시퀀스!! 선택코드 */
	//pcode VARCHAR2(30), /* 상품코드 */
	private int [] b_a_code; /* 추가예약정보코드 */

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_typename() {
		return p_typename;
	}

	public void setP_typename(String p_typename) {
		this.p_typename = p_typename;
	}

	public int getCity_code() {
		return city_code;
	}

	public void setCity_code(int city_code) {
		this.city_code = city_code;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String[] getP_pic() {
		return p_pic;
	}

	public void setP_pic(String[] p_pic) {
		this.p_pic = p_pic;
	}

	public String[] getB_d_picture() {
		return b_d_picture;
	}

	public void setB_d_picture(String[] b_d_picture) {
		this.b_d_picture = b_d_picture;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getB_atime() {
		return b_atime;
	}

	public void setB_atime(int b_atime) {
		this.b_atime = b_atime;
	}

	public String getB_hcall() {
		return b_hcall;
	}

	public void setB_hcall(String b_hcall) {
		this.b_hcall = b_hcall;
	}

	public String getB_pinclusion() {
		return b_pinclusion;
	}

	public void setB_pinclusion(String b_pinclusion) {
		this.b_pinclusion = b_pinclusion;
	}

	public String getB_tburden() {
		return b_tburden;
	}

	public void setB_tburden(String b_tburden) {
		this.b_tburden = b_tburden;
	}

	public String getB_eguide() {
		return b_eguide;
	}

	public void setB_eguide(String b_eguide) {
		this.b_eguide = b_eguide;
	}

	public int[] getB_a_code() {
		return b_a_code;
	}

	public void setB_a_code(int[] b_a_code) {
		this.b_a_code = b_a_code;
	}
	
	//b_addinfo 
	//b_a_code//추가예약정보코드
	//b_a_detail//추가예약정보내용

	
	
	
	
	
}
