package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/join")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("join");
		List<MemberDTO> list = memberService.getList();
		mav.addObject("list", list);
		return mav;
	}
	@PostMapping("/join")
	public String add(MemberDTO dto) {	
		int row = memberService.add(dto);		
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:/join";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(MemberDTO user, String url, HttpSession session) {
		System.out.println("로그인 이후 이동할 주소 : " + url);
		
		MemberDTO login = memberService.login(user);
		session.setAttribute("login", login);
		
//		if(url == null) {								(if문)
//			return "redirect:/";
//		}
//		else {
//			return "redirect:" + url;			
//		}
		return "redirect:" + (url == null ? "/" : url);	// 삼항연산
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
}
