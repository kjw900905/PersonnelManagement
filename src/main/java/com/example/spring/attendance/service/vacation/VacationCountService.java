package com.example.spring.attendance.service.vacation;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.vacation.VacationCountDao;

/* 휴가 개수 계산하기 */

@Service
public class VacationCountService {

	private static final Logger logger = LoggerFactory.getLogger(VacationCountService.class);
	
	@Resource(name="VacationCountDao")
	private VacationCountDao vacationCountDao;
	
	
	public String vacationCount() {
		return "";
	}
}
