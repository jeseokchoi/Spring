package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.MemberDTO;

@Repository
public interface MemberDAO {

	List<MemberDTO> selectList();

	MemberDTO getLogin(MemberDTO user);

	int getJoin(MemberDTO dto);

	MemberDTO getMember(int idx);

	int memberModify(MemberDTO dto);

	int memberDelete(int idx);

	
}
