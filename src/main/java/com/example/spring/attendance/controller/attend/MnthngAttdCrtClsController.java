package com.example.spring.attendance.controller.attend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MnthngAttdCrtClsController {
	
	private static final Logger logger = LoggerFactory.getLogger(MnthngAttdCrtClsController.class);
	
	
	@RequestMapping(value = "/mnthngAttdCrtCls")
	public String mnthngAttdCrtCls() {
		return "mnthngAttdCrtCls";
	}
	
}
