package com.example.spring.attendance.controller.attend;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.attendance.service.attend.HdayExtnNightWorkInqrService;

@Controller
public class HdayExtnNightWorkInqrController {
	
	private static final Logger logger = LoggerFactory.getLogger(HdayExtnNightWorkInqrController.class);
	
	@Autowired
	HdayExtnNightWorkInqrService hdayExtnNightWorkInqrService;
	
	@RequestMapping(value="/hdayExtnNightWorkInqr")
	public String hdayExtnNightWorkInqr() {
		return "hdayExtnNightWorkInqr";
	}
	
	//CRUD - R
	@RequestMapping(value="/readHdayExtnNightWorkInqr")
	public ModelAndView readHdayExtnNightWorkInqr(
			@RequestParam HashMap<String, String> map) {
		
		logger.debug("workYyMm : " + map.get("workYyMm"));
		logger.debug("empEmno : " + map.get("empEmno"));
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("resultList", hdayExtnNightWorkInqrService.readHdayExtnNightWorkInqr(map));
		mv.setViewName("hdayExtnNightWorkInqr");
		return mv;
	}
	
}
