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

		public MemberDTO getLogin(MemberDTO user) {
			return dao.getLogin(user);
		}

		public int getJoin(MemberDTO dto) {
			return dao.getJoin(dto);
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
