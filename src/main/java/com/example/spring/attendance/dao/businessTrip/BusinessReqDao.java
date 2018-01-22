package com.example.spring.attendance.dao.businessTrip;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("businessReqDao")
public class BusinessReqDao {

	private static final Logger logger = LoggerFactory.getLogger(BusinessReqDao.class);
	
	@Autowired
	private SqlSession sqlSession;
	private String nameSpaceName = "business.";

	public int businessRequest(HashMap<String,String> map) {
		logger.debug("dao >>> "+map);
		
		int list = this.sqlSession.insert(nameSpaceName + "businessRequest", map);
		
		logger.debug("dao List: "+list);
		
		return list;
	}
}
