<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/common/js/jquery-3.2.1.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<script src="resources/common/js/paging.js"></script>

<head>
<script>
	var i = 0;
	var count = ${count};
	
	

		
	$(document).ready(function() {
						//최상단 체크박스 클릭
			$("#checkall").click(function() {
						//클릭되었으면
				if ($("#checkall").prop("checked") ==true) {//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의

					for (var i = 0; i < count; i++) {
						
						//var code = $('[name=empcode'+i+']').attr('id');
						/* $("input[name=sali"+i+"]").remove();
						   $("input[name=tami"+i+"]").remove();
						   $("input[name=fdei"+i+"]").remove();
						   $("input[name=cmci"+i+"]").remove(); */
						   if ($("#chk" + i).prop("checked") == false) {
								$("#chk" + i).prop("checked",true);
								$("td[name=saltext"+ i+ "]").append('<input type="text" name=sali'+ i+ ' style="width=100%; text-align:right;" size="10">');
								$("td[name=tamtext"+ i+ "]").append('<input type="text" name=tami'+ i+ ' style="width=100%; text-align:right;" size="10">');
								$("td[name=fdetext"+ i+ "]").append('<input type="text" name=fdei'+ i+ ' style="width=100%; text-align:right;" size="10">');
								$("td[name=cmctext"+ i+ "]").append('<input type="text" name=cmci'+ i+ ' style="width=100%; text-align:right;" size="10">');
								$("td[name=empcode"+ i+ "]").append('<input type="hidden" name=code'+i+'  value='+$('[name=empcode'+i+']').attr('id')+' >');
						    }
					}

				}else {
					$("input[type=checkbox]").prop("checked", false);

					for (var i = 0; i < count; i++) {

						$("input[name=sali"+ i + "]").remove();
						$("input[name=tami"+ i + "]").remove();
						$("input[name=fdei"+ i + "]").remove();
						$("input[name=cmci"+ i + "]").remove();
						$("input[name=code"+ i + "]").remove();
					}

				}
			});
	});
	function check(i) {

		if ($("#chk" + i).prop("checked") == true) {
			//alert(list);
			$("td[name=saltext" + i + "]").append('<input type="text" name=sali'+ i+ ' style="width=100%; text-align:right;" size="10">');
			$("td[name=tamtext" + i + "]").append('<input type="text" name=tami'+ i+ ' style="width=100%; text-align:right;" size="10">');
			$("td[name=fdetext" + i + "]").append('<input type="text" name=fdei'+ i+ ' style="width=100%; text-align:right;" size="10">');
			$("td[name=cmctext" + i + "]").append('<input type="text" name=cmci'+ i+ ' style="width=100%; text-align:right;" size="10">');
			$("td[name=empcode"+ i+ "]").append('<input type="hidden" name=code'+i+'  value='+$('[name=empcode'+i+']').attr('id')+' >');
		} else {
			$("input[name=sali" + i + "]").remove();
			$("input[name=tami" + i + "]").remove();
			$("input[name=fdei" + i + "]").remove();
			$("input[name=cmci" + i + "]").remove();
			$("input[name=code" + i + "]").remove();
		
		}

	}
	
/* 	function insert_sal_emp(formId) {
		
		var json;
		$("#" + formId).ajaxForm({
						
			url:"/spring/insert_sal_empcode.ajax",
			type:'GET',
			data:json,
						
			success:function(data) {
										
				if(data.success == "true") {
								
					alert("저장성공!");
				}else {
								
					alert("저장실패");
				}
					console.log("결과데이터 : "+JSON.stringify(data));
					//location.reload();
				},
						
				error:function(jqXHR, textStatus, errorThrown){
					alert("중복된 급여대장이 있습니다. \n" + textStatus + " : " + errorThrown);         
				}
						
		}).submit(); */
		
	function insert_sal_emp(){
				
		var frm = document.f1;
		frm.action ="/spring/insert_sal_empcode.do";
		frm.submit();
	}
	 
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main-content">

		<div class="container-fluid">
			<h3 class="page-title">직원급여정보</h3>

			<div class="col-md-10">
				<div class="panel">
					<div class="panel-heading">

						<form id="frm" name="f1" method="POST">
							<div class="panel-body">
								<table class="table table-bordered">
									<thead>
										<th class="text-center"><input type="checkbox" id="checkall" /></th>
										<th>사번</th>
										<th>사원이름</th>
										<th>급여</th>
										<th>교통비</th>
										<th>식대</th>
										<th>차량유지비</th>

									</thead>
									<c:forEach var="tb" items="${list}" varStatus="status">

										<tr>
											<td width="5" align="center"><input type="checkbox" id="chk${status.index}" onclick="check('${status.index}')"></td>
											<td width="50" name="empcode${status.index}" id="${tb.EMP_EMNO}">${tb.EMP_EMNO}</td>
											<td width="100" >${tb.EMP_NAME}</td>
											<td width="100" name="saltext${status.index}" align="center"></td>
											<td width="100" name="tamtext${status.index}" align="center"></td>
											<td width="100" name="fdetext${status.index}" align="center"></td>
											<td width="100" name="cmctext${status.index}" align="center"></td>
											
										</tr>
									</c:forEach>

							
								</table>
								<input type="submit" class="btn btn-info" value="저장" onclick="insert_sal_emp();">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>