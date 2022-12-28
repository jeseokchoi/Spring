package com.itbank.model;

//	NAME    VARCHAR2(100) 
//	KOR     NUMBER        
//	ENG     NUMBER        
//	MAT     NUMBER      

public class StudentDTO {		// DTO는 스프링빈으로 등록 안한다 (데이터를 하나하나 등록할 뿐이니까)
	
	private String name;
	private int kor;
	private int eng;
	private int mat;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
}
