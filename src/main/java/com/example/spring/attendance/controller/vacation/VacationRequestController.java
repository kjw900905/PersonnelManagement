package com.example.spring.attendance.controller.vacation;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.attendance.service.vacation.VacationRequestService;


/* 휴가 신청하기 */

@Controller
public class VacationRequestController {

	private static final Logger logger = LoggerFactory.getLogger(VacationRequestController.class);

	@Autowired
	private VacationRequestService vacationRequestService;
	
	
	@RequestMapping(value="vacationRequest")
	public String vacationRequest() {
		return "vacationRequest";
	}
	
	
	/*
	
	//휴가신청
	@RequestMapping(value = "/vacationRequest.do")
	public ModelAndView vatacionRequest(HttpServletRequest request) { 
		
		HashMap<String,String> map = new HashMap<String,String>();
		
	//	map.put("", request.getParameter());
		
		vacRequestService.vacationRequest(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vacationList");
		return null;
	}

*/
	
	
	
	
	@RequestMapping(value="ajaxFormSubmit.ajax")
	public @ResponseBody HashMap<String,String> ajaxFormSubmit(
			@RequestParam HashMap<String,String> map){
		
		logger.debug(map.get("vastCrtData") + map.get("vastC") + map.get("vastStartDate") + map.get("vastEndDate") + map.get("vastCont"));
		
		return map;
	}
	
	
}
