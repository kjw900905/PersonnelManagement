package com.example.spring.attendance.service.holidaySet;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.holidaySet.HolidaySetDao;


@Service
public class HolidaySetService {

	private static final Logger logger = LoggerFactory.getLogger(HolidaySetService.class);

	@Resource(name="holidaySetDao")
	private HolidaySetDao holidaySetDao;
	
	
	public int holidaySetDBInsert(HashMap<String,String> paramMap) {
		int result = holidaySetDao.holidaySetDBInsert(paramMap);
		
		return result;
	}

}
