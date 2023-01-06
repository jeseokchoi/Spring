package com.itbank.model;

import java.sql.Date;

//	IDX      NOT NULL NUMBER        
//	USERID   NOT NULL VARCHAR2(100) 
//	USERPW   NOT NULL VARCHAR2(255) 
//	USERNAME NOT NULL VARCHAR2(100) 
//	BIRTH    NOT NULL DATE          
//	GENDER            VARCHAR2(20) 

public class MemberDTO {
	
	private int idx;
	private String userId;
	private String userPw;
	private String userName;
	private Date birth;
	private String gender;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

}
