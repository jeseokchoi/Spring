package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.BoardDTO;

@Repository
public interface BoardDAO {

	List<BoardDTO> selectList();

	List<BoardDTO> selectSearchList(String keyword);

	int addList(BoardDTO dto);

	BoardDTO getList(int idx);

	BoardDTO getContent(int idx);

	int listModify(BoardDTO dto);

	int listDelete(int idx);

	void update(int idx);

}
