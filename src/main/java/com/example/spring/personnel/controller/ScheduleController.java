package com.example.spring.personnel.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.personnel.service.ScheduleService;

@Controller
public class ScheduleController {
	
	private static Logger logger = LoggerFactory.getLogger(ScheduleController.class);

	@Autowired
	private ScheduleService scheduleService;
	
	//private String PRE_VIEW_PATH = "personnel/schedule/";
	
	//일정보기(메인)
	@RequestMapping(value="scheduleView.do")
	public String scheduleView() {
		
		return "scheduleView";
		
	}
	
	//일정등록
	@RequestMapping(value="scheduleInsert.do")
	public @ResponseBody int scheduleInsert(@RequestParam HashMap<String, Object> map) {
		logger.debug("scheduleInsert(controller) In");
		logger.debug("파라미터로 넘겨온 맵 : " + map);
		
		int reult = scheduleService.scheduleInsert(map);
		
		return reult;
	}
	
}
