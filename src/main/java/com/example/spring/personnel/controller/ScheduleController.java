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
	
	private String PRE_VIEW_PATH = "personnel/schedule/";
	
	//한글
	//한글2
	@RequestMapping(value="fullcalendar.do")
	public String fullcalendar() {
		
		return "fullcalendar";
	}
	
	@RequestMapping(value="home.do")
	public String home() {
		
		return "home";
	}
	
}
