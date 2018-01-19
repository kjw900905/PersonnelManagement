package com.example.spring.attendance.controller.vacation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.attendance.service.vacation.VacationListAdminService;


/* 휴가 조회하기 controller - 관리자용 */

@Controller
public class VacationListAdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(VacationListAdminController.class);

	@Autowired
	private VacationListAdminService vacationListAdminService;
	
	//휴가조회
	@RequestMapping(value="/vacationListAdmin")
	public String vacationListAdmin() {
		return "vacationListAdmin";
	}
	
	
	//휴가신청현황
	@RequestMapping(value="/vacationProgressList")
	public String vacationProgressList() {
		return "vacationProgressList";
	}
}
