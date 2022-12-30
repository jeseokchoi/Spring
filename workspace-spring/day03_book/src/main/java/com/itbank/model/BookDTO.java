package com.itbank.model;

import java.sql.Date;

//	IDX         NOT NULL NUMBER         
//	NAME        NOT NULL VARCHAR2(100)  
//	AUTHOR      NOT NULL VARCHAR2(100)  
//	PUBLISHER   NOT NULL VARCHAR2(100)  
//	PUBLISHDATE NOT NULL DATE           
//	PRICE                NUMBER         
//	MEMO        NOT NULL VARCHAR2(2000) 
//	SCORE                NUMBER(4,1) 

public class BookDTO {
	
	private int idx;
	private String name;
	private String name2;
	private String author;
	private String publisher;
	private Date publishDate;
	private int price;
	private String memo;
	private String score;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	
	
	

}
