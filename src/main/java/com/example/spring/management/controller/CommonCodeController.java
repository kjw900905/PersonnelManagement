package com.example.spring.management.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.spring.management.service.CommonCodeService;

@Controller
public class CommonCodeController {

	private static Logger logger = LoggerFactory.getLogger(CommonCodeController.class);

	@Autowired
	private CommonCodeService commonCodeService;

	private String PRE_VIEW_PATH = "/";

	
	@RequestMapping(value = "commonInsert.do")
	public ModelAndView commonInsert(@RequestParam HashMap<String, String> paramMap) {

		int result = commonCodeService.commonInsert(paramMap);

		ModelAndView mv = new ModelAndView();

		mv.addObject("result", result);
		// mv.setView(new RedirectView("commonList.do"));
		mv.setViewName("confirm");

		return mv;

	}// commonInsert

	
	
	@RequestMapping(value="commCodeCheck.do")
	public @ResponseBody HashMap<String, String> commCodeCheck(@RequestParam(value = "commCode") String commCode) {

		String checkValue = commonCodeService.commCodeCheck(commCode);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("commCode", checkValue);

		return map;

	}// commCodeCheck

	
	
	@RequestMapping(value="commonList.do")
	public ModelAndView commonList(HttpServletRequest request, @RequestParam HashMap<String, Object> paramMap) {

		logger.debug("-----------------------------------------commonList 들어왔다");
		
		String selectPageNum = request.getParameter("selectPageNum");

		if (selectPageNum == null || selectPageNum == "") {
			selectPageNum = "1";
		}

		paramMap.put("selectPageNum", selectPageNum);
		
		String commonSelect = request.getParameter("commonSelect");
		String commonSearch = request.getParameter("commonSearch");
		
		paramMap.put("commonSelect",commonSelect);
		paramMap.put("commonSearch",commonSearch);
		

		List<HashMap<String, Object>> list = commonCodeService.commonList(paramMap);
		List<HashMap<String, Integer>> pagingList = commonCodeService.paging(paramMap);

		HashMap<String,List> map = new HashMap<String,List>();
		
		//map.put("list",list);
		//map.put("pagingList",pagingList);
		
		
		ModelAndView mv = new ModelAndView();

		mv.addObject("list", list);
		mv.addObject("pagingList", pagingList);
		mv.setViewName("commonList");
		
		
		return mv;

	}// commonList
	
	
	

	@RequestMapping(value="commonUpdate.do")
	public ModelAndView commonUpdate(@RequestParam HashMap<String,Object> paramMap) {
		
		int result = commonCodeService.commonUpdate(paramMap);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("result",result);
		mv.setViewName("confirm");
		
		return mv;
		
	}//commonUpdate
	
	

	@RequestMapping(value="commonDeleteCheck.do")
	public @ResponseBody HashMap<String, Integer> commonDeleteCheck(@RequestParam(value = "commCode") String commCode) {

		int listSize = commonCodeService.commonDeleteCheck(commCode);
		
		HashMap<String,Integer> map = new HashMap<String,Integer>();
		map.put("listSize", listSize);
		
		return map;

	}// commonDeleteCheck

	
	
	@RequestMapping(value="commonDelete.do")
	public ModelAndView commonDelete(@RequestParam(value="commCode") String commCode,
			@RequestParam HashMap<String, Object> paramMap) {

		int result = commonCodeService.commonDelete(commCode);

		ModelAndView mv = new ModelAndView();

		mv.addObject("result", result);
		mv.setViewName("confirm");
		//mv.setView(new RedirectView("commonList.do"));

		return mv;

	}// commonDelete

	
	
/* ====================================== 공통코드 상세보기 관련 ======================================================== */
	
	@RequestMapping(value="commonInfoInsert.do")
	public ModelAndView commonInfoInsert(@RequestParam HashMap<String, String> paramMap) {

		int result = commonCodeService.commonInfoInsert(paramMap);

		ModelAndView mv = new ModelAndView();

		mv.addObject("result", result);
		mv.setViewName(PRE_VIEW_PATH + "confirm");

		return mv;

	}// commonInfoInsert

	
	
	@RequestMapping(value="commonInfoList.do")
	public @ResponseBody List<HashMap<String, String>> commonInfoList(@RequestParam(value="commPrntCode") String commPrntCode) {

		List<HashMap<String, String>> list = commonCodeService.commonInfoList(commPrntCode);

		return list;

	}// commonInfoList

	
	
	@RequestMapping(value="paging.do")
	public List<HashMap<String, Integer>> paging(HttpServletRequest request) {

		String selectPageNum = request.getParameter("selectPageNum");

		if (selectPageNum == null || selectPageNum == "") {
			selectPageNum = "1";
		}

		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("selectPageNum", selectPageNum);

		List<HashMap<String, Integer>> pagingList = commonCodeService.paging(paramMap);

		return pagingList;

	}// paging

	
}// class
