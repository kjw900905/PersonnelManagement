<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/spring/resources/common/js/jquery-3.2.1.min.js"></script>
<script language="javascript">

	$(document).ready(

		function insertConfirm(){
			
			if(${result} === 1){
				alert("작업 완료");
				location.href = "/spring/commonList.do";
			}else{
				alert("작업 실패");
				location.href = "/spring/commonList.do";
			}//if
			
	});//insertConfirm
	


</script>
</head>
<body>

</body>
</html>