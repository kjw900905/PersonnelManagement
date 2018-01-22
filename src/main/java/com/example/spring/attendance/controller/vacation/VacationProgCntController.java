package com.example.spring.attendance.controller.vacation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.example.spring.attendance.service.vacation.VacationProgCntService;

/* 휴가 신청현황 - 승인대기 개수 CONTROLLER */

@Controller
public class VacationProgCntController {
	
	private static final Logger logger = LoggerFactory.getLogger(VacationProgCntController.class);

	@Autowired
	private VacationProgCntService vacationProgCntService;
	
	private String PRE_VIEW_PATH = "/vacation/";
	
	
}
