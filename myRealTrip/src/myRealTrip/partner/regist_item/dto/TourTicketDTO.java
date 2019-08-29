package myRealTrip.partner.regist_item.dto;

public class TourTicketDTO {
	
	//PRODUCT (
		private String P_CODE;/* 상품코드 */
		private String P_NAME;/* 상품명 */
		private String P_TYPENAME;/* 상품분류명 */
		private int CITY_CODE;/* 도시코드 */
		private int P_PRICE; /* 최저가 */
		private int MEMBERID;/* 회원아이디 */
	
		private String p_pic;/*상품사진*/
		private String [] b_d_picture;/*상세사진*/
	//TOURTICKET (
		//private String	P_CODE; /* 상품코드 */
		private String	T_SUMMARY;/* 한줄요약 */
		private String	T_INTRODUCE; /* 여행소개 */
		private String	T_CATEGORY; /* 유형카테고리 */
		private String	T_SCALE;/* 여행규모 */
		private int	T_TIME;/* 예약가능시간 */
		private String	T_TRANS; /* 이동수단 */
		private String	T_TAG1;/* 상품태그1 */
		private String	T_TAG2;/* 상품태그2 */
		private String []	T_TAGS;/* 상품태그1 */
		private String	T_LANG;/* 언어명 */
		private String	T_SPOT;/* 만나는장소이름 */
		private String	T_LOCATION; /* 만나는장소위치 */
		private String	T_USEMETHOD ; /* 사용방법 */
		private String	T_CNR; /* 취소및환불규정 */
		private String	T_ETICKET;/* e티켓지원여부 */
		private String	T_PINCLUSION ;/* 가격포함(포함사항) */
		private String	T_TBURDEN;/* 여행자부담(불포함사항) */
		private String	T_EGUIDE; /* 필수안내(사용방법) */
		private String	T_TIMER; /* 소요시간*/
		private String	T_PROMPTLY ;/* 바로사용여부 */
		private String	T_HOUR; /* 만나는 시간 */
		private String	T_RCM;/* 시간 조율 */
		
//투어코스T_COURSE 
		private String TC_CODE;/* 투어코스코드 */
		private String [] TC_TITLE;/* 코스 제목 */
		private String [] TC_DETAIL; /* 코스 내용 */
		private String PCODE;/* 상품코드 */
		private String [] TC_TIME; /* 코스소요시간 */
		private String [] TC_PIC;
		private String [] TC_CATE; /* 코스카테고리 */
		
		
		
		/* 구체적 가격 설정 */
//		CREATE TABLE D_PRICE (
		private int	DP_CODE; /* 구가코드 */
	//	private String	PCODE;/* 상품코드 */
		private int []	DP_PEOPLE;/* 인원 */
		private int []	DP_ONE;/* 1인당가격 */
	//	private String PU_UNIT;/* 가격단위 */

		

/* 만나는 장소--MS_PIC */
private String MSP_CODE;
private String MSP_PICTURE;
//private String P_CODE;


/* 간단한 가격 설정 */
//CREATE TABLE S_PRICE (
	private int SP_CODE;/* 간가코드 */
	private int SP_MAXP ;/* 최대인원 */
	private int SP_MINP;/* 최소인원 */
	private int SP_ONE;/* 1인당가격 */
	//private String PCODE;/* 상품코드 */
	private String PU_UNIT_S;/* 가격단위 */
	private String [] PU_UNIT_M;/* 가격단위 */

	
	
		public String getP_pic() {
			return p_pic;
		}
		public void setP_pic(String p_pic) {
			this.p_pic = p_pic;
		}
		public String[] getB_d_picture() {
			return b_d_picture;
		}
		public void setB_d_picture(String[] b_d_picture) {
			this.b_d_picture = b_d_picture;
		}
		
