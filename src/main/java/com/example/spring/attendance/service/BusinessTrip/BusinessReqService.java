package com.example.spring.attendance.service.BusinessTrip;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.businessTrip.BusinessReqDao;

@Service
public class BusinessReqService {
	
	private static final Logger logger = LoggerFactory.getLogger(BusinessReqService.class);

	@Resource(name="businessReqDao")
	private BusinessReqDao businessReqDao;
	
	private String PRE_VIEW_PATH = "/business/";
	
	public int businessRequest(HashMap<String,String> map) {
		
		int list = businessReqDao.businessRequest(map);
		
		logger.debug("service>>> " + list);
		
		return list;
	}
}
