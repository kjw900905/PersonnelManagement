package com.example.spring.attendance.controller.attend;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.attendance.service.attend.MnthngAttdCrtClsService;

@Controller
public class MnthngAttdCrtClsController {
	
	private static final Logger logger = LoggerFactory.getLogger(MnthngAttdCrtClsController.class);
	
	@Autowired
	MnthngAttdCrtClsService mnthngAttdCrtClsService;
	
	@RequestMapping(value = "/mnthngAttdCrtCls")
	public String mnthngAttdCrtCls() {
		return "mnthngAttdCrtCls";
	}
	
	@RequestMapping(value="/readMnthngAttdCrtCls")
	public ModelAndView readMnthngAttdCrtCls(
			@RequestParam HashMap<String, String> paramMap
			) {
		
		logger.debug("workYyMm : " + paramMap.get("workYyMm"));
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("resultList", mnthngAttdCrtClsService.readMnthngAttdCrtCls(paramMap));
		mv.setViewName("mnthngAttdCrtCls");
		
		return mv;
	}
	
}
