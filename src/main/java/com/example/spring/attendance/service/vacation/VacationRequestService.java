package com.example.spring.attendance.service.vacation;

import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.vacation.VacationRequestDao;


/* 휴가 신청하기 SERVICE */

@Service
public class VacationRequestService {

	private static final Logger logger = LoggerFactory.getLogger(VacationRequestService.class);
	
	@Resource(name="vacationRequestDao")
	private VacationRequestDao vacationRequestDao;
	
	private String PRE_VIEW_PATH = "/vacation/";
	
	public int vacationRequestInsert(HashMap<String,String> map) {
		
		logger.info("vacationREQ SERVICE 진입>>>>" + map);
		
		int list = vacationRequestDao.vacationRequestInsert(map); 
		
			logger.info("vacationREQ SERVICE LIST>>>>" + list);
		
		return list;
	}
	
}
