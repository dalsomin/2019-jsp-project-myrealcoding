package myRealTrip.flights.notice.service;

import java.util.List;

import myRealTrip.flights.notice.model.Notice;

public class ListView {
	
	private int msgCountPerPage;
	private int currentPageNumber;

	private int msgTotalCount;
	private int pageTotalCount;
	private int firstRow;
	private int endRow;
	private List<Notice> noticeList;	//list

	public ListView(int msgCountPerPage, int currentPageNumber, int msgTotalCount, int firstRow, int endRow,
			List<Notice> noticeList) {
		this.msgCountPerPage = msgCountPerPage;
		this.currentPageNumber = currentPageNumber;
		this.msgTotalCount = msgTotalCount;
		this.firstRow = firstRow;
		this.endRow = endRow;
		this.noticeList = noticeList;
		calculatePageTotalCount();
		
		
		
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

	//
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

	public List<Notice> getNoticeList() {
		return noticeList;
	}

	public void setNoticeList(List<Notice> noticeList) {
		this.noticeList = noticeList;
	}
	

	
	
	
}
