package com.project.spring.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.project.spring.dao.CommonDao;

@Service
public class CommonService {

	private static Logger logger = LoggerFactory.getLogger(CommonService.class);
	
	@Resource(name="CommonDao")
	private CommonDao commonDao;
	
	int postNum;
	int pageNum;
	
	public CommonService() {
		this.postNum = 5;
		this.pageNum = 5;
	}

	
	public int commonInsert(HashMap<String,String> paramMap) {
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String commCodeCrt = sdf.format(calendar.getTime());
		
		paramMap.put("commPrntCode", "");
		paramMap.put("commPrntName", "");
		paramMap.put("deptUpdtCode", "----");
		paramMap.put("commCodeCrt", commCodeCrt);
		paramMap.put("commCodeUpdt", "--------------");
		paramMap.put("commDelYn", "N");
		
		int result = commonDao.commonInsert(paramMap);
		
		
		return result;
		
	}//commonInsert
	
	
	public String commCodeCheck(String commCode) {

		List<String> list = commonDao.commCodeCheck(commCode);
		
		String checkValue = "";
		
		if(list.size() > 0) {
			
			checkValue = "이미 사용 중인 코드입니다.";
			
		}else {
			
			checkValue = "사용 가능한 코드입니다.";
			
		}//if
		
		
		return checkValue;
		
	}//getDeptName
	
	
	public List<HashMap<String,Object>> commonList(HashMap<String,Object> paramMap){
		
		int allPostNum = commonDao.commAllPostNum(paramMap);
		int postNum = this.postNum;
		int pageNum = this.pageNum;
		int selectPageNum = Integer.parseInt((String)paramMap.get("selectPageNum"));
		//int selectPageNum = 1;
		
		int endPost = selectPageNum*postNum;
			
		if(endPost<1) {
			endPost = 1;
		}
		
		int startPost = (endPost-(postNum-1))-1;
		
		
		paramMap.put("startPost", startPost);
		paramMap.put("postNum", postNum);
		
		
		List<HashMap<String,Object>> list = commonDao.commonList(paramMap);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		Date date = new Date();
		String commCodeCrt ="";
		
		
		for(int i=0; i<list.size(); i++) {
			
			commCodeCrt = String.valueOf(list.get(i).get("commCodeCrt"));
			paramMap.put("commCodeCrt", commCodeCrt);
			//logger.debug("%%%%%%%%%%%%%%%%%%%%%%%%%%commCodeCrt["+i+"]: " + commCodeCrt);
			
		}//for
		
		return list;
		
	}//commonList
	
	
	
	public int commonUpdate(HashMap<String,Object> paramMap) {
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String commCodeUpdt = sdf.format(calendar.getTime());
		
		int commCode = Integer.parseInt((String)paramMap.get("commCode"));
		
		paramMap.put("commCode",commCode);
		paramMap.put("commCodeUpdt",commCodeUpdt);
		
		int result = commonDao.commonUpdate(paramMap);
		
		return result;
		
	}//commonUpdate
	
	
	
	public int commonDeleteCheck(String param) {
		
		int commCode = Integer.parseInt(param);
		
		List<HashMap<String,Integer>> list = commonDao.commonDeleteCheck(commCode);
		
		int listSize = list.size();
		
		return listSize;
		
	}//commonDeleteCheck
	
	
	
	public int commonDelete(String param) {
		
		int commCode = Integer.parseInt(param);
		
		int result = commonDao.commonDelete(commCode);
		
		return result;
		
	}//commonDelete
	
	
	public int commonInfoInsert(HashMap<String,String> paramMap) {
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmdd");
		String commCodeCrt = sdf.format(calendar.getTime());
		
		paramMap.put("commCodeCrt", commCodeCrt);
		paramMap.put("commCodeUpdt", "--------------");
		paramMap.put("deptUpdtCode", "----");
		paramMap.put("commDelYn", "N");
		
		int result = commonDao.commonInfoInsert(paramMap);
		
		return result;
		
	}
	
	
	public List<HashMap<String,String>> commonInfoList(String param){
		
		int commPrntCode = Integer.parseInt(param);
		
		List<HashMap<String,String>> list = commonDao.commonInfoList(commPrntCode);
		
		return list;
		
	}//commonInfoList
	
	
	
	public int commAllPostNum(HashMap<String,Object> map) {
		
		int allPostNum = commonDao.commAllPostNum(map);
		
		return allPostNum;
		
	}//commAllPostNum
	
	
	
	public List<HashMap<String,Integer>> paging(HashMap<String,Object> paramMap){
		
		HashMap<String,Integer> map = new HashMap<String,Integer>();
		List<HashMap<String,Integer>> list = new ArrayList<HashMap<String,Integer>>(); 
		
		
		int allPostNum = commonDao.commAllPostNum(paramMap);
		int postNum = this.postNum;
		int pageNum = this.pageNum;
		int selectPageNum = Integer.parseInt((String)paramMap.get("selectPageNum"));
		//int selectPageNum = 1;
		
		int allPageNum = 0;
		
		if(allPostNum%postNum == 0) {
			allPageNum = allPostNum/postNum;
		}else {
			allPageNum = (allPostNum/postNum)+1;
		}//if
		
		
		int startPage = ((selectPageNum/pageNum)*pageNum)+1;
		
		if(selectPageNum%pageNum == 0) {
			startPage = (((selectPageNum/pageNum)-1)*pageNum)+1;
		}//if
		
		
		int endPage = (startPage+pageNum)-1;
		
		if(endPage > allPageNum) {
			endPage = allPageNum;
		}//if
		
		
		int prevPage = startPage-1;
		
		if(startPage == 1) {
			prevPage = 1;
		}//if
		
		
		int nextPage = startPage+pageNum;
		
		if(nextPage > allPageNum) {
			nextPage = allPageNum;
		}//if
		
		map.put("allPageNum", allPageNum);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("prevPage", prevPage);
		map.put("nextPage", nextPage);
		
		list.add(map);
		
		return list;
		
	}//paging
	
	
	
	
	
	
}//class
