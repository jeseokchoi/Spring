package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.BoardDTO;
import com.itbank.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService; 
	
	@GetMapping("/list")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView("list");
		List<BoardDTO> list = boardService.getList();
		mav.addObject("list", list);
		return mav;
	}
	@PostMapping("/list")
	public ModelAndView search(String keyword) {
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> list = boardService.getSearchList(keyword);
		mav.addObject("list", list);
		return mav;
	}
}
