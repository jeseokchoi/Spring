package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.AppleDTO;

@Repository
public interface AppleDAO {

	@Select("select * from apple order by idx")
	List<AppleDTO> selectList();

	
}
