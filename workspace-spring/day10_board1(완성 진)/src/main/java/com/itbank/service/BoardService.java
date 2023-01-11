package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;

	public List<BoardDTO> getList() {
		return dao.selectList();
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
}
