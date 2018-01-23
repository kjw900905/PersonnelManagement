package com.example.spring.attendance.controller.holidaySet;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
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
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

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

	public @ResponseBody HashMap<String, String> holidaySetDBInsert(@RequestParam List<String> values) {
		logger.debug("-----------------------------------------holidaySetDBInsert 들어왔다");
		
		HashMap<String, String> map = new HashMap<String, String>();
		Gson gson = new Gson();
		//gson.toJson
		
		for(int i = 0 ; i < values.size() ; i++) {
			System.out.println(values.get(i));
		}
		
//		try {
//			body = URLDecoder.decode(body, "UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
//		System.out.println(body);
		
//		Iterator<String> keys = paramMap.keySet().iterator();
//		
//		while(keys.hasNext()) {
//			String key = keys.next();
//			System.out.println(String.format("키 : %s, 값 : %s", key, paramMap.get(key)));
//		}
//		
		map.put("success", "true");

		return map;
		
		
		/*Iterator<String> keys = paramMap.keySet().iterator();
		
		while(keys.hasNext()) {
			String key = keys.next();
			System.out.println(String.format("키 : %s, 값 : %s", key, paramMap.get(key)));
		}*/
		
		//int result = holidaySetService.holidaySetDBInsert(paramMap);
		
		//ModelAndView mv = new ModelAndView();
		
		//mv.setViewName("holidaySet");
	}
}
