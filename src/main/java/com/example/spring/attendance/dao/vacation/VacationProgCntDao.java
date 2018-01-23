package com.example.spring.attendance.dao.vacation;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/* 휴가 신청현황 - 승인대기 개수 DAO */

@Repository("vacationProgCntDao")
public class VacationProgCntDao {

	private static final Logger logger = LoggerFactory.getLogger(VacationProgCntDao.class);
	
	@Autowired
	private SqlSession sqlSession;
	private String nameSpaceName = "vacation.";

	
	
	public int vacationProgCntNum() {
		
		logger.info("vacation 휴가승인 개수 DAO///////");
		
		int countNum = this.sqlSession.selectOne(nameSpaceName + "vacationProgCntNum");
				logger.info("vacationProg 휴가승인대기 개수 dao>>>> " + countNum);	

	return countNum;	
	
	
	
/*	public List<HashMap<String, Object>> vacationProgCntNum() {
		
		logger.info("vacation 휴가승인 개수 DAO///////");
		
		List<HashMap<String, Object>> countNum = this.sqlSession.selectList(nameSpaceName + "vacationProgCntNum");
				logger.info("vacationProg 휴가승인대기 개수>>>> " + countNum);	

		return countNum;		*/
				
	}
}

