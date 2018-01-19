package com.example.spring.personnel.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.spring.personnel.service.ScheduleService;

@Repository("scheduleDao")
public class ScheduleDao {
	
	private static Logger logger = LoggerFactory.getLogger(ScheduleDao.class);
	
	@Autowired
	private SqlSession sql; 
	private String namespace = ".schedule";
	
	//일정등록
	public int scheduleInsert(HashMap<String, Object> map) {
		logger.debug("scheduleInsert(dao) in");
		
		int result = 0;//this.sql.selectList(namespace+"menuList");
		
		return result;
	}
	
}
