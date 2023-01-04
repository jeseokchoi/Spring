package com.itbank.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.HomePlusDTO;

@Repository
public interface HomePlusDAO {

	List<HomePlusDTO> selectList();

	int insert(HomePlusDTO dto);

	HomePlusDTO selectDTO(int idx);

	int modify(HomePlusDTO dto);

}
