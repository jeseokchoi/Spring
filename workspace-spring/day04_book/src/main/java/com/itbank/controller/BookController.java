package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.BookDTO;
import com.itbank.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;

	@GetMapping("/bookList")
	public ModelAndView bookList() {
		ModelAndView mav = new ModelAndView();	// ModelAndView(bookList?)
		
		List<BookDTO> list = bookService.getList();
		mav.addObject("list", list);
		return mav;	
	}
	@GetMapping("/bookInsert")
	public void bookInsert() {}
	
	@PostMapping("/bookInsert")
	public String bookInsert(BookDTO dto) {
		int row = bookService.insert(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/bookList";
	}
	@GetMapping("/bookDtaile/{idx}")
	public ModelAndView bookDtaile(@PathVariable("idx") int idx) {		// @PathVariable("변수명") 주소창에 원하는 값만 노출 가능
		ModelAndView mav = new ModelAndView("/bookDtaile");
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@GetMapping("/bookModify/{idx}")
	public ModelAndView bookModify(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/bookModify");
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/bookModify/{idx}")
	public String bookModify(BookDTO dto) {
		int row = bookService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/bookDtaile/{idx}";
	}
	@GetMapping("/delete")
	public String delete(int idx) {
		int row = bookService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/bookList";
	}
	@PostMapping("/bookList")
	public ModelAndView search(String name) {
		ModelAndView mav = new ModelAndView("/bookList");
		List<BookDTO> list = bookService.getSearch(name);
		mav.addObject("list", list);
		return mav;
	}
	
}
