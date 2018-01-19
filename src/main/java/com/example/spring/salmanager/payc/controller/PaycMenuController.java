package com.example.spring.salmanager.payc.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.department.Service.DepartmentService;
import com.example.spring.salmanager.payc.service.PaycMenuService;

//급여대장
@Controller
public class PaycMenuController {

	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(PaycMenuController.class);
	private String PRE_VIEW_PATH = "/SalManager/payc/";
	@Autowired
	private PaycMenuService paycMenuService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView testHome(HttpServletRequest request) {
		HashMap<String, String> map = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();

		mv.addObject("list", paycMenuService.paycList(map));
		mv.setViewName(PRE_VIEW_PATH + "payc_main");

		return mv;
	}

	@RequestMapping(value = "/payc_main.do")
	public ModelAndView goEmpMenu(HttpServletRequest request) throws Exception {

		HashMap<String, String> map = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();

		mv.addObject("list", paycMenuService.paycList(map));
		mv.setViewName(PRE_VIEW_PATH + "payc_main");

		return mv;

	}

	@RequestMapping(value = "/makePayc.do", method = RequestMethod.GET)
	public String makePayc(@RequestParam HashMap<String, Object> params, Model model) throws Exception {

		/*
		 * map.put("perSyy",request.getParameter("perSyy"));
		 * map.put("perSmm",request.getParameter("perSmm"));
		 * map.put("perSday",request.getParameter("perSday"));
		 * 
		 * map.put("perEyy",request.getParameter("perEyy"));
		 * map.put("perEmm",request.getParameter("perEmm"));
		 * map.put("perEday",request.getParameter("perEday"));
		 */

		/*
		 * map.put("payyy",request.getParameter("payyy"));
		 * map.put("paymm",request.getParameter("paymm"));
		 * map.put("paytoday",request.getParameter("paytoday"));
		 */

		/*
		 * map.put("pyymm",request.getParameter("pyy")+request.getParameter("pmm"));
		 * map.put("paycname",request.getParameter("paycname"));
		 * map.put("payday",request.getParameter("payyy")+request.getParameter("paymm")+
		 * request.getParameter("paytoday"));
		 * map.put("payyymm",request.getParameter("payyy")+request.getParameter("paymm")
		 * );
		 */
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("pyymm", params.get("pyy").toString() + params.get("pmm"));
		map.put("paycname", params.get("paycname").toString());
		map.put("payday", params.get("payyy").toString() + params.get("paymm") + params.get("paytoday"));
		map.put("payyymm", params.get("payyy").toString() + params.get("paymm"));
		logger.info("맵 : " + map);

		paycMenuService.makePaycInsert(map);

		return "/SalManager/windowdefault";

	}

	@RequestMapping(value = "makePayc.ajax")
	public @ResponseBody HashMap<String, String> ajaxFormSubmit( // 메시지 컨버터 설정
			@RequestParam HashMap<String, String> map) {

		map.put("success", "true");

		map.put("pyymm", map.get("pyy") + map.get("pmm"));
		map.put("payyymm", map.get("payyy") + map.get("paymm"));
		map.put("payday", map.get("payyymm") + map.get("paytoday"));
		// System.out.println("성공");
		logger.info("결과데이터(controller) : " + map);

		ModelAndView mv = new ModelAndView();
		paycMenuService.makePaycInsert(map);

		// map.put("deptName", deptName);

		return map;

	}

	@RequestMapping(value = "/newPayc.ajax")
	public @ResponseBody HashMap<String, String> ajaxnewPaycSubmit( // 메시지 컨버터 설정
			@RequestParam HashMap<String, String> map) {
	
		// mv.addObject("year", paycMenuService.getYear());
		// mv.addObject("month", paycMenuService.getMonth());
		// mv.addObject("lastday", paycMenuService.getLastDay());
		// mv.addObject("today", paycMenuService.getToday());

			map.put("yy", String.valueOf(paycMenuService.getYear()));
			
			logger.info("month : "+String.valueOf(paycMenuService.getMonth()));
			map.put("mm" , String.valueOf(paycMenuService.getMonth()));
			

			map.put("ld", String.valueOf(paycMenuService.getLastDay()));
			map.put("today", String.valueOf(paycMenuService.getToday()));

		// mv.setViewName("/SalManager/payc/payc_main");

		return map;
	}

	@RequestMapping(value = "/payc_select.do")
	public String payc_select(@RequestParam HashMap<String, Object> map, Model model) throws Exception {

		logger.info("map : " + map);

		return "/SalManager/payc/payc_inquiry";
	}
	@RequestMapping(value = "/payc_acal.ajax")
	public @ResponseBody HashMap<String, String> payc_acal(
			@RequestParam HashMap<String, String> map) {

		logger.info("map : " + map);

		return map;
	}

}
