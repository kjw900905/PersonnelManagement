package com.example.spring.personnel.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.personnel.service.ScheduleService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	//private String PRE_VIEW_PATH = "personnel/schedule/";
	
	//일정보기(메인)
	@RequestMapping(value="scheduleView.do")
	public String scheduleView() {
		
		return "scheduleView";
		
	}
	
	//사원 일정db
	@RequestMapping(value="scheduleDb.ajax")
	public @ResponseBody List<String> scheduleDb(@RequestParam String emno){
		
		System.out.println("emno : " + emno);
		
		List<String> list = scheduleService.scheduleDb(emno);
		
		return list;
	}
	
	//일정등록
	@RequestMapping(value="scheduleInsert.do")
	public @ResponseBody int scheduleInsert(@RequestParam HashMap<String, String> map) {
		System.out.println("scheduleInsert(controller) In");
		System.out.println("파라미터map : " + map);
		
		int result = scheduleService.scheduleInsert(map);
		
		return result;
	}
	
	
}
