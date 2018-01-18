<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<%-- <link rel="stylesheet"
	href="<c:url value="/resources/common/assets/vendor/bootstrap/css/bootstrap.min.css"/>"> --%>
<%-- <link rel="stylesheet"
	href="<c:url value="/resources/common/assets/vendor/font-awesome/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/common/assets/vendor/linearicons/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/common/assets/vendor/chartist/css/chartist-custom.css"/>"> --%>
<!-- MAIN CSS -->

<%-- <link href="<c:url value="/resources/common/assets/css/main.css" />"
	rel="stylesheet">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet"
	href="<c:url value="/resources/common/assets/css/demo.css"/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/img/favicon.png"> --%>
<style type="text/css">
.panel-body .tbl01 td {
	vertical-align: middle;
}
</style>

<script type="text/javascript">
	/* function newPayc() {
		var url = "/spring/newPayc.do"
		window
				.open(
						"",
						"fn",
						"toolbar=no, width=540, height=467, directories=no, status=no, scrollorbars=no, resizable=no");

		frm.action = url;
		frm.target = "fn";
		frm.submit();
	}

	function payc_inquiry() {
		var url = "/spring/payc_inquiry.do"
		window
				.open(
						"",
						"tb",
						"toolbar=no, width=1000, height=500, directories=no, status=no, scrollorbars=no, resizable=no");

		table.action = url;
		table.target = "tb";
		table.submit();

	} */
	/* 	function wrapWindowByMask() {
	 // 화면의 높이와 너비를 변수로 만듭니다.
	 var maskHeight = $(document).height();
	 var maskWidth = $(window).width();

	 // 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
	 $('.mask').css({
	 'width' : maskWidth,
	 'height' : maskHeight
	 });

	 // fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
	 $('.mask').fadeIn(1000);
	 $('.mask').fadeTo("slow", 0.5);

	 // 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
	 var left = ($(window).scrollLeft() + ($(window).width() - $('.window')
	 .width()) / 2);
	 var top = ($(window).scrollTop() + ($(window).height() - $('.window')
	 .height()) / 2);

	 // css 스타일을 변경합니다.
	 $('.window').css({
	 'left' : left,
	 'top' : top,
	 'position' : 'absolute'
	 });
	
	 // 레이어 팝업을 띄웁니다.
	 $('.window').show();
	 }

	 $(document).ready(function() {
	 var url = "/spring/newPayc.do";
	 // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
	 $('#showMask').click(function(e) {
	 // preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
	 e.preventDefault();
	
	
	 wrapWindowByMask();
	
	
	 });

	 // 닫기(close)를 눌렀을 때 작동합니다.
	 $('.window .close').click(function(e) {
	 e.preventDefault();
	 $('.mask, .window').hide();
	 });

	 // 뒤 검은 마스크를 클릭시에도 모두 제거하도록 처리합니다.
	 $('.mask').click(function() {
	 $(this).hide();
	 $('.window').hide();
	 });
	 }); */
	function newPayc() {
		var arr = new Array();
		var json;
		var yac = 12;
		var count = 0;
		$.ajax({

			url : "/spring/newPayc.ajax",
			type : 'GET',
			data : json,

			success : function(data) {

				console.log("결과데이터 : " + JSON.stringify(data));
				var pyy = data.yy;
				var pmm = data.mm;

				console.log(pyy);

				for (var i = pyy; i > pyy - yac; i--) {

					if ($("option[name=" + i + "]").val() != null) {

						$("option[name=" + i + "]").remove();
					}
					$("select[name=pyy]").append(
							'<option id='+i+'>' + i + '</option>');
					$("select[name=syy]").append(
							'<option id='+i+'>' + i + '</option>');
					$("select[name=eyy]").append(
							'<option id='+i+'>' + i + '</option>');
					$("select[name=payyy]").append(
							'<option id='+i+'>' + i + '</option>');

				}

				while (count < 12) {

					if ($("option[id=" + pmm + "]").val() != null) {
						$("option[id=" + pmm + "]").remove();
					}

					if (pmm > 12) {

						pmm = 1;
					}

					$("select[name=pmm]").append(
							'<option id='+pmm+'>' + pmm + '</option>');
					$("select[name=smm]").append(
							'<option id='+pmm+'>' + pmm + '</option>');
					$("select[name=emm]").append(
							'<option id='+pmm+'>' + pmm + '</option>');
					$("select[name=paymm]").append(
							'<option id='+pmm+'>' + pmm + '</option>');
					pmm++;
					count++;
				}

				$("input[name=ed]").val(data.ld);
				$("input[name=paytoday]").val(data.today);

			},

			error : function(jqXHR, textStatus, errorThrown) {
				alert("중복된 급여대장이 있습니다. \n" + textStatus + " : " + errorThrown);

			}

		});
	 }
	function makePayc(formId) {
			
		var json;
		//var json = {"pyymm":pyymm, "paycname":paycname, "payday":payyy+paymm+paytoday, "payyymm":payyy+paymm}; 
		$("#" + formId).ajaxForm({
						
			url:"/spring/makePayc.ajax",
			type:'GET',
			data:json,
						
			success:function(data) {
										
				if(data.success == "true") {
								
					alert("저장성공!");
				}else {
								
					alert("중복된 급여대장이 있습니다.");
				}
					console.log("결과데이터 : "+JSON.stringify(data));
					location.reload();
				},
						
				error:function(jqXHR, textStatus, errorThrown){
					alert("중복된 급여대장이 있습니다. \n" + textStatus + " : " + errorThrown);         
				}
						
		}).submit();
	} 
		
	function selectPayc() {
			
		var json;
	
		$.ajax({

			url : "/spring/selectPayc.ajax",
			type : 'GET',
			data : json,

			success : function(data) {
					
			},
				
			error:function(jqXHR, textStatus, errorThrown){
					//alert("중복된 급여대장이 있습니다. \n" + textStatus + " : " + errorThrown);
				            
			}
		});
	}
	
	function acalPayc() {
		
		var json;
	
		$.ajax({

			url : "/spring/payc_acal.ajax",
			type : 'GET',
			data : json,

			success : function(data) {
					
			},
				
			error:function(jqXHR, textStatus, errorThrown){
					//alert("중복된 급여대장이 있습니다. \n" + textStatus + " : " + errorThrown);
				            
			}
		});
	}
