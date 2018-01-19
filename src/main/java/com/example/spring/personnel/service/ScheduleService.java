package com.example.spring.personnel.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.spring.personnel.dao.ScheduleDao;

@Service
public class ScheduleService {
	
	
	@Resource(name="scheduleDao")
	private ScheduleDao scheduleDao;
	
	//일정등록 service
	public int scheduleInsert(HashMap<String, Object> map) {
		System.out.println("schedul insert(service) in");
		
		int result = scheduleDao.scheduleInsert(map);
		
		return result;
	}
	
}
