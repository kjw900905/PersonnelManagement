package com.example.spring.attendance.controller.businessTrip;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.spring.attendance.service.BusinessTrip.BusinessReqService;

//출장
@Controller
public class BusinessReqController {
	
	private static final Logger logger = LoggerFactory.getLogger(BusinessReqController.class);
	
	@Autowired
	private BusinessReqService businessReqService; //서비스
	
	private String PRE_VIEW_PATH = "/business/";
	
	//출장신청
	@RequestMapping(value = "/businessRequest")
	public String businessRequestPage() {
		return "businessRequest";
	}

	//출장신청 사원정보조회
	@RequestMapping(value="/businessRequestEmpList.ajax")
	public @ResponseBody HashMap<String, Object> businessRequestEmpList() {

		HashMap<String,Object> map = new HashMap<String,Object>();
		
		List<HashMap<String,Object>> list = businessReqService.businessRequestEmpList();
		
		map.put("empList",list);

//		if(list == null) {
//			map.put("success", "Y");
//		}else {
//			map.put("empList",list);
//			map.put("success", "Y");
//		}

		return map;
	}

	//출장신청 insert
	@RequestMapping(value = "/businessRequestInsert.ajax")
	public @ResponseBody HashMap<String,String> businessRequest(
			@RequestParam HashMap<String,String> map) {

		logger.debug("parameter >>>  " + map);

		int list = businessReqService.businessRequest(map);

		if(list == 0) {
			map.put("success", "N");
		}else {
			map.put("success", "Y");
		}

		return map;
	}
}