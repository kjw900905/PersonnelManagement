<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴가개수설정</title>
<link rel="stylesheet" href="/spring/resources/common/css/vacation.css" />
<script type="text/javascript">

//테이블 내용 가운데정렬
$(document).ready(function() { 
    $('.table tr').children().addClass('text-center');
});

//년도 달력
$(function () {
    $('#yearDateTimePicker').datetimepicker({
    	viewMode: 'years',
    	format: 'YYYY'
    });
});

function test(){
	alert($('#baseYear').val()); //날짜 출력
}

</script>
</head>
<body>
	<div class="main" style="min-height: 867px;">
		<div class="main-content">
			<div class="container-fluid">
			<h3 class="page-title">휴가개수설정</h3>
				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">휴가항목 선택</h3> -->
<!-- 							<p class="subtitle">설명이 필요할 경우 추가 예정</p> -->
<!-- 					</div> -->
					<div class="panel-body">
						<form class="form-inline" name="f1">
							<i class="fa fa-asterisk-red" aria-hidden="true" ></i>							
							기준년도
							<!-- 달력 -->
							<div class="input-group date" id="yearDateTimePicker">
						  	<input type="text" class="form-control" id="baseYear"/>
						    <span class="input-group-addon">
							    <span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
						    </span>
						  </div>
						  
							검색어
							<select name="" value="seacrchOption" class="form-control">
								<option value="name">성명</option>
								<option value="number">사번</option>
								<option value="">부서</option>
							</select>
							<input type="text" class="form-control">
							&nbsp;&nbsp;&nbsp;
							<label class="fancy-checkbox-inline">
								<input type="checkbox" name="">
								<span>퇴직자 포함</span>
							</label>
							<input type="button" class="btn btn-primary" style="float:right;" name="search" onclick="test()" value="검색">
						</form>
					</div>
				</div>
				
				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">제목</h3> -->
<!-- 					</div> -->
					<div class="panel-body"> 
						<div class="list_wrapper">
							<form class="form-inline" name="f2">
								<table class="table table-bordered">
<!-- 									<thead> -->
										<tr>
											<th>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="">
													<span></span>
												</label>
											</th>
											<th>사원번호</th>
											<th>성명</th>
											<th>부서</th>
											<th>직위</th>
											<th>입사일</th>
											<th>휴가일수</th>
										</tr>
<!-- 									</thead> -->

									<tbody>
											<tr>
												<td>
													<label class="fancy-checkbox-inline">
														<input type="checkbox" name="">
														<span></span>
													</label>
												</td>
												<td>123456</td>
												<td>개츠비</td>
												<td>개발팀</td>
												<td>팀장</td>
												<td>2007-10-15</td>
												<td><input type="text" name="" value="" class="form-control">일</td>
											</tr>
											<tr>
												<td>
													<label class="fancy-checkbox-inline">
														<input type="checkbox" name="">
														<span></span>
													</label>
												</td>
												<td>123456</td>
												<td>데이지</td>
												<td>기획팀</td>
												<td>사원</td>
												<td>2017-12-07</td>
												<td><input type="text" name="" value="" class="form-control">일</td>
											</tr>
									</tbody>
								</table>
							</form>
						</div>
						<!-- END list table 영역 -->
						    
						<!-- 버튼영역 -->
						<div class="text-center"> 
							<button type="button" class="btn btn-info" onclick="">휴가일수 자동계산</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-danger" onclick="">저장하기</button>
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