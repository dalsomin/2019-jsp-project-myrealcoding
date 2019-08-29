package myRealTrip.partner.dto;

import java.util.List;


public class InfoPageDTO {

	
	private int total;
	private int currentPage;
	private List<InfoDTO> content;
	private int totalPages;
	private int startPage;
	private int endPage;
	
	public InfoPageDTO(int total, int currentPage, int size, List<InfoDTO> content) {

		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		
		if (total==0) {
			totalPages=0;
			startPage=0;
			endPage=0;
			
		}else {
			totalPages = total/size;
			if (total%size>0) {
				totalPages++;
			}
			int modVal = currentPage %5;
			startPage = currentPage /5 *5+1;
			if (modVal==0) {
				startPage -=5;
				endPage = startPage +4;
				if (endPage >totalPages) {
					endPage =totalPages;
				}
			}
			
		}
		
		
	}
	
	public boolean hasNoArticles() {
		return total==0;
		
	}
	public boolean hasArticles() {
		return total>0;
		
	}

	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}

	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @return the content
	 */
	public List<InfoDTO> getContent() {
		return content;
	}

	/**
	 * @return the totalPages
	 */
	public int getTotalPages() {
		return totalPages;
	}

	/**
	 * @return the startPage
	 */
	public int getStartPage() {
		return startPage;
	}

	/**
	 * @return the endPage
	 */
	public int getEndPage() {
		return endPage;
	}
	
}
