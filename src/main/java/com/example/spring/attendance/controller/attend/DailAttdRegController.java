package com.example.spring.attendance.controller.attend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DailAttdRegController {
	
	private static final Logger logger = LoggerFactory.getLogger(DailAttdRegController.class);
	
	//출결관리 - 일일근태등록
	@RequestMapping(value = "/dailAttdReg")
	public String dailAttdReg() {
		return "dailAttdReg";
	}	
}
