<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴가신청현황</title>
<link rel="stylesheet" href="/spring/resources/common/css/vacation.css" />
<link rel="stylesheet" href="/spring/resources/common/css/bootstrap2-toggle.min.css" />
<script src="/spring/resources/common/js/bootstrap2-toggle.min.js"></script>
<script type="text/javascript">

//테이블 내용 가운데정렬
$(document).ready(function() { 
    $('.table tr').children().addClass('text-center');
});

//달력
$(function () {
	$('#startDate').datetimepicker({ //휴가시작일 달력
		viewMode: 'days',
		format: 'YYYY-MM-DD'
	});
    
	$('#endDate').datetimepicker({ //휴가종료일 달력
		viewMode: 'days',
		format: 'YYYY-MM-DD'
	});
	
	//휴가종료날짜가 시작날짜 이전인 날짜는 선택 불가능하도록 제한
	$('#startDate').on("dp.change", function(e) {
		$('#endDate').data("DateTimePicker").minDate(e.date);
	});
});	

//날짜 출력
function test(){
	alert($('#baseYear').val());
}

//테이블 정렬
$(function(){
	$("#vacationTable").tablesorter();
});

$(function(){ 
	$("#vacationTable").tablesorter( {sortList: [[0,0], [1,0]]} ); 
});

//체크박스 전체선택
function checkAllFunc(obj){ //최상단 체크박스를 click하면
	$("input[type='checkbox'][name=chk]").each(function() {
		this.checked = obj.checked;  //name이 chk인 체크박스를 checked로 변경
	})
}

/* 사원선택 모달 start */

$(function(){ //사원선택 모달 체크박스 선택 1개로 제한(라디오버튼처럼)
	$("input[type='checkbox'][name=emnoChk]").click(function(){
		if($(this).prop('checked')){ //check 이벤트가 발생했는지
			//체크박스 전체를 checked 해제후 click한 요소만 true로 지정
			$("input[type='checkbox'][name=emnoChk]").prop("checked", false);
			$(this).prop('checked',true);
		}
	});
});

	//선택한 사원정보를 출장신청 폼에 자동 입력하기
	function emnoClick(){
		var chkTr = $('input[name=emnoChk]:checked').closest('tr'); //체크된 체크박스와 가장 가까운 tr
		var emnoVal = chkTr.children().eq(1).text(); //tr 하부 2번째 td의 텍스트(사번)
		var nameVal = chkTr.children().eq(2).text(); //tr 하부 3번째 td의 텍스트(이름)
// 		var departmentVal = chkTr.children().eq(3).text(); //tr 하부 4번째 td의 텍스트(부서)
// 		var positionVal = chkTr.children().eq(4).text(); //tr 하부 5번째 td의 텍스트(직급)
		
//		console.log(emnoVal, nameVal, departmentVal, positionVal);
		
		$('#emno').val(emnoVal);
		$('#name').val(nameVal);
// 		$('#department').val(departmentVal);
// 		$('#position').val(positionVal);
	}

/* 사원선택 모달 end */

//일괄 승인완료 버튼
function toggleOn(){
	var chk = $("[name=chk]").length; //체크박스 갯수

	$("[name=chk]").each(function() {
		console.log(chk);
		var progTr = $(this).closest('tr'); //체크박스와 가까운 위치의 tr
		var progTd = progTr.children().eq(7); //tr 자식인 7번째 인덱스의 td(토글키 있는 위치의 td)

// 		if(progTd.children().children("#progToggle").is(':checked') == true){
// 			console.log('1');
// 		}
		if($(this).prop('checked')){
			progTd.children().children("#progToggle").prop('checked', true).change();
		}else{
			
		}
	})
}




//휴가조회(관리자) 페이지로 이동
function vacationListAdmin(){
	alert('저장되었습니다.');
	
	window.location.href = "${pageContext.request.contextPath}/vacationListAdmin";
}




</script>
</head>
<body>
	<div class="main" style="min-height: 867px;">
		<div class="main-content">
			<div class="container-fluid">
			<h3 class="page-title">휴가신청현황</h3>
				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">휴가항목 선택</h3> -->
<!-- 							<p class="subtitle">설명이 필요할 경우 추가 예정</p> -->
<!-- 					</div> -->
					<div class="panel-body">
						<form class="form-inline" name="f1">
<!-- 							<i class="fa fa-asterisk-red" aria-hidden="true" ></i>							 -->
							신청일자
							<!-- 달력 -->
							<div class="input-group date" id="startDate">
								<input type="text" class="form-control" id="vastStartDate"/>
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
								</span>
							</div>
							~
							<!-- 달력 -->
							<div class="input-group date" id="endDate">
						  	<input type="text" class="form-control" id="vastEndDate"/>
						    <span class="input-group-addon">
							    <span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
						    </span>
						  </div>
						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  
							사원번호
							<div class="input-group">	
								<input type="text" class="form-control" id="textarea">
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-search" aria-hidden="true" data-toggle="modal" data-target="#emnoModal"></span> <!-- 검색 아이콘 -->
								</span>
							</div>
							<input type="text" class="form-control">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							결재상태
							<select name="vacationCategories" class="form-control">
								<option value="dog">전체</option>
								<option value="dog">승인대기</option>
								<option value="cat">승인완료</option>
