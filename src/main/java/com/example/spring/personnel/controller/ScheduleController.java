package com.example.spring.personnel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.personnel.service.ScheduleService;

@Controller
public class ScheduleController {
	
	//private static Logger logger = LoggerFactory.getLogger(StudentController.class);

//	@Autowired
//	private ScheduleService scheduleService;
	
	//private String PRE_VIEW_PATH = "personnel/schedule/";
	
	//일정보기
	//한글테스트2
	@RequestMapping(value="scheduleView.do")
	public String scheduleView() {
		
		return "scheduleView";
	}
	
}
