package com.itbank.model;

import java.sql.Date;

public class AppleDTO {
	
	private int idx;
	private String product;
	private int price;
	private String category;
	private Date manufactureDate;
	private String pdInformation;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getManufactureDate() {
		return manufactureDate;
	}
	public void setManufactureDate(Date manufactureDate) {
		this.manufactureDate = manufactureDate;
	}
	public String getPdInformation() {
		return pdInformation;
	}
	public void setPdInformation(String pdInformation) {
		this.pdInformation = pdInformation;
	}
	
	
	
}
