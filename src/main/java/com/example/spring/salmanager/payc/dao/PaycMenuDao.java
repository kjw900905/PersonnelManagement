package com.example.spring.salmanager.payc.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("paycMenuDao")
public class PaycMenuDao {

	@Autowired
    private SqlSession sqlSession;
    private String nameSpaceName = "payc.";

    public List<HashMap<String, Object>> paycList(HashMap<String,String> map){
    	List<HashMap<String, Object>> list = this.sqlSession.selectList(nameSpaceName + "paycList", map);

        return list;
    }
    
    public void makePaycInsert(HashMap<String, String> map) {
    	
        this.sqlSession.insert(nameSpaceName+"makePaycInsert", map);
    }
    
    public void acalPayc(HashMap<String, String> map) {
    	
        this.sqlSession.insert(nameSpaceName+"makePaycInsert", map);
    }
}
