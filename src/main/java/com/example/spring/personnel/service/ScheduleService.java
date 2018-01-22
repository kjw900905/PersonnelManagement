package com.example.spring.personnel.service;

import java.util.HashMap;
import java.util.List;

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
	
	//사원 일정db service
	public List<String> scheduleDb(String emno){
		
		List<String> list = scheduleDao.scheduleDb(emno);
		
		return list;
	}
	
}
