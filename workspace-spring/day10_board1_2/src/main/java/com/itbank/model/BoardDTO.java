package com.itbank.model;

import java.sql.Date;

//	IDX        NOT NULL NUMBER         
//	WRITER     NOT NULL VARCHAR2(100)  
//	TITLE      NOT NULL VARCHAR2(200)  
//	CONTENT    NOT NULL VARCHAR2(2000) 
//	REGISTDATE          DATE  

public class BoardDTO {

	private int idx;
	private String writer;
	private String title;
	private String content;
	private Date registdate;
	private int views;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegistdate() {
		return registdate;
	}
	public void setRegistdate(Date registdate) {
		this.registdate = registdate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	
}
