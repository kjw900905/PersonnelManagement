package com.example.spring.attendance.controller.vacation;

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

import com.example.spring.attendance.service.vacation.VacationRequestService;


/* 휴가 신청하기 */

@Controller
public class VacationRequestController {

	private static final Logger logger = LoggerFactory.getLogger(VacationRequestController.class);

	@Autowired
	private VacationRequestService vacationRequestService;
	
	private String PRE_VIEW_PATH = "/vacation/";
	
	/* 휴가 신청 */
	@RequestMapping(value="vacationRequest")
	public String vacationRequest() {
		return "vacationRequest";
	}
	
	
	/* 휴가 신청 insert */
	@RequestMapping(value = "/vacationRequestInsert.ajax")
	public @ResponseBody HashMap<String,String> vatacionRequestInsert(
			@RequestParam HashMap<String,String> map){ 
		
		logger.info("vacationRequest CONTROLL>>>" + map);
		
		
		int list = vacationRequestService.vacationRequestInsert(map);
			if(list == 0) {
				map.put("success", "N");
			} else{
				map.put("success", "Y");
			}//if

			logger.info("vacationREQ CONTROLLER LIST>>>>" + list);
		return map;
	}
	
	
	
/*	
	@RequestMapping(value="ajaxFormSubmit.ajax")
	public @ResponseBody HashMap<String,String> ajaxFormSubmit(
			@RequestParam HashMap<String,String> map){
		
		logger.debug(map.get("vastCrtData") + map.get("vastC") + map.get("vastStartDate") + map.get("vastEndDate") + map.get("vastCont"));
		
		return map;
	}
*/	
	
}
