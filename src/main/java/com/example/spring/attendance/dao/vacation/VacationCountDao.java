package com.example.spring.attendance.dao.vacation;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.spring.attendance.service.vacation.VacationRequestService;

/* 휴가 개수 계산하기 DAO */

@Repository("VacationCountDao")
public class VacationCountDao {

	private static final Logger logger = LoggerFactory.getLogger(VacationCountDao.class);
	
	@Autowired
	private SqlSession sqlSession;
	private String nameSpaceName = "";


	public String vacationCount() {
		return "";
	}
}
