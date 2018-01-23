package com.example.spring.personnel.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("scheduleDao")
public class ScheduleDao {
	
	
	@Autowired
	private SqlSession sql; 
	private String namespace = ".schedule";
	
	//일정등록
	public int scheduleInsert(HashMap<String, Object> map) {
		System.out.println("scheduleInsert(dao) in");
		
		int result = 0;//(int)this.sql.insert(namespace+"schedule");
		
		return result;
	}
	
}
