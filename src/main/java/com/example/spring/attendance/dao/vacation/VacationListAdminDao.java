package com.example.spring.attendance.dao.vacation;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/* 휴가 조회하기 DAO - 관리자 */

@Repository("VacationListAdminDao")
public class VacationListAdminDao {

	private static final Logger logger = LoggerFactory.getLogger(VacationListAdminDao.class);
	
	/*@Autowired
	private SqlSession sqlSession;
	private String nameSpaceName = "";


	public String vacationListAdmin() {
		return "";
	}*/
}
