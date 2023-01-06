package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import org.apache.ibatis.type.TypeException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.exception.TooShortUseridException;
import com.itbank.exception.UserPwViolationException;
import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/list")
	public ModelAndView ex01() {
		ModelAndView mav = new ModelAndView("list");
		List<MemberDTO> list = memberService.getList();
		mav.addObject("list", list);
		return mav;
	}
	// 특정 요청이 발생했을 때, 실행되는 함수
	@PostMapping("/list")
	public String add(MemberDTO dto) throws TooShortUseridException, UserPwViolationException {	// throws TooShortUseridException 이걸 추가(컨트롤러에서 발생하는예외를 
		int row = memberService.add(dto);														// OtherExceptionHandler 여기로 던지고 발생된 예외에 맞는 메세지를 처리한다)
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:/list";
	}
	// 특정 예외가 발생했을 때, 실행되는 함수
	// 중복 아이디 가입이 발생했을 경우 예외를 처리하는 함수
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)	// @ExceptionHandler 해당 Controller안에서만 유효하다
	public ModelAndView duplicateId(SQLIntegrityConstraintViolationException e) {
		System.out.println("예외 발생 : " + e);
		ModelAndView mav = new ModelAndView("error");
		mav.addObject("msg", "이미 사용중인 ID입니다.");
		return mav;
	}
	// gender 값이 빠졌을 경우 예외 처리
	@ExceptionHandler(TypeException.class)
	public ModelAndView typeException(TypeException e) {
		String message = e.getMessage();
		message = message.substring(message.indexOf("property='"), message.indexOf(","));
		message = message.substring(message.indexOf("'") + 1, message.lastIndexOf("'"));
		System.out.println(message);
		
		String msg = "[%s] 값이 필수로 입력되어야 합니다";
		msg = String.format(msg, message);
		ModelAndView mav = new ModelAndView("error");
		mav.addObject("msg", msg);
		return mav;
	}
	// 운성이 행님 코드 (아이디 예외 처리)
//	@ExceptionHandler(NumberFormatException.class)
//	public ModelAndView lengthException(NumberFormatException e) {
//		String message = e.getMessage();
//		String msg = "[%s] 이상 입력하세요";
//		msg = String.format(msg, message);
//		ModelAndView mav = new ModelAndView("error");
//		mav.addObject("msg", msg);
//		return mav;
//	}
	
	
}
