package org.nsy.DTO;

public class pageDTO {
	// 첫 번호(startPage 1, 11, 21, 31...)
	private int startPage;
	// 끝 번호(endPage 10, 20, 30, 40...)
	private int endPage;
	// 이전 버튼(prev true/false)
	private boolean prev;
	// 다음 버튼(next true/false)
	private boolean next;
	
	// tbl_board의 총 페이지 수
	private int total;
	// Criteria DTO 추가
	private Criteria cri;
	
	public pageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		// endPage
		this.endPage=(int)(Math.ceil(cri.getPageNum()/10.0))*10;
		// startPage
		this.startPage = this.endPage-9;
		
		// realendpage
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd < endPage) {
			this.endPage = realEnd;
		}
		
		// prev
		this.prev = this.startPage > 1;
		
		// next
		this.next = this.endPage < realEnd;
	}
	
	
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	@Override
	public String toString() {
		return "pageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}
	
	
	
	
}
