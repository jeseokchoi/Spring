package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MemberDAO {
	

	@Select("select * from member5")
	List<MemberDTO> selectList();

	@Insert("insert into member5 (userid, userpw, username, birth, gender)" + 
			"values (#{userId}, #{userPw}, #{userName}, #{birth}, #{gender})")
	int insert(MemberDTO dto);

	@Select("select * from member5 where idx = #{idx}")
	MemberDTO selectDTO(int idx);

	@Update("update member5 set userid=#{userId}, userpw=#{userPw}, username=#{userName}, birth=#{birth}, gender=#{gender}" + 
			"    where idx = #{idx}")
	int modify(MemberDTO dto);

	@Delete("delete from member5 where idx = #{idx}")
	int delete(MemberDTO dto);

}
