package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.itbank.repository.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/memberList")
	public ModelAndView memberList() {
		ModelAndView mav = new ModelAndView();
		
		List<MemberDTO> list = memberService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/memberAdd")
	public void memberAdd() {}
	
	@PostMapping("/memberAdd")
	public String memberAdd(MemberDTO dto) {
		int row = memberService.insert(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/memberList";
	}
	
	@GetMapping("/memberDtail")
	public ModelAndView memberDtail(int idx) {
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = memberService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@GetMapping("/memberModify")
	public ModelAndView memberModify(int idx) {
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = memberService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/memberModify")
	public String memberModify(MemberDTO dto) {
		int row = memberService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/memberList";
	}
	@GetMapping("/memberDelete")
	public String memberDelete(MemberDTO dto) {
		int row = memberService.delete(dto);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/memberList";
	}
	
	

}
