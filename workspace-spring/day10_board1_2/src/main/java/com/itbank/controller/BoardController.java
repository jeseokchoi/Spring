package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.BoardDTO;
import com.itbank.service.BoardService;

@Controller
//@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService; 
	
	@GetMapping("/list")
	public ModelAndView boardList(Integer page) {
		ModelAndView mav = new ModelAndView("list");
		
		if(page == null) {		// 파라미터가 들어오지 않았다면
			page = 1;			// 기본은 1페이지
		}
		List<BoardDTO> list = boardService.getList(page);
		mav.addObject("list", list);
		
		// 페이징 기초작업 (게시글의 총량, 페이지의 개수 확인)
		int boardCount = boardService.getBoardCount();	// 총 개시글 개수 (216)
		int perPage = 10;								// 화면당 출력할 게시글 개수	(10)
		int pageCount = boardCount / perPage;			// (21)
		if(boardCount % perPage != 0) {
			pageCount += 1;
		}
		mav.addObject("pageCount", pageCount);
		
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
		ModelAndView mav = new ModelAndView("modify");
		BoardDTO dto = boardService.getContent(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/modify/{idx}")
	public String listModify(BoardDTO dto) {
		int row = boardService.modify(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		return "redirect:/{idx}";
	}
	
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable("idx") int idx) {
		int row = boardService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/list";
	}

	
	
}
