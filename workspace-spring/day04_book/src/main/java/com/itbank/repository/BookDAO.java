package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.itbank.model.BookDTO;

@Repository
public interface BookDAO {


//	@Select("select * from book3 order by idx") xml 파일에 생성, 삭제해도 됨
	List<BookDTO> selectList();

	int insert(BookDTO dto);
	
	BookDTO selectDTO(int idx);

	int modify(BookDTO dto);

	int delete(int idx);

	List<BookDTO> selectSearch(String name);
}
