package com.example.spring.attendance.service.attend;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.attendance.dao.attend.MnthngAttdCrtClsDao;

@Service
public class MnthngAttdCrtClsService {
	
	private static final Logger logger = LoggerFactory.getLogger(MnthngAttdCrtClsService.class);

	@Autowired
	MnthngAttdCrtClsDao mnthngAttdCrtClsDao; 
	
	public List<HashMap<String, Object>> readMnthngAttdCrtCls(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return mnthngAttdCrtClsDao.readMnthngAttdCrtCls(paramMap);
	}

}
