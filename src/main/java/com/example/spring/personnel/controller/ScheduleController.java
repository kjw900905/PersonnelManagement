package com.example.spring.personnel.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public @ResponseBody HashMap<String, String> scheduleDb(@RequestParam String emno){
		
		System.out.println("emno : " + emno);
		
		return null;
	}
	
	//일정등록
	@RequestMapping(value="scheduleInsert.do")
	public int scheduleInsert(@RequestParam HashMap<String, Object> map) {
		System.out.println("scheduleInsert(controller) In");
		System.out.println("파라미터로 넘겨온 맵 : " + map);
		
		int reult = scheduleService.scheduleInsert(map);
		
		return reult;
	}
	
}
