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
<<<<<<< HEAD
	public int scheduleInsert(HashMap<String, String> map) {
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String today = sdf.format(cal.getTime());
		map.put("startDate", map.get("startDate")+"T"+map.get("startTime")+":00");
		map.put("endDate", map.get("endDate")+"T"+map.get("endTime")+":00");
		map.put("createDate", today);
		map.put("updateDate", "");
		map.put("delYN", "N");
=======
	public int scheduleInsert(HashMap<String, Object> map) {
		System.out.println("schedul insert(service) in");
>>>>>>> origin/제영호
		
		int result = scheduleDao.scheduleInsert(map);
		
		return result;
	}
	
}
