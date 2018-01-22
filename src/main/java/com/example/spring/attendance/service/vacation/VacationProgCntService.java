package com.example.spring.attendance.service.vacation;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.vacation.VacationProgCntDao;

/* 휴가 신청현황 - 승인대기 개수 SERVICE */

@Service
public class VacationProgCntService {

	private static final Logger logger = LoggerFactory.getLogger(VacationProgCntService.class);
	
	@Resource(name="vacationProgCntDao")
	private VacationProgCntDao vacationProgCntDao;
	
	private String PRE_VIEW_PATH = "/vacation/";
	
	public int vacationProgCntNum() {
		logger.info("vacation 휴가승인 개수 DAO///////");
		
		int countNum = vacationProgCntDao.vacationProgCntNum();
			logger.info("vacationProg 휴가승인대기 개수 service >>>> " + countNum);
		
		return countNum;
	}
	
	
}
