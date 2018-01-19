package com.example.spring.attendance.controller.attend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DailAttdRegController {
	
	private static final Logger logger = LoggerFactory.getLogger(DailAttdRegController.class);
	
	//������ - ���ϱ��µ��
	@RequestMapping(value = "/dailAttdReg")
	public String dailAttdReg() {
		return "dailAttdReg";
	}	
}
