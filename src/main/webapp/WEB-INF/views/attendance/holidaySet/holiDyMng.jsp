<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정보기</title>
<!-- fullcalendar -->
<link
	href="/spring/resources/common/fullcalendar/css/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="/spring/resources/common/fullcalendar/css/fullcalendar.print.min.css"
	rel="stylesheet" media="print" />
<script src="/spring/resources/common/fullcalendar/js/moment.min.js"></script>
<script src=""></script>
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

							<ul class="nav nav-pills">
								<li class="nav-item"><a class="nav-link active" href="#">Active</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Link</a>
								</li>
							</ul>
							<div class="row">
								<div class="col-md-10">
									<div class="panel">
										<div id="calendar"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Date Insert Modal -->
	<div id="insertModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">휴일 등록하기</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-10" style="padding-top: 20px;">
							<form id="insertForm" method="post">
								<p>
									<input type="hidden" name="emno"> 제목
								<p>
									<input type="text" name="title">
								<p>내용
								<p>
									<textarea rows="7" cols="70" name="content"
										style="resize: none"></textarea>
								<p>날짜
								<p>
									<!-- 관리자 권한: 달력 -->
								<div class="input-group date" id="crtDate">
									<input type="text" class="form-control" id="vastCrtDate" /> <span
										class="input-group-addon"> <span
										class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
									</span>
								</div>
							</form>
							<div class="modal-footer">
								<button type="button" id="insertBtn" class="btn btn-default"
									data-dismiss="modal">저장</button>
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
	<d iv id="viewModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">휴일 상세보기</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-10" style="padding-top: 20px;">
						<p>
							<input type="hidden" name="emno"> 제목
						<p>
							<input type="text" name="title">
						<p>내용
						<p>
							<textarea rows="7" cols="70" name="content" style="resize: none"></textarea>
						<p>날짜
						<p>
							<!-- 관리자 권한: 달력 -->
						<div class="input-group date" id="crtDate">
							<input type="text" class="form-control" id="vastCrtDate" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span> <!-- 달력 아이콘 -->
							</span>
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
	<!-- script --> <script>
		function mouseMove() {
			$("table tr td.fc-day,table tr td.fc-day-top").on('mouseover',
					function() {
						color = $(this).css('background-color');
						$(this).css({
							'background-color' : '#bbe1fd',
							'opacity' : '0.3'
						});
					});
			$("table tr td.fc-day,table tr td.fc-day-top").on('mouseout',
					function() {
						$(this).css({
							'background-color' : color,
							'opacity' : '1'
						});
					});//마우스 이벤트
		}
		$(function() {
			$('#crtDate').datetimepicker({ //휴가 등록일 달력
				viewMode : 'days',
				format : 'YYYY-MM-DD'
			});
		});
		$('#calendar')
				.fullCalendar(
						{
							header : {
								left : '',
								center : 'title',
								right : 'today prev,next'
							},
							lang : "ko",
							defaultDate : new Date(),
							editable : true,
							googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
							eventSources : [ {
								//공휴일
								googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",
								className : "koHolidays",
								color : "#FFFFFF",
								textColor : "#FF0000"
							} ],

							eventClick : function(calEvent, jsEvent, view) {
								/* alert('Event: ' + calEvent.title);
								alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
								alert('View: ' + view.name); */
								if (calEvent.url != null) {
									return false;
								}
								alert(calEvent.title);
								$(this).attr("data-toggle", "modal");
								$(this).attr("data-target", "#viewModal");

							},//일정상세보기
							eventMouseover : function(event, jsEvent, view) {
								//alert("mouseover");
							},//일정삭제
							dayClick : function(date, jsEvent, view) {

								/* alert('Clicked on: ' + date.format());

								alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

								alert('Current view: ' + view.name); */

								$("table tr td.fc-day,table tr td.fc-day-top")
										.attr("data-toggle", "modal");
								$("table tr td.fc-day,table tr td.fc-day-top")
										.attr("data-target", "#insertModal");

							}//일정등록
						});

		mouseMove(); //마우스이벤트

		//왼쪽버튼 클릭시 
		$("button.fc-prev-button").click(function() {
			mouseMove();
		});

		//왼쪽버튼 클릭시 
		$("button.fc-next-button").click(function() {
			mouseMove();
		});

		//today버튼 클릭시 
		$("button.fc-today-button").click(function() {
			mouseMove();
		});

		/* $(function() {
		    $().datepicker();
		});//insert 날짜선택  */

		//일정등록 저장버튼클릭시
		$("#insertBtn").click(
				function() {
					//alert("저장");
					if (confirm("저장하시겠습니까?") == true) {
						$("#insertForm").attr("action",
								"/spring/scheduleInsert.do").submit();
					} else {
						return false;
					}
				});
	</script>
</body>
</html>