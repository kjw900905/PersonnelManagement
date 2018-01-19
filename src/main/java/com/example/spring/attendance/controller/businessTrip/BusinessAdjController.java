package com.example.spring.attendance.controller.businessTrip;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BusinessAdjController {

	private static final Logger logger = LoggerFactory.getLogger(BusinessAdjController.class);
	
	//������� - ��������
	@RequestMapping(value = "/businessAdj")
	public String businessAdj() {
		return "businessAdj";
	}
	
}//class