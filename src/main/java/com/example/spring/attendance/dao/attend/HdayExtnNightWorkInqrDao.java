package com.example.spring.attendance.dao.attend;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HdayExtnNightWorkInqrDao {
	
	private static final Logger logger = LoggerFactory.getLogger(HdayExtnNightWorkInqrDao.class);

	@Autowired
	private SqlSession sqlSession;
	
	private String nameSpaceName = "hdayExtnNightWorkInqr.";
	
	public List<HashMap<String, Object>> readHdayExtnNightWorkInqr(HashMap<String, String> paramMap) {
		
		List<HashMap<String, Object>> resultList
			= this.sqlSession.selectList(nameSpaceName + "readHdayExtnNightWorkInqr", paramMap);
		
		return resultList;
	}

}
