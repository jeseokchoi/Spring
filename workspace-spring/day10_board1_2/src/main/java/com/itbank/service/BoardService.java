package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;

	public List<BoardDTO> getList(Integer page) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		int perPage = 10;					// 페이지 당 10개
		int offset = (page - 1) * perPage;	// 건너뛸 개수 (1 -> 10, 2 -> 20, 3 ->30...)
		param.put("offset", offset);
		param.put("perPage", perPage);
		
		return dao.selectList(param);
	}

	public List<BoardDTO> getSearchList(String keyword) {
		return dao.selectSearchList(keyword);
	}

	public int add(BoardDTO dto) {
		return dao.addList(dto);
	}

	public BoardDTO getRead(int idx) {
		dao.update(idx);
		return dao.getList(idx);
	}

	public BoardDTO getContent(int idx) {
		return dao.getContent(idx);
	}

	public int modify(BoardDTO dto) {
		return dao.listModify(dto);
	}

	public int delete(int idx) {
		return dao.listDelete(idx);
	}

	public int getBoardCount() {
		return dao.selectBoardCount();
	}
}
