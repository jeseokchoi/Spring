package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.MemberDTO;

@Repository
public interface MemberDAO {

	List<MemberDTO> selectList();
	
	int insert(MemberDTO dto);

	MemberDTO login(MemberDTO dto);

	MemberDTO view(int idx);

	MemberDTO getMember(int idx);

	int memberModify(MemberDTO dto);

	int memberDelete(int idx);



}
