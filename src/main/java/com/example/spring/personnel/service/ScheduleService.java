package com.example.spring.personnel.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
	public int scheduleInsert(HashMap<String, String> map) {
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String today = sdf.format(cal.getTime());
		map.put("startDate", map.get("startDate")+"T"+map.get("startTime")+":00");
		map.put("endDate", map.get("endDate")+"T"+map.get("endTime")+":00");
		map.put("createDate", today);
		map.put("updateDate", "");
		map.put("delYN", "N");
		
		int result = scheduleDao.scheduleInsert(map);
		
		return result;
	}
	
	//일정상세보기
	public List<String> scheduleDetail(HashMap<String, String> map){
		System.out.println("일정상세보기(service)");
		
		List<String> list = scheduleDao.scheduleDetail(map);
		
		return list;
	}
	
	//사원 일정db service
	public List<String> scheduleDb(String emno){
		
		List<String> list = scheduleDao.scheduleDb(emno);
		
		return list;
	}
	
}