<!-- 								<option value="cat">반려</option> -->
							</select>

							<input type="button" class="btn btn-primary" style="float:right;" name="search" onclick="test()" value="검색">
						</form>
					</div>
				</div>


				<div class="panel panel-headline">
<!-- 					<div class="panel-heading"> -->
<!-- 						<h3 class="panel-title">제목</h3> -->
<!-- 					</div> -->
					<div class="panel-body"> 
						<div class="list_wrap">
							<form class="form-inline" name="f2">
								<table class="table tablesorter table-bordered" id="vacationTable">
									<thead>
										<tr>
											<th>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" onclick="checkAllFunc(this)">
													<span></span>
												</label>
											</th>
											<th>신청일</th>
											<th>휴가구분</th>
											<th>시작일</th>
											<th>종료일</th>
											<th>일수</th>
											<th>휴가사유</th>
											<th>결재상태</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="chk">
													<span></span>
												</label>
											</td>
											<td>2018.01.01</td>
											<td>연차</td>
											<td>2018.01.02</td>
											<td>2018.01.02</td>
											<td>1</td>
											<td>쉬고싶어요</td>
											<td><input type="checkbox" data-toggle="toggle" id="progToggle" data-on="완료" data-off="대기" data-onstyle="primary" data-width="75" data-height="30"></td>
										</tr>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="chk">
													<span></span>
												</label>
											</td>
											<td>2018.01.08</td>
											<td>경조사휴가</td>
											<td>2018.01.08</td>
											<td>2018.01.10</td>
											<td>3</td>
											<td>조부모상</td>
											<td><input type="checkbox" data-toggle="toggle" id="progToggle" data-on="승인완료" data-off="승인대기" data-onstyle="success" data-width="120" data-height="20" data-size="small"></td>
										</tr>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="chk">
													<span></span>
												</label>
											</td>
											<td>2018.01.17</td>
											<td>휴가</td>
											<td>2018.01.18</td>
											<td>2018.01.19</td>
											<td>2</td>
											<td>개인사유</td>
											<td><input type="checkbox" data-toggle="toggle" id="progToggle" data-on="승인완료" data-off="승인대기" data-onstyle="success" data-width="120" data-height="20" data-size="small"></td>

										</tr>
									</tbody>
								</table>
							</form>
						</div>
						<!-- END list table 영역 -->
						    
						<!-- 버튼영역 -->
						<div class="text-center"> 
							<button type="button" class="btn btn-info" onclick="toggleOn()">승인완료</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-danger" onclick="vacationListAdmin()">저장하기</button>
						</div>
						<!-- END 버튼영역 -->
					</div>
				</div>
			</div>
			

			<!-- 사원번호 Modal -->
			<div id="emnoModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			  
			  <!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<p class="modal-title">사번 정보 조회</p>
					</div>
					<div class="modal-body">
						<div class="search_wrap" style="padding: 0px 10px 20px 15px; ">
							<form class="form-inline">
								검색어&nbsp;<input type="text" class="form-control">&nbsp;&nbsp;&nbsp;
								<label class="fancy-checkbox-inline">
									<input type="checkbox" name="">
									<span>퇴직자 포함</span>
								</label>
								<input type="button" class="btn btn-primary" style="float:right;" name="search" onclick="emnoSearch()" value="검색">
							</form>
						</div>

						<div class="list_wrap">
							<table class="table tablesorter table-bordered">
								<tbody>
									<thead>
										<tr>
											<th></th>
											<th>사원번호</th>
											<th>성명</th>
											<th>부서</th>
											<th>직급</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="emnoChk">
													<span></span>
												</label>
											</td>
											<td>12345</td>
											<td>유성실</td>
											<td>개발팀</td>
											<td>사원</td>
										</tr>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="emnoChk">
													<span></span>
												</label>
											</td>
											<td>2345</td>
											<td>유성실</td>
											<td>개발팀</td>
											<td>사원</td>
										</tr>
										<tr>
											<td>
												<label class="fancy-checkbox-inline">
													<input type="checkbox" name="emnoChk">
													<span></span>
												</label>
											</td>
											<td>17895</td>
											<td>유성실</td>
											<td>개발팀</td>
											<td>사원</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal" onclick="emnoClick()">선택</button>
						</div>
					</div>
				</div>
			</div>
			<!-- END MODAL -->
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN -->
	
	
</body>
</html>