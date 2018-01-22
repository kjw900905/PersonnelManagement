<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>휴일설정</title>
<!-- fullcalendar -->
<link
	href="/spring/resources/common/fullcalendar/css/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="/spring/resources/common/fullcalendar/css/fullcalendar.print.min.css"
	rel="stylesheet" media="print" />
<script src="/spring/resources/common/fullcalendar/js/moment.min.js"></script>
<script
	src="/spring/resources/common/fullcalendar/js/fullcalendar.min.js"></script>
<script src="/spring/resources/common/fullcalendar/js/ko.js"></script>

<!-- 한글패치 -->
<script src="/spring/resources/common/fullcalendar/js/gcal.js"></script>
<!-- 구글캘린더 -->
</head>
<body>
	<!-- MAIN -->
	<div class="main">
		<!-- MAIN CONTENT -->
		<div class="main-content">
			<div class="container-fluid">
				<h3 class="page-title">휴일설정</h3>
				<br>
				<!-- OVERVIEW -->
				<div class="row">
					<div class="col-md-10">
						<div class="panel panel-headline">

							<div>

								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist"
									id='fullcalrendar_vacMng'>
									<li role="presentation" class="active"><a href="#firstTab"
										aria-controls="home" role="tab" data-toggle="tab">firstTab</a>
									</li>
									<li role="presentation"><a href="#secondTab"
										aria-controls="profile" role="tab" data-toggle="tab">secondTab</a>
									</li>
								</ul>

								<!-- Tab panes 탭 컨텐츠 -->
								<div class="tab-content">
									<!-- 첫번째 탭 시작(달력) -->
									<div role="tabpanel" class="tab-pane active" id="firstTab">
										<div class="row">
											<div class="col-sm-10">
												<div class="panel">
													<div id="calendar"></div>
												</div>
											</div>
										</div>
										<!-- Date Insert Modal -->
										<div id="insertModal" class="modal fade" tabindex="-1"
											role="dialog" aria-labelledby="myLargeModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title">휴일 등록하기</h4>
													</div>
													<div class="modal-body">
														<div class="row">
															<div class="col-md-10" style="padding-top: 10px;">
																<form id="insertForm" method="post">
																	<p>
																		 날짜
																	<div class="input-group date" id="crtDate">
																		<input type="text" class="form-control"
																			id="vastCrtDate" value="date.format()" /> <span class="input-group-addon">
																			<span class="glyphicon glyphicon-calendar"> </span> <!-- 달력 아이콘 -->
																		</span>
																	</div>
																	
																	일자구분 : <select>
																		<option value="regualWork">정상근무</option>
																		<option value="unpaidDayoff">무급휴무일</option>
																		<option value="unpaidHoli">무급휴무</option>
																		<option value="paidHoli">유급휴일</option>
																	</select>
																	휴일구분 : <select>
																		<option value="regualWork">선택</option>
																		<option value="regualWork">정기 공휴일</option>
																		<option value="unpaidDayoff">임시 공휴일</option>
																	</select>
																	
																	<p>
																	<p>
																		<!-- 관리자 권한: 달력 -->
																</form>
																<div class="modal-footer">
																	<button type="button" id="insertBtn"
																		class="btn btn-default" data-dismiss="modal">저장</button>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Data View Modal -->
										<div ="iv" id="viewModal" class="modal fade" tabindex="-1"
											role="dialog" aria-labelledby="myLargeModalLabel"
											aria-hidden="true">
											<div class="modal-dialog modal-md">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title">휴일 상세보기</h4>
													</div>
													<div class="modal-body">
														<div class="row">
															<div class="col-md-10" style="padding-top: 20px;">
																	제목
																	<input type="text" name="title">
																	내용
																	<textarea rows="7" cols="70" name="content" style="resize: none"></textarea>
																	날짜
																	
																	<!-- 관리자 권한: 달력 -->
																<div class="input-group date" id="crtDate">
																	<input type="text" class="form-control" id="vastCrtDate" /> 
																		<span class="input-group-addon">
																		<span class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 --></span>
																</div>
																<p>시간
																<p>
																	<input type="text">
																<div class="modal-footer">
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">수정</button>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">삭제</button>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 두번째 탭 시작 -->
									<div role="tabpanel" class="tab-pane" id="secondTab">..22222dfdkfjdafjkdas.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- script -->
<script>
	function mouseMove() {
		$("table tr td.fc-day,table tr td.fc-day-top").on('mouseover', function () {
			color = $(this).css('background-color');
			$(this).css({'background-color': '#bbe1fd', 'opacity': '0.3'});
		});
		$("table tr td.fc-day,table tr td.fc-day-top").on('mouseout', function () {
			$(this).css({'background-color': color, 'opacity': '1'});
		}); //마우스 이벤트
	}
	$(function () {
		$('#crtDate').datetimepicker({ //휴가 등록일 달력
			viewMode: 'days',
			format: 'YYYY-MM-DD'
		});
	});
	$('#calendar').fullCalendar({
		header: {
			left: '',
			center: 'title',
			right: 'today prev,next'
		},
		lang: "ko",
		defaultDate: new Date(),
		editable: true,
		googleCalendarApiKey: "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
		eventSources: [
			{
				//공휴일
				googleCalendarId: "ko.south_korea#holiday@group.v.calendar.google.com",
				className: "koHolidays",
				color: "#FFFFFF",
				textColor: "#992a2a"
			}
		],

		eventClick: function (calEvent, jsEvent, view) {
			/* alert('Event: ' + calEvent.title);
			 alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
			 alert('View: ' + view.name); */
			if (calEvent.url != null) {
				return false;
			}
			alert(calEvent.title);
			$(this).attr("data-toggle", "modal");
			$(this).attr("data-target", "#viewModal");

		}, //일정상세보기
		eventMouseover: function (event, jsEvent, view) {
			//alert("mouseover");
		}, //일정삭제
		dayClick: function (date, jsEvent, view) {

			/* alert('Clicked on: ' + date.format());

			alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

			alert('Current view: ' + view.name); */

			$("table tr td.fc-day,table tr td.fc-day-top").attr("data-toggle", "modal");
			$("table tr td.fc-day,table tr td.fc-day-top").attr("data-target", "#insertModal");

		} //일정등록
	});

	mouseMove(); //마우스이벤트

	//왼쪽버튼 클릭시
	$("button.fc-prev-button").click(function () {
		mouseMove();
	});

	//왼쪽버튼 클릭시
	$("button.fc-next-button").click(function () {
		mouseMove();
	});

	//today버튼 클릭시
	$("button.fc-today-button").click(function () {
		mouseMove();
	});

	//일정등록 저장버튼클릭시
	$("#insertBtn").click(function () {
		//alert("저장");
		if (confirm("저장하시겠습니까?") == true) {
			$("#insertForm").attr("action", "/spring/scheduleInsert.do").submit();
		} else {
			return false;
		}
	});
	//nav tab
	$('#fullcalrendar_vacMng a').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	});
	
	//day 클릭 
	$('#cale	ndar').fullCalendar({
	    dayClick: function(date, jsEvent, view) {

	        alert('Clicked on: ' + date.format());

	        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

	        alert('Current view: ' + view.name);

	        // change the day's background color just for fun
	        $(this).css('background-color', 'red');

	    }
	});
</script>
</body>
</html>
