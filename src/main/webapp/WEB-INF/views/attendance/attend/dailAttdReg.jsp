<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일일근태등록</title>
<script>

$(function () {
	
	$('#workingDate').datetimepicker({ //근무일자 달력
		viewMode: 'days',
		format: 'YYYY-MM-DD'
	});
	
// 	$alert('#baseDay').val(moment().format('YYYY-MM-DD'));
	
});

 function date(){
	alert($('#workingdate').val()); //날짜 출력
}

	
</script>
</head>
<body>
	<div class="main" style="min-height: 867px;">
		<div class="main-content">
			<div class="container-fluid">
				<h3 class="page-title">일일근태등록</h3>
				<div class="panel">
					<div class="panel-body">
						<form class="form-inline" name="">
							<table class="table table-bordered">
								<tr>
									<td align="center">근무일자</td>
									<td>
										<!-- 달력 : 근무일자 -->										
										<div class="input-group date" id="workingDate">
											<input type="text" class="form-control" id="workingdate"/>
												<span class="input-group-addon">
													<span class="fa fa-calendar" />
												</span>
										</div>
										<input type="button" class="btn btn-danger btn-xs" style="float:right;"name="search" onClick="date()" value="검색">
									</td>
								</tr>							
							</table>
						</form>
					<table class="table table-bordered">
					<form action="">
						<input type="button" class="btn btn-danger btn-xs" style="float:right;"name="leavework" value="퇴근">
						<input type="button" class="btn btn-danger btn-xs" style="float:right;"name="attendance" value="출근">
					</form>
					<h4>◈ 일일근태등록</h4>
						<tr align="center">
							<td>사원번호</td>
							<td>이름</td>
							<td>출근시간</td>
							<td>퇴근시간</td>
							<td>근무시간</td>
						</tr>
						<tr align="center"  class="danger">
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
						</tr>
						<tr align="center">
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
						</tr>
						<tr align="center">
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
							<td> 　　　　 </td>
						</tr>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>