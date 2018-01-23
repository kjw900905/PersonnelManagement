package com.example.spring.attendance.dao.attend;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MnthngAttdCrtClsDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MnthngAttdCrtClsDao.class);

	@Autowired
	SqlSession sqlSession;
	
	private String nameSpaceName = "mnthngAttdCrtCls.";
	
	public List<HashMap<String, Object>> readMnthngAttdCrtCls(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> resultList 
			= this.sqlSession.selectList(nameSpaceName + "readMnthngAttdCrtCls", paramMap);
		
		return resultList;
	}

}