</script>

</head>
<body>
<% String pyy;%>

	<div class="main-content">

		<div class="container-fluid">
			<h3 class="page-title">급여대장</h3>

			<div class="col-md-10">
				<div class="panel">
					<div class="panel-heading">

						<div class="panel-body">

							<table class="table table-bordered tbl01">
								
									<thead>
										<tr>
											<th>신고 귀속</th>
											<th>대장명칭</th>
											<th>지급일</th>
											<th>지급연월</th>
											<th colspan="2">사전작업</th>
											<th colspan="2">급여계산</th>
											<th>급여대장</th>
											<th>지급총액</th>
										</tr>
									</thead>
									<c:forEach var="regi" items="${list}" varStatus="status">
										<tr>
											<td rowspan="2">${regi.SREG_YYMM}</td> 
											<td rowspan="2">${regi.SREG_NAME}</td>
											<td align="center" rowspan="2">${regi.SREG_PDAY }</td>
											<td align="center" rowspan="2">${regi.SREG_PYYMM }</td>


											<td align="center"></td>
											<td align="center">근무기록확정</td>
											<td align="center" rowspan="2"></td>
											<td align="center" rowspan="2"><a href="#">전체계산</a>
												<p>수정
											</td>

											<td align="center" rowspan="2"> 
											
											
												<button type="button" class="label label-success" data-backdrop="static" data-keyboard="false"
												data-toggle="modal" data-target="#myModal1"
												data-title="Test Title" >조회</button>
												
												<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
													aria-labelledby="myModalLabel" aria-hidden="true">
				
													<div class="modal-dialog">
														<div class="modal-content">
														
															<div class="modal-body">
																
																${regi.SREG_YYMM}
															</div>
				
															<div class="modal-footer">
																
																<button type="button" class="btn btn-default pull-left"
																	data-dismiss="modal">닫기</button>
														
																
															</div>	
														</div>
													</div>
												</div>
											
											<br>명세서<br>확정<br>삭제
											</td>

											<td rowspan="2" align="right">0</td>

										</tr>

										<tr>
											<td></td>
											<td align="center">금액직접입력</td>


										</tr>
									</c:forEach>
							</table>

							<form id="frm" name="fn">
							<div>
								<button type="button" class="btn btn-primary btn-lg" data-backdrop="static" data-keyboard="false"
									data-toggle="modal" data-target="#myModal"
									data-title="Test Title" onclick="newPayc()">신규</button>

								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">

									<div class="modal-dialog">
										<div class="modal-content">
										
										
											<div class="modal-header">
												<!-- 모달버튼 헤더 -->
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">신규 급여대장</h4>
											</div>

											
												<div class="modal-body">
													<!-- 모달버튼 바디 -->

													<table class="table table-bordered tbl01">
														

														<thead>
															<th>귀속연월</th>

															<td>
																<select name="pyy"></select>

															 	<select name="pmm"></select>
															</td>

														</thead>	


														

														<thead>
															<th>대상기간</th>

															<td>
																<select name="syy"></select> 
																<select name="smm"></select>

																<input type="text" name="sd" value="1" style="width: 20px; height: 22px">
																<p>

																<select name="eyy"></select> 
																<select name="emm"></select>

																<input type="text" name="ed" style="width: 20px; height: 22px">
															</td>
														</thead>
														
														<thead>
															<th>지급일</th>

															<td>
																<select name="payyy"></select> 
																<select name="paymm"></select> 
																<input type="text" name="paytoday" style="width: 20px; height: 22px">
																<p>
															</td>
														</thead>
														
														<thead>
															<th>대장명칭</th>
															
															<td>
																<input type="text" name="paycname">
															
															</td>
														</thead>
													</table>
													
												</div>
											

											<div class="modal-footer">
												
												<button type="button" class="btn btn-default pull-left"
													data-dismiss="modal">닫기</button>
												<button type="button" class="btn btn-primary"
													data-dismiss="modal" onclick="makePayc('frm');">저장</button>
												
											</div>
											
										</div>
									</div>
									
								</div>
								

							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
</body>
</html>