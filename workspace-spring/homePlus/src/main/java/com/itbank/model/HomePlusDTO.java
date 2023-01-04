package com.itbank.model;

import java.sql.Date;
import org.springframework.web.multipart.MultipartFile;

//	IDX         NOT NULL NUMBER        
//	CATEGORY    NOT NULL VARCHAR2(100) 
//	PRODUCTNAME NOT NULL VARCHAR2(200) 
//	PRICE                NUMBER        
//	SCORE                NUMBER(4,1)   
//	THUMBNAIL            VARCHAR2(255) 
//	REVIEWIMAGE          VARCHAR2(255) 
//	REGISTDATE           DATE 

public class HomePlusDTO {

	private int idx;
	private String category;
	private String productName;
	private int price;
	private double score;
	private String thumbnail;
	private String reviewImage;
	private Date registDate;
	private MultipartFile thumbnailFile;
	private MultipartFile reviewImageFile;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getReviewImage() {
		return reviewImage;
	}
	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public MultipartFile getThumbnailFile() {
		return thumbnailFile;
	}
	public void setThumbnailFile(MultipartFile thumbnailFile) {
		this.thumbnailFile = thumbnailFile;
	}
	public MultipartFile getReviewImageFile() {
		return reviewImageFile;
	}
	public void setReviewImageFile(MultipartFile reviewImageFile) {
		this.reviewImageFile = reviewImageFile;
	}

	
}
