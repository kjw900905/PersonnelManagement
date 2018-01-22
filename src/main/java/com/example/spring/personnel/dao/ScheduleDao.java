package com.example.spring.personnel.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("scheduleDao")
public class ScheduleDao {
	
	
	@Autowired
	private SqlSession sql; 
	private String namespace = "schedule.";
	
	//일정등록 dao
	public int scheduleInsert(HashMap<String, String> map) {
		System.out.println("scheduleInsert(dao) in");
		System.out.println("map(dao) : " + map);
		
		int result = (int)this.sql.insert(namespace+"scheduleInsert",map);
		
		return result;
	}
	
	//사원일정db dao
	public List<String> scheduleDb(String emno){
		
		List<String> list = this.sql.selectList(namespace+"scheduleDb",emno);
		
		return list;
	}
	
}
