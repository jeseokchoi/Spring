package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.BoardDTO;

@Repository
public interface BoardDAO {

	List<BoardDTO> selectList();

	List<BoardDTO> getSearch(String keyword);

	int getInsert(BoardDTO dto);

	BoardDTO getView(int idx);

	void update(int idx);

	BoardDTO getContent(int idx);

	int modify(BoardDTO dto);

	int delete(int idx);

}
