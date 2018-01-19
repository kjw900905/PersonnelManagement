package com.example.spring.salmanager.saltot.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//급여집계표
@Controller
public class SalTotController {

	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(SalTotController.class);
	
	@RequestMapping(value = "/saltot_main")
	public String goEmpMenu(HttpServletRequest request, Model model) throws Exception {

		return "SalManager/saltot/saltot_main";

	}
}
