package com.example.spring.personnel.dao;

import java.util.HashMap;

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
		
		int result = (int)this.sql.insert(namespace+"scheduleInsert",map);
		
		return result;
	}
	
	//일정상세보기
	public List<String> scheduleDetail(HashMap<String, String> map){
		System.out.println("일정상세보기(dao)");
		System.out.println("map : " + map);
		List<String> list = this.sql.selectList(namespace+"scheduleDetail",map);
		
		System.out.println("db한 list : " + list);
		
		return list;
	}
	
	//사원일정db dao
	public List<String> scheduleDb(String emno){
		
		List<String> list = this.sql.selectList(namespace+"scheduleDb",emno);
		
		return list;
	}
	
}
