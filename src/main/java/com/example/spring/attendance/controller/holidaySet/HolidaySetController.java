package com.example.spring.attendance.controller.holidaySet;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.attendance.service.holidaySet.HolidaySetService;

//관리자용
@Controller
public class HolidaySetController {

	private static final Logger logger = LoggerFactory.getLogger(HolidaySetController.class);

	@Autowired
	private HolidaySetService holidaySetService;
	
	//관리자 - 휴가리스트 조회하기
	@RequestMapping(value = "/holidaySet")
	public String vatacionListAdminPage() {
		return "holidaySet";
	}
	
	//관리자 - 휴가리스트 조회하기
	@RequestMapping(value = "/holiDyMng")
	public String vatacionListAdminPage2() {
		return "holiDyMng";
	}
	
	@RequestMapping(value = "/holidaySetDBInset.ajax")
	public @ResponseBody HashMap<String, String> holidaySetDBInsert(@RequestBody List<HashMap<String, String>> paramMap) {
		logger.debug("-----------------------------------------holidaySetDBInsert 들어왔다");
		
		/*Iterator<String> keys = paramMap.keySet().iterator();
		
		while(keys.hasNext()) {
			String key = keys.next();
			System.out.println(String.format("키 : %s, 값 : %s", key, paramMap.get(key)));
		}*/
		
		//int result = holidaySetService.holidaySetDBInsert(paramMap);
		paramMap.put("success", "true");
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("holidaySet");
		
		return paramMap;
	}
}
