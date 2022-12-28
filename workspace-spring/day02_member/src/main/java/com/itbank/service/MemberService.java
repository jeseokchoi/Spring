package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.repository.MemberDAO;
import com.itbank.repository.MemberDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;

	public List<MemberDTO> getList() {
		return dao.selectList();
	}

	public int insert(MemberDTO dto) {
		return dao.insert(dto);
	}

	public MemberDTO getDTO(int idx) {
		return dao.selectDTO(idx);
	}

	public int modify(MemberDTO dto) {
		return dao.modify(dto);
	}

	public int delete(MemberDTO dto) {
		return dao.delete(dto);
	}

}
