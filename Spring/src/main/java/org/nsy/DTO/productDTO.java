package org.nsy.DTO;

public class productDTO {

	private String pimage;
	private String pname;
	private String pcontent;
	private String pday;
	private int pprice;
	private int pno;
	
	public String getPday() {
		return pday;
	}
	public void setPday(String pday) {
		this.pday = pday;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	@Override
	public String toString() {
		return "productDTO [pimage=" + pimage + ", pname=" + pname + ", pcontent=" + pcontent + ", pday=" + pday
				+ ", pprice=" + pprice + ", pno=" + pno + "]";
	}

	
	
}
