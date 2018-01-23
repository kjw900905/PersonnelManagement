<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardList.jsp</title>
</head>
<body>
	
 	<%-- 
 	<p>
 			
 		▶총 게시물수 : ${total.get(0).get("TotalNum")}
 		
	<table border="1">
		<tr>
			<td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td>
		</tr> 		
		<c:forEach var="board" items="${list}">
			<tr>
				<td width="50">${board.boardNum}</td>
				<td width="319">${board.boardTitle}</td>
				<td width="319">${board.boardName}</td>
				<td width="319">${board.createDate}</td>
				<td width="319">${board.count}</td>
			</tr>	
		</c:forEach>  
	</table> 
<P> 		  --%>
<!--+++++++++++++++++++++++++연습++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->			
<%-- 	<select name="selAnimal">
		<c:forEach var="board" items="${list}">
			<option value="dog">${board.boardNum}</option>
		</c:forEach>
	</select> 
<P> --%>
<!--+++++++++++++++project+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->			
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

<script>
 function searchCheck(frm){
     //검색
    
     if(frm.keyWord.value ==""){
         alert("검색 단어를 입력하세요.");
         frm.keyWord.focus();
         return;
     }
     frm.submit();   // 값이 있으면 submit 으로 보내라   
 }
 
 $(document).ready(function(){
	    //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	}) 
</script>



<table>
<%-- 	<tr>      
    	<td><!--이걸 컨트롤에 보내 거기서 기존페이지에 다시 값을 보내되 해당되는 값만 나오게 하고 싶다 ,클릭할때마다 값이 컨트롤에 들어가기 하기 , 그럴려면 첫 페이지 select 리스트 db
    	 에 값을 넣어야되는데 그전에 우선 값을 컨트롤에 받아와야지 -->
    	<form action="Board_Find.jsp" name="serach" method ="post" >
			<select name="selDepartment" onchange="location.href=this.value">
				<option value="/spring/boardList.do">전체</option>
				<option value="Not_Paid">미급여인원</option>
				<option value="/spring/boardList.do?Select_OptionValue=<%="Planning_Dept" %>">기획부</option>
				<option value="/spring/boardList.do?Select_OptionValue=<%="Marketing_Business_Dept" %>">마케팅사업부</option>
				<option value="/spring/boardList.do?Select_OptionValue=<%="Network_Business_Division" %>">네트워크사업부</option>
				<option value="/spring/boardList.do?Select_OptionValue=<%="Department_of_System_Integration" %>">시스템 사업부</option>  
			</select>
				<input type="text" name="keyWord" value="검색하기" onfocus="this.value=''" />
				<input type="button" value="검색" onclick="searchCheck(form)" />          
		</form><!--이건 해당하는것을 검색하는것이니 db를 통해 가야겠다  -->
	</td>
    </tr> --%>
	<form action="/spring/checkbox_Choice.do" > 
	    <table border="1">
		    <tr>
				<td><input type="checkbox" id="checkall" /></td><td>코드번호</td><td>이름</td><td>직책</td><td>작성일</td>
			</tr> 
	    	<c:forEach var="board" items="${list}" varStatus="status"><!--var="내가 정해주는 이름인데 무슨이름으로 받을것이냐" items="컨트롤 addObject에 키값" -->
			    <tr>
			        <td> <input type="checkbox" name="chk" value="${board.boardNum}" /> </td><!--코드번호를 넘길꺼다,name값을 Mamber에 적어 컨트롤에 받아와서 다른 jsp에 받아올꺼다 -->
			        <td width="70">${board.EMP_EMNO}</td>	<!--코드번호  -->
			    	<td width="319">${board.EMP_NAME} </td><!--이름  -->
			    	<td width="319"> ${board.staffMember} </td><!--직책  -->
			    	<td width="319"> ${board.createDate} </td><!--작성일  -->
			    </tr>
			    
			    <input type="hidden" name="checklength" value="${status.end}">
		    </c:forEach>
	    </table>   
    	<p><input width="319" type="submit" value="계산" /><!--이 값을 어떻게 전달하지? request.getParameterValues로 받으면된다.-->
		<input type="reset" name="" value="초기화">
	</form>	

</table>

		
<form action="/spring/resources/Board_insert.html">
	<input type="submit" value="값입력하기">
</form>

</body>
</html>