package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> list = memberService.getList();
		mav.addObject("list", list);
		return mav;
	}
	@PostMapping("/login")
	public String login(MemberDTO user, HttpSession session) {
		MemberDTO login = memberService.getLogin(user);
		session.setAttribute("login", login);
		return "redirect:/";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping("/join")
		public String join(MemberDTO dto) {
			int row = memberService.getJoin(dto);
			System.out.println(row != 0 ? "가입성공" : "가입실패");
			return "redirect:/";
	}
	@GetMapping("/mypage")
		public void mypage() {}
	
	@GetMapping("/mypageModify/{idx}")
	public ModelAndView mypageModify(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/member/mypageModify");
		MemberDTO dto = memberService.getMember(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/mypageModify/{idx}")
	public String memberModify(MemberDTO dto) {
		int row = memberService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/member/mypage";
	}
	@GetMapping("/withdraw/{idx}")
	public String withdraw() {
		return "/member/withdraw";
			
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
		return "redirect:/member/logout";
	}
	
	
	
	
	
	
	
	
	
	
	
	
		
}
