package com.example.spring.attendance.service.attend;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.attend.HdayExtnNightWorkInqrDao;

@Service
public class HdayExtnNightWorkInqrService {
	
	private static final Logger logger = LoggerFactory.getLogger(HdayExtnNightWorkInqrService.class);

	@Autowired
	HdayExtnNightWorkInqrDao hhayExtnNightWorkInqrDao;
	
	public List<HashMap<String, Object>> readHdayExtnNightWorkInqr(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return hhayExtnNightWorkInqrDao.readHdayExtnNightWorkInqr(map);
	}

}
