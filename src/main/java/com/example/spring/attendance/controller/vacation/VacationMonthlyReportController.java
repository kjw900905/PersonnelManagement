package com.example.spring.attendance.controller.vacation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.attendance.service.vacation.VacationMonthlyReportService;

/* 휴가 월마감 */

@Controller
public class VacationMonthlyReportController {

	private static final Logger logger = LoggerFactory.getLogger(VacationMonthlyReportController.class);

	@Autowired
	private VacationMonthlyReportService vacationMonthlyReportService;
	
	
	@RequestMapping(value="vacationMonthlyReport")
	public String vacationMonthlyReport() {
		return "vacationMonthlyReport";
	}
}
