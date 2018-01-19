package com.example.spring.personnel.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring.personnel.dao.ScheduleDao;

@Service
public class ScheduleService {
	
	private static Logger logger = LoggerFactory.getLogger(ScheduleService.class);
	
	@Resource(name="scheduleDao")
	private ScheduleDao scheduleDao;
	
	//일정등록 service
	public int scheduleInsert(HashMap<String, Object> map) {
		logger.debug("schedul insert(service) in");
		
		int result = scheduleDao.scheduleInsert(map);
		
		return result;
	}
	
}
