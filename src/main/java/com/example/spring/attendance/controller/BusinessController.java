package com.example.spring.attendance.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BusinessController {
	
	private static final Logger logger = LoggerFactory.getLogger(BusinessController.class);

	
	//출장신청
	@RequestMapping(value = "/businessRequest")
	public String businessRequestPage() { 
		return "businessRequest";
	}
}
