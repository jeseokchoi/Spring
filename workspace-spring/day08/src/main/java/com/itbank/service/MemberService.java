package com.itbank.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.exception.TooShortUseridException;
import com.itbank.exception.UserPwViolationException;
import com.itbank.model.MemberDTO;
import com.itbank.repository.MemberDAO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;

	public List<MemberDTO> getList() {
		return dao.selectList();
	}

	public int add(MemberDTO dto) throws TooShortUseridException, UserPwViolationException {
		// 입력받은 나이가 0이면 예외가 발생함
		int age = Integer.parseInt(new SimpleDateFormat("yyyy").format(dto.getBirth()));
		age = 2023 - age;
		System.out.println(age);
		int tmp = 100 / age;
		System.out.println(tmp);
		//=========================
		
		// 입력받은 ID가 8글자 미만이면 강제로 예외 발생시키기
		if(dto.getUserId().length() < 8) {
			throw new TooShortUseridException();
		}
		// 운성이 행님(아이디 예외처리)
//		if(dto.getUserId().length() <8) {
//			throw new NumberFormatException("8글자");
//			
//		}
//		String str = dto.getUserPw().replaceAll("[0-9]", "").replaceAll("[a-z]", "").replaceAll("[A-Z]", "");
//		if(!str.equals("") || str.length() < 8) {
//			throw new UserPwViolationException();
//		}
		// 운성이 행님(비밀번호)
//		ArrayList<String> list = new ArrayList<String>();
//	      for(char i = 'a'; i <= 'z'; i ++) {
//	         list.add(i + "");
//	      }
//	      for(char i = 'A'; i <= 'Z'; i++) {
//	         list.add(i + "");
//	      }
//	      for(int i = 0; i < 9; i++) {
//	         list.add(i + "");
//	      }
//	            
//	      if(dto.getUserPw().length() < 8) {
//	         throw new UserPwViolationException();
//	      }
//	      
//	      for(String x : list) {
//	         if(!dto.getUserPw().contains(x)) {
//	            throw new UserPwViolationException();
//	         }
//	      }
		return dao.insert(dto);
	}

}
