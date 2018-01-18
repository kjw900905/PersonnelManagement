package com.example.spring.salmanager.spec.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//급여명세서(개인)
@Controller
public class SpecController {

	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(SpecController.class);
	
	@RequestMapping(value = "/spec_main")
	public String goEmpMenu(HttpServletRequest request, Model model) throws Exception {

		return "SalManager/spec/spec_main";

	}
}
