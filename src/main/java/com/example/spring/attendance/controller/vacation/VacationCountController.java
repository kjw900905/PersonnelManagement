package com.example.spring.attendance.controller.vacation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.attendance.service.vacation.VacationCountService;


/* 휴가 개수 계산하기 controller */


@Controller
public class VacationCountController {

private static final Logger logger = LoggerFactory.getLogger(VacationCountController.class);
	
	@Autowired
	private VacationCountService vacationCountService;
	
	
	@RequestMapping(value="/vacationCount")
	public String vacationCount() {
		return "vacationCount";
	}
}
