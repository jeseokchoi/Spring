package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.HomePlusDTO;
import com.itbank.repository.HomePlusDAO;

@Service
public class HomePlusService {

	@Autowired
	private HomePlusDAO dao;
		
	private final String saveDirectory = "D:\\homePlus";
	
	public List<HomePlusDTO> getList() {
		return dao.selectList();
	}

	public int insert(HomePlusDTO dto) {
		File dest = new File(saveDirectory, dto.getRegistDate()+"_"+dto.getProductName()+"_"+dto.getThumbnailFile().getOriginalFilename());
		File dest2 = new File(saveDirectory, dto.getRegistDate()+"_"+dto.getProductName()+"_"+dto.getReviewImageFile().getOriginalFilename());
		try {
			dto.getThumbnailFile().transferTo(dest);
			dto.setThumbnail(dto.getRegistDate()+"_"+dto.getProductName()+"_"+dto.getThumbnailFile().getOriginalFilename());
			
			dto.getReviewImageFile().transferTo(dest2);
			dto.setReviewImage(dto.getRegistDate()+"_"+dto.getProductName()+"_"+dto.getReviewImageFile().getOriginalFilename());
			int row = dao.insert(dto);
			return row;
		
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public HomePlusDTO getDTO(int idx) {
		return dao.selectDTO(idx);
	}

	public int modify(HomePlusDTO dto) {
		return dao.modify(dto);
	}
	
}
