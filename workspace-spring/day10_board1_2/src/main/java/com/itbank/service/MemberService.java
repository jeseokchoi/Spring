package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.MemberDTO;
import com.itbank.repository.MemberDAO;

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

	public MemberDTO login(MemberDTO dto) {
		return dao.login(dto);
	}

	public MemberDTO getDTO(int idx) {
		return dao.view(idx);
	}

	public MemberDTO getMember(int idx) {
		return dao.getMember(idx);
	}

	public int modify(MemberDTO dto) {
		return dao.memberModify(dto);
	}
	public int delete(int idx) {
		return dao.memberDelete(idx);
	}




}
