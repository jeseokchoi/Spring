package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("home");
		List<MemberDTO> list = memberService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
	// 회원가입
	@GetMapping("/join")
	public void join() {}

	@PostMapping("/join")	
	public String join(MemberDTO dto) {
		int row = memberService.insert(dto);
		System.out.println(row != 0 ? "가입성공" : "가입실패");
		return "redirect:/";
	}
	
	// 로그인
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public String login(MemberDTO dto, HttpSession session) {
		MemberDTO login = memberService.login(dto);
		session.setAttribute("login", login);
		return "redirect:/";
	}
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	// 마이페이지
	@GetMapping("/mypage/{idx}")
	public ModelAndView memberView(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/mypage");
		MemberDTO dto = memberService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	// 마이페이지 수정
	@GetMapping("/mypageModify/{idx}")
	public ModelAndView memberModify(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/mypageModify");
		MemberDTO dto = memberService.getMember(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/mypageModify/{idx}")
	public String memberModify(MemberDTO dto) {
		int row = memberService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/mypage/{idx}";
	}
	
	// 회원탈퇴
	@GetMapping("/withdraw/{idx}")
	public String withdraw() {
		return "withdraw";
			
	}
	
	@PostMapping("/withdraw/{idx}")
	public String memberWithdraw(String userpw, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int row = 0;
		if(dto.getUserpw().equals(userpw)){
			row = memberService.delete(dto.getIdx());
		}
		else {
			return "redirect:/withdraw/{idx}";
		}
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/logout";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
