package com.example.spring.salmanager.emp.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("empMenuDao")
public class EmpMenuDao {

	@Autowired
	private SqlSession sqlSession;// sql 문과 연결하기  위해서 
	private String nameSpaceName = "emp.";
	
	public List<HashMap<String, Object>> newEmpList(HashMap<String, String> map){		
		List<HashMap<String, Object>> list = this.sqlSession.selectList(nameSpaceName+"newEmpList", map);
		
		//System.out.println(list);
		return list;
	}
	public List<HashMap<String, Object>> exiEmpList(HashMap<String, String> map){		
		List<HashMap<String, Object>> list = this.sqlSession.selectList(nameSpaceName+"exiEmpList", map);
		
		//System.out.println(list);
		return list;
	}
	
	
	public List<HashMap<String, Object>> checkbox_Choice(HashMap<String, Object> map){
		List<String> list = new ArrayList<String>();
		
		 for (String mapkey : map.keySet()){
		       //System.out.println("key : " + mapkey + ",value : " + map.get(mapkey));
		        list.add((String) map.get(mapkey));
		    }

			HashMap<String, Object> m1 = new HashMap<String,Object>();
			
			m1.put("list", list);
			//System.out.println("m1 "+m1);
			
			
			List<HashMap<String, Object>> check = this.sqlSession.selectList(nameSpaceName+"checkbox_Choice", m1);
			
			//this.sqlSession.insert(nameSpaceName+"makePaycInsert", map);
			//System.out.println("--------Dao_checkboxChioce 연결성공----------");
			return check;
	} 
	
	public List<HashMap<String, Object>>exi_checkbox_Choice(HashMap<String, String> map){		
		List<String> list = new ArrayList<String>();
		
		 for (String mapkey : map.keySet()){
		       //System.out.println("key : " + mapkey + ",value : " + map.get(mapkey));
		        list.add((String) map.get(mapkey));
		    }

			HashMap<String, Object> m1 = new HashMap<String,Object>();
			
			m1.put("list", list);
		
		
		List<HashMap<String, Object>> check = this.sqlSession.selectList(nameSpaceName+"exi_checkbox_Choice", m1);
		
		//System.out.println(list);
		return check;
	}
	public void insert_newEmp_code(HashMap<String, String> map) {
		 List<String> insertlist = new ArrayList<String>();
		 HashMap<String, Object> m1 = new HashMap<String,Object>();
		 
		 for (String mapkey : map.keySet()){
		        System.out.println("key : " + mapkey + ",value : " + map.get(mapkey));
		        insertlist.add((String) map.get(mapkey));
		        
		      
		        if(insertlist.size() == 5) {
		        	m1.put("list", insertlist);
		        	System.out.println("m1 "+m1);
		        	this.sqlSession.insert(nameSpaceName+"new_empcode_insert", m1);
		        	m1.clear();
		        	
		        	while(insertlist.size()>1) {
		        		
		        		int count=insertlist.size()-1;

		        		insertlist.remove(count);
		        		count--;			
		        	}
		        	
		        	m1.put("empcode",insertlist);
		        	//System.out.println("m1 "+m1);
		        	this.sqlSession.update(nameSpaceName+"sal_y",m1);
		        	m1.clear();
		        	insertlist.clear();
		        	
		        }
		       
		 }
	
		
	}

}