		//
		public String getP_CODE() {
			return P_CODE;
		}
		public void setP_CODE(String p_CODE) {
			P_CODE = p_CODE;
		}
		public String getP_NAME() {
			return P_NAME;
		}
		public void setP_NAME(String p_NAME) {
			P_NAME = p_NAME;
		}
		public String getP_TYPENAME() {
			return P_TYPENAME;
		}
		public void setP_TYPENAME(String p_TYPENAME) {
			P_TYPENAME = p_TYPENAME;
		}
		public int getCITY_CODE() {
			return CITY_CODE;
		}
		public void setCITY_CODE(int cITY_CODE) {
			CITY_CODE = cITY_CODE;
		}
		public int getP_PRICE() {
			return P_PRICE;
		}
		public void setP_PRICE(int p_PRICE) {
			P_PRICE = p_PRICE;
		}
		public int getMEMBERID() {
			return MEMBERID;
		}
		public void setMEMBERID(int mEMBERID) {
			MEMBERID = mEMBERID;
		}
		public String getT_SUMMARY() {
			return T_SUMMARY;
		}
		public void setT_SUMMARY(String t_SUMMARY) {
			T_SUMMARY = t_SUMMARY;
		}
		public String getT_INTRODUCE() {
			return T_INTRODUCE;
		}
		public void setT_INTRODUCE(String t_INTRODUCE) {
			T_INTRODUCE = t_INTRODUCE;
		}
		public String getT_CATEGORY() {
			return T_CATEGORY;
		}
		public void setT_CATEGORY(String t_CATEGORY) {
			T_CATEGORY = t_CATEGORY;
		}
		public String getT_SCALE() {
			return T_SCALE;
		}
		public void setT_SCALE(String t_SCALE) {
			T_SCALE = t_SCALE;
		}
		public int getT_TIME() {
			return T_TIME;
		}
		public void setT_TIME(int t_TIME) {
			T_TIME = t_TIME;
		}
		public String getT_TRANS() {
			return T_TRANS;
		}
		public void setT_TRANS(String t_TRANS) {
			T_TRANS = t_TRANS;
		}
		public String getT_TAG1() {
			return T_TAG1;
		}
		public void setT_TAG1(String t_TAG1) {
			T_TAG1 = t_TAG1;
		}
		public String getT_TAG2() {
			return T_TAG2;
		}
		public void setT_TAG2(String t_TAG2) {
			T_TAG2 = t_TAG2;
		}
		public String getT_LANG() {
			return T_LANG;
		}
		public void setT_LANG(String t_LANG) {
			T_LANG = t_LANG;
		}
		public String getT_SPOT() {
			return T_SPOT;
		}
		public void setT_SPOT(String t_SPOT) {
			T_SPOT = t_SPOT;
		}
		public String getT_LOCATION() {
			return T_LOCATION;
		}
		public void setT_LOCATION(String t_LOCATION) {
			T_LOCATION = t_LOCATION;
		}
		public String getT_USEMETHOD() {
			return T_USEMETHOD;
		}
		public void setT_USEMETHOD(String t_USEMETHOD) {
			T_USEMETHOD = t_USEMETHOD;
		}
		public String getT_CNR() {
			return T_CNR;
		}
		public void setT_CNR(String t_CNR) {
			T_CNR = t_CNR;
		}
		public String getT_ETICKET() {
			return T_ETICKET;
		}
		public void setT_ETICKET(String t_ETICKET) {
			T_ETICKET = t_ETICKET;
		}
		public String getT_PINCLUSION() {
			return T_PINCLUSION;
		}
		public void setT_PINCLUSION(String t_PINCLUSION) {
			T_PINCLUSION = t_PINCLUSION;
		}
		public String getT_TBURDEN() {
			return T_TBURDEN;
		}
		public void setT_TBURDEN(String t_TBURDEN) {
			T_TBURDEN = t_TBURDEN;
		}
		public String getT_EGUIDE() {
			return T_EGUIDE;
		}
		public void setT_EGUIDE(String t_EGUIDE) {
			T_EGUIDE = t_EGUIDE;
		}
		public String getT_TIMER() {
			return T_TIMER;
		}
		public void setT_TIMER(String t_TIMER) {
			T_TIMER = t_TIMER;
		}
		public String getT_PROMPTLY() {
			return T_PROMPTLY;
		}
		public void setT_PROMPTLY(String t_PROMPTLY) {
			T_PROMPTLY = t_PROMPTLY;
		}
		public String getT_HOUR() {
			return T_HOUR;
		}
		public void setT_HOUR(String t_HOUR) {
			T_HOUR = t_HOUR;
		}
		public String getT_RCM() {
			return T_RCM;
		}
		public void setT_RCM(String t_RCM) {
			T_RCM = t_RCM;
		}
		public String getTC_CODE() {
			return TC_CODE;
		}
		public void setTC_CODE(String tC_CODE) {
			TC_CODE = tC_CODE;
		}

