package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	@GetMapping("/write")
	public void boardWrite() {}
	
	@PostMapping("/write")
	public String boardWrite(BoardDTO dto) {
		int row = boardService.add(dto);
		System.out.println(row != 0 ? "작성성공" : "작성실패");
		return "redirect:/list";
	}
	@GetMapping("/read/{idx}")
	public ModelAndView listRead(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("read");
		BoardDTO dto = boardService.getRead(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@GetMapping("/modify/{idx}")
	public ModelAndView listModify(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/modify");
		BoardDTO dto = boardService.getContent(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/modify/{idx}")
	public String listModify(BoardDTO dto) {
		int row = boardService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/read/{idx}";
	}
	
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable("idx") int idx) {
		int row = boardService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/list";
	}

	
	
}
