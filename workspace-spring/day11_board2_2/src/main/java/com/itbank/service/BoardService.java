package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;


@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	private final String saveDirectory = "C:\\Users\\user\\Desktop\\게시판연습\\eclipse-jee-2019-06-R-win32-x86_64 (1)\\upload_board_v0.2";
	
	public BoardService() {
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public List<BoardDTO> getList() {
		return dao.selectList();
	}

	public List<BoardDTO> getSearch(String keyword) {
		return dao.getSearch(keyword);
	}

	public int insert(BoardDTO dto) {
		File dest = new File(saveDirectory, dto.getRealFile().getOriginalFilename()); 
		
		try {
			dto.getRealFile().transferTo(dest);
			
			dto.setUploadFile(dto.getRealFile().getOriginalFilename());
			int row = dao.getInsert(dto);
			return row;
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public BoardDTO getView(int idx) {
			dao.update(idx);
		return dao.getView(idx);
	}

	public BoardDTO getContent(int idx) {
		return dao.getContent(idx);
	}

	public int modify(BoardDTO dto) {
		return dao.modify(dto);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

}
