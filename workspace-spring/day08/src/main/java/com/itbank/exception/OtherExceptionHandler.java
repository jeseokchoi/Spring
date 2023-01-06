package com.itbank.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

// @ControllerAdvice : (따로 범위를 지정하지 않으면) 모든 컨트롤러에 대해 예외를 처리할 수 있는 전역 예외 처리 객체

// 특정 패키지에서 발생하는 예외만 처리하고 싶다면, 어노테이션 옆에 ()안에 문자열로 패키지 이름을 명시한다
// 범위를 지정하는 패키지는 컨트롤러가 포함된 패키지여야 한다, 클래스는 따로 지정할 수 없다

@ControllerAdvice("com.itbank.controller")
public class OtherExceptionHandler {

	@ExceptionHandler(ArithmeticException.class)
	public ModelAndView subByZero() {		// 매개변수로 예외객체를 받지 않아도 된다
		ModelAndView mav = new ModelAndView("error");
//		mav.addObject("msg", "0으로 나눌 수 없습니다.");
		mav.addObject("msg", "만 나이가 최소 1살이 되어야 합니다");
		return mav;
	}
	// 아이디 예외처리
	@ExceptionHandler(TooShortUseridException.class)
	public ModelAndView tooShortUserid(TooShortUseridException e) {
		ModelAndView mav = new ModelAndView("error");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	@ExceptionHandler(UserPwViolationException.class)
	public ModelAndView userPwError(UserPwViolationException p) {
		ModelAndView mav = new ModelAndView("error");
		mav.addObject("msg", p.getMessage());
		return mav;
	}
}
