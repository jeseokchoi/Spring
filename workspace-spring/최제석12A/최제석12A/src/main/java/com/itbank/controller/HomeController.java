package com.itbank.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.AjaxService;

@RestController
public class HomeController {
	
	@Autowired
	private AjaxService ajaxService;
	
	@GetMapping("/airPolution")
	public String airPolution() throws IOException {
		String json = ajaxService.getAirInfo();
		return json;
	}
	
}
