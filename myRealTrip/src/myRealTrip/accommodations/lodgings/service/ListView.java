package myRealTrip.accommodations.lodgings.service;

import java.util.List;

import myRealTrip.accommodations.lodgings.dto.ListDTO;

public class ListView {
	
	private int msgCountPerPage;
	private int currentPageNumber;

	private int msgTotalCount;
	private int pageTotalCount;	
	
	private int pageBlockStart;
	private int pageBlockEnd;
	
	private int firstRow;
	private int endRow;
	//
	private List<ListDTO> lodgingsList;	//selectList 결과물
	
	
	public ListView(int msgCountPerPage, int currentPageNumber, int msgTotalCount,  
			int firstRow, int endRow, List<ListDTO> lodgingsList) {
		super();
		this.msgCountPerPage = msgCountPerPage;
		this.currentPageNumber = currentPageNumber;
		this.msgTotalCount = msgTotalCount;
		this.firstRow = firstRow;
		this.endRow = endRow;
		this.lodgingsList = lodgingsList;
		
		calculatePageTotalCount();
		calculatePageBlockStart();
		calculatePageBlockEnd();
	}
	
	//페이지 개수 계산 함수
	private void calculatePageTotalCount() {
		if (msgTotalCount == 0) {
			pageTotalCount = 0;
		}
		else {
			pageTotalCount = msgTotalCount / msgCountPerPage;
			if (msgTotalCount % msgCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}
	
	//pageblock 계산
	private int calculatePageBlockStart() {	
		if(pageTotalCount<5) {
			pageBlockStart=1;
		}else {			
			if(currentPageNumber-2<=0) {
				pageBlockStart = 1;
			}else if(currentPageNumber+2>pageTotalCount) {
				pageBlockStart=pageTotalCount-4;
			}else {
				pageBlockStart = currentPageNumber-2;
			}
		}
		return pageBlockStart;
	}
	
	private int calculatePageBlockEnd() {
		if(pageTotalCount<5) {
			pageBlockEnd= pageTotalCount;
		}else {
			if(currentPageNumber-2 <= 0) {
				pageBlockEnd=5;
			}else if(currentPageNumber+2>pageTotalCount) {
				pageBlockEnd = pageTotalCount;
			}else {
				pageBlockEnd = currentPageNumber+2;
			}
		}
		return pageBlockEnd;
	}
	
	

	//getter, setter
	public int getMsgCountPerPage() {
		return msgCountPerPage;
	}

	public void setMsgCountPerPage(int msgCountPerPage) {
		this.msgCountPerPage = msgCountPerPage;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public int getMsgTotalCount() {
		return msgTotalCount;
	}

	public void setMsgTotalCount(int msgTotalCount) {
		this.msgTotalCount = msgTotalCount;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public List<ListDTO> getLodgingsList() {
		return lodgingsList;
	}

	public void setLodgingsList(List<ListDTO> lodgingsList) {
		this.lodgingsList = lodgingsList;
	}

	public int getPageBlockStart() {
		return pageBlockStart;
	}


	public void setPageBlockStart(int pageBlockStart) {
		this.pageBlockStart = pageBlockStart;
	}


	public int getPageBlockEnd() {
		return pageBlockEnd;
	}


	public void setPageBlockEnd(int pageBlockEnd) {
		this.pageBlockEnd = pageBlockEnd;
	}
	
	
	
}
