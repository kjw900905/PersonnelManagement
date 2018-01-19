package com.example.spring.attendance.controller.vacation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.attendance.service.vacation.VacationListService;

/* 휴가 조회하기 - 사원용 */

@Controller
public class VacationListController {

	private static final Logger logger = LoggerFactory.getLogger(VacationListController.class);
	
	@Autowired
	private VacationListService vacationListService;
	
	
	@RequestMapping(value="vacationList")
	public String vacationListService() {
		
		return "vacationList";
	}
}
