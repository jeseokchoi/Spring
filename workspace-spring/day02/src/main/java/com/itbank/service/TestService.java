package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itbank.repository.TestDAO;

@Service // 객체끼리 참조해야해서 service어노테이션을 달아준다
public class TestService {
	
	@Autowired
	private TestDAO dao;

	public String getVersion() {
		String version = dao.selectVersion();
		return version;
	}

}
