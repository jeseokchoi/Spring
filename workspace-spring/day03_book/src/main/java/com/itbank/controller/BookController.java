package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.repository.BookDTO;
import com.itbank.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;

	@GetMapping("/bookList")
	public ModelAndView bookList() {
		ModelAndView mav = new ModelAndView();
		
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
	@GetMapping("/bookDtaile")
	public ModelAndView bookDtaile(int idx) {
		ModelAndView mav = new ModelAndView();
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("/bookModify")
	public ModelAndView bookModify(int idx) {
		ModelAndView mav = new ModelAndView();
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	@PostMapping("/bookModify")
	public String bookModify(BookDTO dto) {
		int row = bookService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/bookList";
	}
	@GetMapping("/delete")
	public String delete(int idx) {
		int row = bookService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/bookList";
	}
	
	@PostMapping("/bookList")
	public ModelAndView search(String name) {
		ModelAndView mav = new ModelAndView("/bookDtaile");
		BookDTO dto = bookService.getSearch(name);
		mav.addObject("dto", dto);
		return mav;
	}
	
}
