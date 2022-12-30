package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.itbank.model.AppleDTO;
import com.itbank.repository.AppleDAO;

@Service
public class AppleService {
	
	@Autowired
	private AppleDAO dao;

	public List<AppleDTO> getList() {
		
		return dao.selectList();
	}

}
