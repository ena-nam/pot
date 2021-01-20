package org.nsy.DTO;

public class CustomDTO {

	private int orderNo;
    private String orderName;
    private String orderDay;
    private String orderSize;
    private String orderOther;
    private String orderPlus1;
    private String orderPlus2;
    private String orderPlus3;
    private int orderShip;
    private int orderPrice;
    
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderDay() {
		return orderDay;
	}
	public void setOrderDay(String orderDay) {
		this.orderDay = orderDay;
	}
	public String getOrderSize() {
		return orderSize;
	}
	public void setOrderSize(String orderSize) {
		this.orderSize = orderSize;
	}
	public String getOrderOther() {
		return orderOther;
	}
	public void setOrderOther(String orderOther) {
		this.orderOther = orderOther;
	}
	public String getOrderPlus1() {
		return orderPlus1;
	}
	public void setOrderPlus1(String orderPlus1) {
		this.orderPlus1 = orderPlus1;
	}
	public String getOrderPlus2() {
		return orderPlus2;
	}
	public void setOrderPlus2(String orderPlus2) {
		this.orderPlus2 = orderPlus2;
	}
	public String getOrderPlus3() {
		return orderPlus3;
	}
	public void setOrderPlus3(String orderPlus3) {
		this.orderPlus3 = orderPlus3;
	}
	public int getOrderShip() {
		return orderShip;
	}
	public void setOrderShip(int orderShip) {
		this.orderShip = orderShip;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	@Override
	public String toString() {
		return "CustomDTO [orderNo=" + orderNo + ", orderName=" + orderName + ", orderDay=" + orderDay + ", orderSize="
				+ orderSize + ", orderOther=" + orderOther + ", orderPlus1=" + orderPlus1 + ", orderPlus2=" + orderPlus2
				+ ", orderPlus3=" + orderPlus3 + ", orderShip=" + orderShip + ", orderPrice=" + orderPrice + "]";
	}
	
	
    
    
}
