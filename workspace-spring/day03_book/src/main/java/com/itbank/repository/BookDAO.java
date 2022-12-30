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


	@Select("select * from book3 order by idx")
	List<BookDTO> selectList();

	@Insert("insert into book3(name, name2, author, publisher, publishdate, price, memo, score) "
			+ "values(#{name}, #{name2}, #{author}, #{publisher}, #{publishDate}, #{price}, #{memo}, #{score})")
	int insert(BookDTO dto);
	
	@Select("select * from book3 where idx=#{idx}")
	BookDTO selectDTO(int idx);

	@Update("update book3 set name=#{name}, name2=#{name2}, author=#{author}, publisher=#{publisher}, publishDate=#{publishDate}, price=#{price}, "
			+ "memo=#{memo}, score=#{score} where idx=#{idx}")
	int modify(BookDTO dto);

	@Delete("delete from book3 where idx=#{idx}")
	int delete(int idx);

	@Select("select * from book3 where name2 like ('%${name}%')")
	List<BookDTO> selectSearch(String name);
}
