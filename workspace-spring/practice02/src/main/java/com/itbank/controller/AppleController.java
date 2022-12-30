package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.AppleDTO;
import com.itbank.service.AppleService;

@Controller
public class AppleController {

	@Autowired
	private AppleService appleService;
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();		
		List<AppleDTO> list = appleService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
}
