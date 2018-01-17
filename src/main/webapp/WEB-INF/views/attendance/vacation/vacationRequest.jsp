<!-- 
	휴가신청(사원) - 유성실,신지연
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴가신청</title>
<link type="text/css" rel="stylesheet" href="/spring/resources/common/css/vacation.css" />
<script>

	//ajax
	function ajaxFormSubmit(url, formId){
			paging.ajaxFormSubmit(url, formId, function(rslt){
				console.log("ajaxFormSubmit -> callback");
				console.log("결과데이타" + JSON.stringify(rslt));
				
				//insert 성공여부에 따른 alert창 띄우기
// 				if(rslt.result == "true"){
// 					console.log("휴가가 신청되었습니다.");
// 				}
			})
	}

	
	
	//오늘 날짜 자동으로 표시
// 	function autoDate() {
// 		var tDay = new Date();
// 		var tMonth = tDay.getMonth() + 1;
// 		var tDate = tDay.getDate();
// 		if (tMonth < 10)
// 			tMonth = "0" + tMonth;
// 		if (tDate < 10)
// 			tDate = "0" + tDate;
// 		document.getElementById("tDate").value = tDay.getFullYear() + "-"
// 				+ tMonth + "-" + tDate;
// 	}

// 	function addLoadEvent(func) {
// 		var oldonload = window.onload;
// 		if (typeof window.onload != 'function') {
// 			window.onload = func;
// 		} else {
// 			window.onload = function() {
// 				if (oldonload) {
// 					oldonload();
// 				}
// 				func();
// 			}
// 		}
// 	}

// 	addLoadEvent(function() {
// 		autoDate();
// 	});


	//달력
	$(function () {
		$('#crtDate').datetimepicker({ //휴가신청일 달력
			viewMode: 'days',
			format: 'YYYY-MM-DD'
		});
	    
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
	
		//일수 자동 계산
		$('#endDate').on("dp.change", function() { //종료날짜를 변경할 때마다
			var startDate  = moment($('#vastStartDate').val(), "YYYYMMDD");
			var endDate = moment($('#vastEndDate').val(), "YYYYMMDD");
			
			$('#vastVacUd').val(
					endDate.diff(startDate, "days") //endDate-startDate를 일수로 출력
			);
		});
});


</script>
</head>
<body>
	<div class="main" style="min-height: 867px;">
		<div class="main-content">
			<div class="container-fluid">
			<h3 class="page-title">휴가신청</h3>
				<div class="panel">
					<div class="panel-body">
						<form class="form-inline" id="vacReqFrm">
							<table class="table table-bordered">
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>휴가신청일</td>
									<td>
										<!-- 사원 권한: 오늘 날짜 고정 -->
<!-- 									  <input type="text" class="form-control" name="vastCrtData" id="tDate" readonly> -->
										
										<!-- 관리자 권한: 달력 -->
										<div class="input-group date" id="crtDate">
									  	<input type="text" class="form-control" id="vastCrtDate"/>
									    <span class="input-group-addon">
										    <span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
									    </span>
									  </div>

									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>휴가구분</td>
									<td>
										<select name="vacationCategories" class="form-control" name="vastC" id="vastC">
											<option value="halfDayVac">반차</option>
												<option value="yearlyVac">연차</option>
												<option value="menstrualVac">생리휴가</option>
												<option value="sickVac">병가</option>
												<option value="eventVac">경조휴가</option>
												<option value="maternityVac">출산휴가</option>
												<option value="rewardVac">포상휴가</option>
										</select>
									</td>
									<td>전자결재상태</td>
									<td><input type="text" class="form-control" name="prog" id="prog" readonly></td>
<!-- 									<td><i class="fa fa-asterisk-red" aria-hidden="true" ></i>전일/반일</td> -->
<!-- 									<td> -->
<!-- 										<label class="fancy-radio-inline"> -->
<!-- 											<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> -->
<!-- 											<span><i></i>전일</span> -->
<!-- 										</label> -->
<!-- 	 									<label class="fancy-radio-inline"> -->
<!-- 	 										<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> -->
<!-- 	 										<span><i></i>반일</span> -->
<!-- 										</label> -->
<!-- 									</td> -->
								</tr>
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true" ></i>휴가기간</td>
									<td colspan="5">
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
										(일수: <input type="text" class="form-control" id="vastVacUd">)
									</td>

								</tr>
								<tr>
									<td>휴가사유</td>
									<td colspan="7"><input type="text" class="form-control" name="vastCont" id="vastCont"></td>
								</tr>
							</table>
							<div class="text-right">
								<button type="button" class="btn btn-primary" onclick="ajaxFormSubmit('/spring/ajaxFormSubmit.ajax', 'vacReqFrm')">신청하기</button>
							</div>
						</form>
	
					</div>
				</div>
			</div>
		<!-- END MAIN CONTENT -->
		</div>
	</div>
	<!-- END MAIN -->
</body>
</html>