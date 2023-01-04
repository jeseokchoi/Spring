package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.HomePlusDTO;
import com.itbank.service.HomePlusService;

@Controller
public class HomePlusController {
	
	@Autowired
	private HomePlusService homePlusService;

	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<HomePlusDTO> list = homePlusService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/insert")
	public void insert() {}
	
	@PostMapping("/insert")
	public ModelAndView insert(HomePlusDTO dto) {
		ModelAndView mav = new ModelAndView("redirect:/list");
		int row = homePlusService.insert(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return mav;
	}
	@GetMapping("/dtaile/{idx}")
	public ModelAndView dtaile(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/dtaile");
		HomePlusDTO dto = homePlusService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@GetMapping("/modify/{idx}")
	public ModelAndView modify(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/modify");
		HomePlusDTO dto = homePlusService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/modify/{idx}")
	public String modify(HomePlusDTO dto) {
		int row = homePlusService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/list";
	}
	@PostMapping("/delete")
	public String delete(int idx) {
		int row = homePlusService.delete(idx);
		sy
	}
}
