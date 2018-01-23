<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	table{text-align: center;}/*table 값을 가운데 정렬하기 위해서  */
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
List에서 선택된 값이 넘어오는 페이지
<script type="text/javascript" 
    	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
   $(document).ready(function(){
	   //최상단 체크받스 클릭
	   $("#checkall").click(function(){
		   //클릭되었으면
		   if($("#checkall").prop("checked")){
			   //input태크의 name이 chk 인 태크들을 찾아서 ckecked 옵션을 true로 정의
			   $("input[type=checkbox]").prop("checked",true);
			   //클릭이 안되있으면
		   }else{
			   //input태그의 name의 chk인 태그들을 찾아서 checked 옵셥을 false로 정의
			   $("input[type=checkbox]").prop("checked",false);
		   }
	   });	   
	   
	   $("#chk0").click(function(){
		   if($("#chk0").prop("checked") == true) {
		   	  $("td[name=seltext0]").append('<input type="text" name="sali0">');
		   }
		   else{
			  $("input[name=sali0]").remove();
		   }
	   });
   });
   
   
  
   
 /*   for(var i =0; i<${csize}; i++) {
	  $("td[name=seltext]").remove;
	   
	  $("td[name=seltext]").append('<input type="text" name="seltext">');
   } */
   
   
 
	
   
</script>


<p><!--어차피 db 에서 불러와야되는데 넘버만 불러와서 조건문 붙혀 가지고 올려고 했는데 db에 조건을 어떻게 붙힐껀데
	그리고 db 안거치고 바로 가지고 온다고 한들 해당번호에 값의 컬럼들을 가지고 와야하는데  그럴려면 위에있는 방식을 사용해야하잖아.  -->
	<!--컨트롤에 값을 푸리고 그걸 insert 하고 그걸 여기에 뽑아오는건데 db문을 어떻게 할껀데  -->
		        
	
	
     
        <table >
        	<tr>
        		<td><input type="checkbox" id="checkall"></td>
        		<td width=""></td>
        		<td width="180"></td>
        		<td width="280">급여</td> 
        		<td width="250">교통비</td>
        		<td width="260">식대</td>
        		<td width="258">차량유지비</td>
        		<td width="255">직책수당</td>
        	</tr>
        	 
        	 
        	 	
        	 	<table border="1">
        	 		<c:forEach var="checkbox" items="${checkbox}" varStatus="status"><!--var="내가 정해주는 이름인데 무슨이름으로 받을것이냐" items="컨트롤 addObject에 키값" -->       	 	
		        	 	<tr>
			        		<td><input type="checkbox" id="chk${status.index}"/></td>
			        		<td width="100" >${checkbox.boardNum}</td>
			        		<td width="180" >${checkbox.boardName}</td>
			        		<td width="391" name="seltext${status.index}">${checkbox.sempSal}</td>
			        		<td width="391">${checkbox.sempTamt}</td>
			        		<td width="391">${checkbox.sempFdex}</td>
			        		<td width="391">${checkbox.sempCmc}</td>
			        		<td width="391">${checkbox.srnkRamt}</td>
			        	</tr>
		        	 </c:forEach>
        	 	</table>
        </table>
       
    <p>

<p>

   <input type="reset" name="" value="초기화">
   <input type="submit" name="" value="첵크된곳 값넣기">
	
       
    
    
    
    

	

</body>
</html>