package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.StudentDTO;

public interface StudentDAO {

	@Select("select * from student1")	// 쿼리문
	List<StudentDTO> selectList();		// 반환형 이 두가지만 잘하면 된다
	
	// myBatis가 함수의 반환령을 보고 타입을 추론하여, 쿼리 결과를 DTO와 List에 맞게 처리한다
	
	@Insert("insert into student1 values (#{name}, #{kor}, #{eng}, #{mat})")
	int insert(StudentDTO dto);		// 매개변수를 1개만 전달하기!!
									// ${} 값만 쿼리문에 삽입, #{} 자료형에 맞게 따옴표 처리
}
