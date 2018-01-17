<!-- 
	휴가월마감(관리자) - 유성실,신지연
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴가 월마감</title>
<link type="text/css" rel="stylesheet" href="/spring/resources/common/css/vacation.css" />
<script>

	//테이블 내용 가운데정렬
	$(document).ready(function() { 
	    $('.table tr').children().addClass('text-center');
	    console.log('hg');
	});
	
	//달력
	$(function () {
	    $('#monthDate').datetimepicker({
	    	viewMode: 'months',
	    	format: 'YYYY-MM'
	    });
	});


</script>
</head>
<body>
	<div class="main" style="min-height: 867px;">
		<div class="main-content">
			<div class="container-fluid">
			<h3 class="page-title">휴가월마감</h3>
				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">휴가항목 선택</h3> -->
<!-- 							<p class="subtitle">설명이 필요할 경우 추가 예정</p> -->
<!-- 					</div> -->
					<div class="panel-body">
						<form class="form-inline">
							<i class="fa fa-asterisk-red" aria-hidden="true" ></i>마감일자
							<!-- 달력 -->
							<div class="input-group date" id="monthDate">
						  	<input type="text" class="form-control" id="modeApplicationDate"/>
						    <span class="input-group-addon">
							    <span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
						    </span>
						  </div>
							
							
							<input type="button" class="btn btn-primary" style="float:right;"name="search" value="검색">
						</form>
					</div>
				</div>
				
				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">제목</h3> -->
<!-- 					</div> -->
							
					<div class="panel-body"> 
						<div class="list_wrapper">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="text-center">구분</th>
										<th class="text-center">사원번호</th>
										<th class="text-center">성명</th>
										<th class="text-center">부서</th>
										<th class="text-center">직위</th>
										<th class="text-center">전체</th>
										<th class="text-center">사용일수</th>
										<th class="text-center">잔여일수</th>
										<th class="text-center">기타</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>재직</td>
										<td>123456</td>
										<td>개츠비</td>
										<td>개발팀</td>
										<td>팀장</td>
										<td>25</td>
										<td>27</td>
										<td>-2</td>
										<td>결혼</td>
									</tr>
									<tr>
										<td>재직</td>
										<td>123456</td>
										<td>데이지</td>
										<td>기획팀</td>
										<td>팀장</td>
										<td>25</td>
										<td>25</td>
										<td>0</td>
										<td></td>
									</tr>
									<tr>
										<td>퇴직</td>
										<td>123456</td>
										<td>윌슨</td>
										<td>디자인</td>
										<td>대리</td>
										<td>20</td>
										<td>10</td>
										<td>10</td>
										<td>조부모상</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- END list table 영역 -->
						    
						<!-- 버튼영역 -->
						<div class="text-right"> 
							<button type="button" class="btn btn-danger">마감하기</button>
						</div>
						<!-- END 버튼영역 -->
					</div>
				</div>
			</div>
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN -->
</body>
</html>