package com.example.spring.attendance.controller.attend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MnthAttdStatController {
	
	private static final Logger logger = LoggerFactory.getLogger(MnthAttdStatController.class);
	
	//������ - ��������Ȳ
	@RequestMapping(value = "/mnthAttdStat")
	public String mnthAttdStat() {
		return "mnthAttdStat";
	}
	
}
