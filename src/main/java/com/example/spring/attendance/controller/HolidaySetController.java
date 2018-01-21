package com.example.spring.attendance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//관리자용
@Controller
public class HolidaySetController {

	private static final Logger logger = LoggerFactory.getLogger(HolidaySetController.class);

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
}
