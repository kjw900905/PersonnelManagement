<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var emno = "1111111111";
	var data = "";
	
	paging.ajaxSubmit("scheduleDb.ajax",{"emno":emno},function(rslt){
		console.log("결과데이터 : " + JSON.stringify(rslt));
		
		calendarView(rslt); //캘린더함수호출
	});//페이지 로딩시 사용자의 db 일정정보를 가져온다 


	function calendarView(data){ //캘린더함수
		$('#calendar').fullCalendar({
			header : {
				left : '',
				center : 'title',
				right : 'today prev,next'
			},
			lang : "ko", //한글패치
			defaultDate : new Date(), //초기날짜
			editable : false, //드래그사용여부
			googleCalendarApiKey:"AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE", //구글api키값
			eventSources : [{
				//공휴일
				googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",//구글캘린더 주소
				className : "koHolidays",
				color : "#FFFFFF",
				textColor : "#FF0000"
			}],
			events : data,
			eventClick : function(calEvent, jsEvent, view){
				/*alert('Event: ' + calEvent.title);
		        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
		        alert('View: ' + view.name);*/
		        
		        var start = JSON.stringify(calEvent.start);
		        var end = JSON.stringify(calEvent.end);
		        
		        console.log("start : " + start);
		        console.log("end : " + end);
		        console.log("emno : " + emno);
		        
		        if(calEvent.url != null){
		        	return false;
		        }//구글에서 가져온 공휴일 이벤트 막기
		        
		       	paging.ajaxSubmit("scheduleDetail.ajax",{"emno":emno,"start":start,"end":end},function(rslt){
		        	console.log("결과데이터 : " + JSON.stringify(rslt));
	
		        	$.each(rslt,function(index){
		        		var emno = rslt[index].empEmno; 				//사원번호
		        		var title = rslt[index].inpnTit;				//제목
		        		var content = rslt[index].inpnCntn;				//내용
						var inpnStrtDate = rslt[index].inpnStrtDate;	//db에 있는 시작날짜													        		
		        		var inpnEndDate = rslt[index].inpnEndDate;		//db에 있는 종료날짜
		        		var startDate = inpnStrtDate.substring(0,10); 	//시작날짜
		        		var startTime = inpnStrtDate.substring(11);	 	//시작시간
		        		var endDate = inpnEndDate.substring(0,10);		//종료날짜
		        		var endTime = inpnEndDate.substring(11);		//종료시간
		        		
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='emno']").val(emno); 
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='title']").val(title);
		        		$("#viewModal").find("form[id='viewForm']").find("textarea[name='content']").text(content);
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='startDate']").val(startDate);
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='startTime']").val(startTime);
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='endDate']").val(endDate);
		        		$("#viewModal").find("form[id='viewForm']").find("input[name='endTime']").val(endTime);
		        	});
		        		
		        }); 	
		        
		        $(this).attr("data-toggle","modal");
		        $(this).attr("data-target","#viewModal");
			},//일정상세보기
			/* eventMouseover : function(event, jsEvent, view){
				//alert("mouseover");
			},//일정삭제 */
			dayClick: function(date, jsEvent, view) {
		        /* alert('Clicked on: ' + date.format());
		        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
		        alert('Current view: ' + view.name); */
	
		        $("table tr td.fc-day,table tr td.fc-day-top").attr("data-toggle","modal");
				$("table tr td.fc-day,table tr td.fc-day-top").attr("data-target","#insertModal");
		    }//일정등록
		});
		
		mouseMove(); //마우스이벤트
		
		//왼쪽버튼 클릭시 
		$("button.fc-prev-button").click(function(){
			mouseMove();
		});
		
		//왼쪽버튼 클릭시 
		$("button.fc-next-button").click(function(){
			mouseMove();
		});
		
		//today버튼 클릭시 
		$("button.fc-today-button").click(function(){
			mouseMove();
		});
		
	}//calendarView
	
	function mouseMove(){
		$("table tr td.fc-day,table tr td.fc-day-top").on('mouseover', function() {
			color = $(this).css('background-color');
			$(this).css({
				'background-color' : '#bbe1fd',
				'opacity' : '0.3'
			});
		});
		$("table tr td.fc-day,table tr td.fc-day-top").on('mouseout', function() {
			$(this).css({
				'background-color' : color,
				'opacity' : '1'
			});
		});//마우스 이벤트
	}
	
	//insert 달력
	$(function() {
		$("[name='startDate']").datetimepicker({ //시작날짜 달력
			viewMode : 'days',
			format : 'YYYY-MM-DD'
		});
		$("[name='endDate']").datetimepicker({ //종료날짜 달력
			viewMode : 'days',
			format : 'YYYY-MM-DD'
		});
	});//달력
	
	//insert 시간선택
	$("[name='startTime']").timepicker({
		step: 30,            //시간간격 : 30분
		timeFormat: "H:i"    //시간:분 으로표시
	});
	$("[name='endTime']").timepicker({
		step: 30,            //시간간격 : 30분
		timeFormat: "H:i"    //시간:분 으로표시
	});
	
	//일정등록 저장버튼클릭시
	$("#insertBtn").click(function(){
		var url = "/spring/scheduleInsert.do";
		var frim = $("#insertForm").attr("id");
		
		if(confirm("저장하시겠습니까?") == true){
			paging.ajaxFormSubmit(url,"insertForm", function(result){
				console.log("result : " + result);
				if(result == true){
					alert("저장되었습니다");
					location.href="/spring/scheduleView.do";
				}else{
					alert("저장실패. 다시 입력해주세요");
				}
			});
		}else{
			return false;
		}
	});
</script>