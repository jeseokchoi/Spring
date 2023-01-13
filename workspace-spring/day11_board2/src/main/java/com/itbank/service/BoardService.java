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

	public List<BoardDTO> getSearch(String keyword) {
		return dao.getSearch(keyword);
	}

	public int insert(BoardDTO dto) {
		return dao.getInsert(dto);
	}

	public BoardDTO getView(int idx) {
			dao.update(idx);
		return dao.gerView(idx);
	}

	public BoardDTO getContent(int idx) {
		return dao.getContent(idx);
	}

	public int modify(BoardDTO dto) {
		return dao.modify(dto);
	}

}
