package com.itbank.exception;

public class UserPwViolationException extends Exception {

	private static final long serialVersionUID = 1L;
	
	@Override
	public String getMessage() {
		return "8글자 이상 특수문자 제외";
	}

}