		public String getPCODE() {
			return PCODE;
		}
		public void setPCODE(String pCODE) {
			PCODE = pCODE;
		}
	
		
		public String[] getTC_PIC() {
			return TC_PIC;
		}
		public void setTC_PIC(String[] tC_PIC) {
			TC_PIC = tC_PIC;
		}
		public String[] getTC_TITLE() {
			return TC_TITLE;
		}
		public void setTC_TITLE(String[] tC_TITLE) {
			TC_TITLE = tC_TITLE;
		}
		public String[] getTC_DETAIL() {
			return TC_DETAIL;
		}
		public void setTC_DETAIL(String[] tC_DETAIL) {
			TC_DETAIL = tC_DETAIL;
		}
		public String[] getTC_CATE() {
			return TC_CATE;
		}
		public void setTC_CATE(String[] tC_CATE) {
			TC_CATE = tC_CATE;
		}
		public String[] getTC_TIME() {
			return TC_TIME;
		}
		public void setTC_TIME(String[] tC_TIME) {
			TC_TIME = tC_TIME;
		}
		public int getDP_CODE() {
			return DP_CODE;
		}
		public void setDP_CODE(int dP_CODE) {
			DP_CODE = dP_CODE;
		}

		public int[] getDP_PEOPLE() {
			return DP_PEOPLE;
		}
		public void setDP_PEOPLE(int[] dP_PEOPLE) {
			DP_PEOPLE = dP_PEOPLE;
		}
		public int[] getDP_ONE() {
			return DP_ONE;
		}
		public void setDP_ONE(int[] dP_ONE) {
			DP_ONE = dP_ONE;
		}

		public int getSP_CODE() {
			return SP_CODE;
		}
		public void setSP_CODE(int sP_CODE) {
			SP_CODE = sP_CODE;
		}
		public int getSP_MAXP() {
			return SP_MAXP;
		}
		public void setSP_MAXP(int sP_MAXP) {
			SP_MAXP = sP_MAXP;
		}
		public int getSP_MINP() {
			return SP_MINP;
		}
		public void setSP_MINP(int sP_MINP) {
			SP_MINP = sP_MINP;
		}
		public int getSP_ONE() {
			return SP_ONE;
		}
		public void setSP_ONE(int sP_ONE) {
			SP_ONE = sP_ONE;
		}
		public String[] getT_TAGS() {
			return T_TAGS;
		}
		public void setT_TAGS(String[] t_TAGS) {
			T_TAGS = t_TAGS;
		}
		public String getMSP_CODE() {
			return MSP_CODE;
		}
		public void setMSP_CODE(String mSP_CODE) {
			MSP_CODE = mSP_CODE;
		}
		public String getMSP_PICTURE() {
			return MSP_PICTURE;
		}
		public void setMSP_PICTURE(String mSP_PICTURE) {
			MSP_PICTURE = mSP_PICTURE;
		}
		public String getPU_UNIT_S() {
			return PU_UNIT_S;
		}
		public void setPU_UNIT_S(String pU_UNIT_S) {
			PU_UNIT_S = pU_UNIT_S;
		}
		public String[] getPU_UNIT_M() {
			return PU_UNIT_M;
		}
		public void setPU_UNIT_M(String[] pU_UNIT_M) {
			PU_UNIT_M = pU_UNIT_M;
		}
	
		//
		
		
}
