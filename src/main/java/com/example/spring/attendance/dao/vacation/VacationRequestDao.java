package com.example.spring.attendance.dao.vacation;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/* 휴가 신청하기 DAO */

@Repository("vacationRequestDao")
public class VacationRequestDao {
	
	private static final Logger logger = LoggerFactory.getLogger(VacationRequestDao.class);
	
	@Autowired
	private SqlSession sqlSession;
	private String nameSpaceName = "vacation.";

	public int vacationRequestInsert(HashMap<String,String> map) {
		
		logger.info("vacationREQ DAO 진입>>>>" + map);
		
		int list = this.sqlSession.insert(nameSpaceName + "vacationRequestInsert", map); 
			logger.info("vacationREQ DAO LIST>> " + list);
		return list;
	}
}
