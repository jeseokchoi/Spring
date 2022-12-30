package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookDTO;
import com.itbank.repository.BookDAO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;

	public List<BookDTO> getList() {
		return dao.selectList();
	}

	public int insert(BookDTO dto) {
		String name2 = dto.getName().replace(" ", "");
		dto.setName2(name2);
		return dao.insert(dto);
	}

	public BookDTO getDTO(int idx) {
		return dao.selectDTO(idx);
	}

	public int modify(BookDTO dto) {
		String name2 = dto.getName().replace(" ", "");
		dto.setName2(name2);
		return dao.modify(dto);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public List<BookDTO> getSearch(String name) {
		name = name.replace(" ", "");
		return dao.selectSearch(name);
	}

	
}
