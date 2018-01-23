<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/Project/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Project/resources/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Project/resources/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="/Project/resources/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="/Project/resources/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="/Project/resources/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">

	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="/Project/resources/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/Project/resources/assets/img/logo-dark.png">
<title>Insert title here</title>

</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="/Project/resources/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/Project/resources/assets/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="#humanMajor" data-toggle="collapse" class="collapsed"><span>인사관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="humanMajor" class="collapse ">
								<ul class="nav">
									<li><a href="#humanMiddle"  data-toggle="collapse" class="collapsed">사원관리<i class="icon-submenu lnr lnr-chevron-left"></i></a>
									<div id="humanMiddle" class="collapse">
											<ul class="nav">
											<li><a href="" class="">사원등록</a></li>
											<li><a href="" class="">사원조회</a></li>
											<li><a href="" class="">사원수정</a></li>
										</ul>
									</div>
									</li>
								</ul>
							</div>
						</li>
						<li><a href="#TimeMajor" data-toggle="collapse" class="collapsed"><span>근태관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="TimeMajor" class="collapse ">
								<ul class="nav">
									<li><a href="#TimeMiddle"  data-toggle="collapse" class="collapsed">출결관리<i class="icon-submenu lnr lnr-chevron-left"></i></a>
									<div id="TimeMiddle" class="collapse">
											<ul class="nav">
											<li><a href="" class="">근태등록</a></li>
											<li><a href="" class="">근태조회</a></li>
											<li><a href="" class="">근태수정</a></li>
										</ul>
									</div>
									</li>
								</ul>
							</div>
						</li>
						<li><a href="#PayrollMajor" data-toggle="collapse" class="collapsed"><span>급여관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="PayrollMajor" class="collapse ">
								<ul class="nav">
									<li><a href="#PayrollMiddle"  data-toggle="collapse" class="collapsed">급여<i class="icon-submenu lnr lnr-chevron-left"></i></a>
									<div id="PayrollMiddle" class="collapse">
											<ul class="nav">
											<li><a href="" class="">급여조회</a></li>
											<li><a href="" class="">급여등록</a></li>
											<li><a href="" class="">급여수정</a></li>
										</ul>
									</div>
									</li>
								</ul>
							</div>
						</li>
						<li><a href="#authorityMajor" data-toggle="collapse" class="active collapsed"><span>권한관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="authorityMajor" class="collapse ">
								<ul class="nav">
									<li><a href="menuTree.html">메뉴관리</a>
									</li>
									<li><a href="/Project/authorityList.do">권한관리</a>
									</li>
									<li><a href="#">공통코드</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">공통코드 관리</h3>
					<!-- OVERVIEW -->
					<div class="row">
						<div class="col-md-10">
							<div class="panel panel-headline">
								<div class="panel-heading">
									<h4 class="panel-title" style="font-size:20px; padding-left:15px;">공통코드 조회</h4>
								</div>
								<div class="panel-body">
									<form action="/Project/commonList.do" id="commonSearchForm">
									<div class="col-md-2">
										<select name="commonSelect" class="form-control">
											<option value="default" selected>검색조건</option>
											<option value="commCode">코드</option>
											<option value="commName">코드명</option>
											<option value="commCodeInfo">코드정보</option>
											<option value="deptName">등록부서</option>
										</select>
									</div>
									<div class="col-md-10">
										<div class="input-group">
											<input type="text" name="commonSearch" class="form-control">
											<span class="input-group-btn">
												<button type="button" class="btn btn-primary" onClick="commSearchListFunc()">검색</button>
											</span>
										</div>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
						<!-- TABLE STRIPED -->
							<div class="panel" id="commList">
								<div class="panel-heading"></div>
								<div class="row">
									<div class="col-md-12 text-right" style="padding-right:60px">
										<button type="button" class="btn btn-default" data-toggle="modal" data-target="#insertModal">등록</button>
										<button type="button" class="btn btn-default" onclick="location.href='/Project/commonList.do'">목록</button>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel-body">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>그룹코드</th>
														<th>그룹명</th>
														<th>코드정보</th>
														<th>등록부서</th>
														<th>수정부서</th>
														<th>생성일</th>
														<th>수정일</th>
														<th>사용여부</th>
														<th>비고</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="l" items="${list}">
														<tr name="commCodeInfo" onclick="commCodeInfoFunc($(this))" data-toggle="modal" style="cursor:pointer">
															<td name="commCode">${l.commCode}</td>
															<td name="commName">${l.commName}</td>
															<td name="commCodeInfo">${l.commCodeInfo}</td>
															<td name="deptCode">${l.deptCode}</td>
															<td name="deptUpdtCode">${l.deptUpdtCode}</td>
															<td name="commCodeCrt">${l.commCodeCrt}</td>
															<td name="commCodeUpdt">${l.commCodeUpdt}</td>
															<td name="commDelYn">${l.commDelYn}</td>
															<td name="commUpdt" onClick="event.cancelBubble = true">
																<button type="button" class="btn btn-default" name="updateBtn">수정</button>
																<button type="button" class="btn btn-default" name="deleteBtn">삭제</button>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											
											<c:forEach var="p" items="${pagingList}" varStatus="status">
												<c:set var="allPageNum" value="${p.allPageNum}"/>
												<c:set var="startPage" value="${p.startPage}"/>
												<c:set var="endPage" value="${p.endPage}"/>
												<c:set var="prevPage" value="${p.prevPage}"/>
												<c:set var="nextPage" value="${p.nextPage}"/>
											</c:forEach>
											
											<nav aria-label="Page navigation example" align="center">
												<ul class="pagination">
													<c:if test="${startPage+0 <= 1}">
														<li class="page-item">
															<a class="page-link" href="/Project/commonList.do?selectPageNum="+${prevPage}>	
																<span aria-hidden="true">&laquo;</span>
																<span class="sr-only">Previous</span>
															</a>													
														</li>
													</c:if>
													<c:forEach var="p" varStatus="status" begin="${startPage}" end="${endPage}">
														<li class="page-item"><a class="page-link" href="/Project/commonList.do?selectPageNum="+${status.count}>${status.count}</a></li>
													</c:forEach>
													<c:if test="${endPage+0 < allPageNum+0}">
														<li class="page-item">
															<a class="page-link" href="/Project/commonList.do?selectPageNum="+${nextPage} aria-label="Next">
																<span aria-hidden="true">&raquo;</span>
																<span class="sr-only">Next</span>
															</a>
														</li>
													</c:if>
												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
						<!-- END TABLE STRIPED -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<!-- INSERT MODAL -->
		<div id="insertModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">공통코드 등록</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-11" style="padding-top:20px;">
								<form action="/Project/commonInsert.do" id="insertForm">
									<table class="table table-hover" align="center">
										<tr>
											<td> &nbsp;그룹코드</td>
											<td><input type="text" name="commCode">
												<span>&nbsp;&nbsp;<input type="button" name="commCodeCheck" value="check"></span>
												<span name="checkValue"></span>
											</td>
										</tr>
										<tr>
											<td> &nbsp;그룹코드명</td>
											<td><input type="text" name="commName"></td>
										</tr>
										<tr>
											<td> &nbsp;코드정보</td>
											<td><input type="text" name="commCodeInfo"></td>
										</tr>
										<tr>
											<td> &nbsp;소속부서</td>
											<td><input type="text" name="deptCode"></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="insertBtn" class="btn btn-default" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- UPDATE MODAL -->
		<div id="updateModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">공통코드 수정</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-11" style="padding-top:20px;">
								<form action="/Project/commonUpdate.do" id="updateForm">
									<table class="table table-hover" align="center">
										<tr>
											<td> &nbsp;그룹코드</td>
											<td><input type="text" name="commCode" readOnly></td>
										</tr>
										<tr>
											<td> &nbsp;그룹코드명</td>
											<td><input type="text" name="commName"></td>
										</tr>
										<tr>
											<td> &nbsp;코드정보</td>
											<td><input type="text" name="commCodeInfo"></td>
										</tr>
										<tr>
											<td> &nbsp;수정부서</td>
											<td><input type="text" name="deptUpdtCode"></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" name="submitBtn">저장</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- INFO MODAL -->
		<div id="infoModal" class="modal fade" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title">공통코드 상세보기</h3>
						<div id="commPrntCodeLine">
							commCode commName
						</div>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12" style="padding-top:20px;">
								<table class="table table-hover" style="padding-left:30px;">
									<thead>
										<tr>
											<th>코드</th>
											<th>코드명</th>
											<th>코드정보</th>
											<th>등록부서</th>
											<th>수정부서</th>
											<th>등록일</th>
											<th>수정일</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody>
										<!-- <form id="commonInfoForm">
										</form> -->
									</tbody>
								</table>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-target="#infoInsertModal" data-toggle="modal">등록</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- INFO INSERT MODAL -->
		<div id="infoInsertModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">공통코드 등록</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-11" style="padding-top:20px">
								<form action="/Project/commonInfoInsert.do" id="infoInsertForm">
									<table class="table table-hover" align="center">
										<tr>
											<td> &nbsp;소속부서</td>
											<td><input type="text" name="deptCode"></td>
										</tr>
										<tr>
											<td> &nbsp;코드</td>
											<td><input type="text" name="commCode">
											<span>&nbsp;&nbsp;<input type="button" name="commCodeCheck" value="check"></span>
											<span name="checkValue"></span>
											</td>
										</tr>
										<tr>
											<td> &nbsp;코드명</td>
											<td><input type="text" name="commName"></td>
										</tr>
										<tr>
											<td> &nbsp;코드정보</td>
											<td><input type="text" name="commCodeInfo"></td>
										</tr>
									</table>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" id="infoInsertBtn" data-toggle="modal">등록</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- INFO UPDATE MODAL -->
		<div id="infoUpdateModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">공통코드 수정</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-11" style="padding-top:20px;">
								<form action="/Project/commonUpdate.do" id="infoUpdateForm">
									<table class="table table-hover" align="center">
										<tr>
											<td> &nbsp;코드</td>
											<td><input type="text" name="commCode" readOnly></td>
										</tr>
										<tr>
											<td> &nbsp;코드명</td>
											<td><input type="text" name="commName"></td>
										</tr>
										<tr>
											<td> &nbsp;코드정보</td>
											<td><input type="text" name="commCodeInfo"></td>
										</tr>
										<tr>
											<td> &nbsp;수정부서</td>
											<td><input type="text" name="deptUpdtCode"></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" name="submitBtn">저장</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- WRAPPER -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 Theme I Need. All Rights Reserved.</p>
			</div>
		</footer>
		<!-- END WRAPPER -->
		<!-- Javascript -->
		<script src="/Project/resources/assets/vendor/jquery/jquery.min.js"></script>
		<script src="/Project/resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="/Project/resources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script src="/Project/resources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
		<script src="/Project/resources/assets/vendor/chartist/js/chartist.min.js"></script>
		<script src="/Project/resources/assets/scripts/klorofil-common.js"></script>
		<script src="/Project/resources/common/js/paging.js"></script>
	
	<script>
	
	/* ================================ 메인 공통코드 관련  ========================================== */		
		
			// 메인 공통코드 insert시 중복체크  //
			$("form[id='insertForm'] input[name='commCodeCheck']").on("click", function(){	
				
				var url = "/Project/commCodeCheck.do";
				var commCode = $("#insertForm input[name='commCode']").val();
				var data = {"commCode":commCode};
				
				commCodeCheckAjaxSubmit(url, data);
				
			});
			
			function commCodeCheckAjaxSubmit(url, data){
				
				paging.ajaxSubmit(url, data, function(result){
					$("form[id='insertForm'] span[name='checkValue']").text(result.commCode);
				});
					
			}//ajaxSubmit
			// 메인 공통코드 insert시 중복체크  //
			
			
			// 메인 공통코드 등록 //
			$("#insertBtn").on("click",function(){
				
				if(confirm("등록 하시겠습니까?") == true){
					$("#insertForm").submit();
				}else{
					return;
				}//if
				
			});
			// 메인 공통코드 등록 //
			
			
			
			// 메인 공통코드 검색조건 목록 //
			function commSearchListFunc(){
				
				var url = "/Project/commonList.do";
				var commonSelect = $("select[name='commonSelect'] option:selected").val();
				var commonSearch = $("input[name='commonSearch']").val();
				
				console.log("commonSelect: " + commonSearch);
				
				if(commonSelect == ('default')){
					alert("검색조건을 선택해주세요.");
					return false;
				}else if(commonSearch == ("")){
					alert("검색내용을 입력해주세요.");
					return false;
				}else{
					$("#commonSearchForm").submit();
					
				}
				
				var data = {"commonSelect":commonSelect,"commonSearch":commonSearch};
				
				//location.href = "/Project/commonList.do?commonSelect="+commonSelect+"&commonSearch="+commonSearch;
				//commSearchListajaxSubmit(url,data);
				
			}//commSearchListFunc
			// 메인 공통코드 검색조건 목록 //
			

			
			// 메인 공통코드 수정 //
			$("div[id='commList'] table button[name='updateBtn']").on("click", function(){
				
				$("updateModal form[id='updateForm']").find("tr").find("td").each(function(){
					$(this).val().remove();
				});
				 
				
				var commCode = $(this).closest("tr").children("td[name='commCode']").text();
				var commName = $(this).closest("tr").children("td[name='commName']").text();
				var commCodeInfo = $(this).closest("tr").children("td[name='commCodeInfo']").text();
				var deptUpdtCode = $(this).closest("tr").children("td[name='deptCode']").text();
				
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commCode']").val(commCode);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commName']").val(commName);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commCodeInfo']").val(commCodeInfo);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='deptUpdtCode']").val(deptUpdtCode);
				
				$("#updateModal").modal('show');
				
			});
			
			
			$("#updateModal .modal-footer button[name='submitBtn']").on("click",function(){
				
				if(confirm("정말로 수정하시겠습니까?") == true){
					$("#updateModal form[id='updateForm']").submit();
				}else{
					return;
				}
				
			});
			// 메인 공통코드 수정 //
			
			
			
			// 메인 공통코드 삭제 //
			$("div[id='commList'] table button[name='deleteBtn']").on("click", function(){
				
				var commCode = $(this).closest("tr").children("td[name='commCode']").text();
				
				if(confirm("정말로 삭제 하시겠습니까?") == true){
					
					var url = "/Project/commonDeleteCheck.do";
					var data = {"commCode":commCode};
					
					commDeleteCheckFunc(url,data);
					
				}else{
					return false;
				}
				
			});
			
			function commDeleteCheckFunc(url, data){
				
				paging.ajaxSubmit(url,data,function(result){

					if(result.listSize == 0 || result.listSize == "0"){
						location.href = "/Project/commonDelete.do?commCode="+data.commCode;
					}else{
						alert("해당 코드는 삭제할 수 없습니다.");
						return false;
					}
					
				});
			}
			// 메인 공통코드 삭제 //
			
			
/* ================================ 하위 공통코드 관련(공통코드 상세보기) ========================================== */

			
			// 공통코드 상세보기에서 공통코드 insert시 중복체크 START //
			$("form[id='infoInsertForm'] input[name='commCodeCheck']").on("click", function(){	
				
				var url = "/Project/commCodeCheck.do";
				var commCode = $("#infoInsertForm input[name='commCode']").val();
				var data = {"commCode":commCode};
				
				commCodeInfoCheckAjaxSubmit(url, data);
				
			});
			
			function commCodeInfoCheckAjaxSubmit(url, data){
				
				paging.ajaxSubmit(url, data, function(result){
					$("#infoInsertForm span[name='checkValue']").text(result.commCode);
				});
					
			}//ajaxSubmit
			// 공통코드 상세보기에서 공통코드 insert시 중복체크 START //
			
			
			
			// 공통코드 상세보기 목록 //
			function commCodeInfoFunc(obj){
				
				var url = "/Project/commonInfoList.do";
				var path = obj;
				var commCode = $(obj).find("td[name='commCode']").text();
				var data = {"commPrntCode":commCode};
				
				
				// 해당 부모코드의 하위코드 생성할 때 필요한 작업 //
				var commPrntCode = $(obj).find("td[name='commCode']").text();
				var commPrntName = $(obj).find("td[name='commName']").text();
				
				
				if($("#infoInsertModal form[id='infoInsertForm']").find($("input[type='hidden']"))){
					
					$("#infoInsertModal form[id='infoInsertForm']").find($("input[type='hidden']")).each(function(){
						$(this).remove();
					});
					
				}//if
				
				$("#infoInsertModal form[id='infoInsertForm']").prepend("<input type='hidden' name='commPrntName' value='" + commPrntName + "'>");
				$("#infoInsertModal form[id='infoInsertForm']").prepend("<input type='hidden' name='commPrntCode' value='" + commPrntCode + "'>");
				// 해당 부모코드의 하위코드 생성할 때 필요한 작업  //
				
				commCodeInfoAjaxSubmit(url,data);
				
			}//commCodeInfoFunc
			
			function commCodeInfoAjaxSubmit(url,data){
				
				paging.ajaxSubmit(url, data, function(result){
					
					if(result.length == 0 || result == null){	//상세보기 목록 값이 없으면
						
						console.log("목록없음");
						
						if($("div[id='infoModal'] tbody").find("tr")){	//기존에 생성 되어있던 목록 삭제
							
							$("div[id='infoModal'] tbody").find("tr").each(function(){
								$(this).remove();
							});
							
						}//if
						
						$("#infoModal").modal('show');	//상세보기 모달띄움
					
					}else{	//상세보기 목록 값이 있으면
						
						console.log("목록있음");
						
						if($("div[id='infoModal'] tbody").find("tr")){	//이미 생성되있었던 목록 삭제
							
							$("div[id='infoModal'] tbody").find("tr").each(function(){
								$(this).remove();
							});
							
						}//if
						
						$.each(result, function(idx,value){	//해당 부모코드의 하위코드 목록 개수만큼 동적 생성
							
							$("div[id='infoModal'] tbody").append(
									"<tr>" +
										"<td name='commCode'>" + result[idx].commCode + "</td>" +
										"<td name='commName'>" + result[idx].commName + "</td>" +
										"<td name='commCodeInfo'>" + result[idx].commCodeInfo + "</td>" + 
										"<td name='deptCode'>" + result[idx].deptCode + "</td>" +
										"<td name='deptUpdtCode'>" + result[idx].deptUpdtCode + "</td>" + 
										"<td name='commCodeCrt'>" + result[idx].commCodeCrt + "</td>" +
										"<td name='commCodeUpdt'>" + result[idx].commCodeUpdt + "</td>" +
										"<td name='commInfoBtn'>" + 
											"<button type='button' name='infoUpdateBtn' class='btn btn-default' onClick='commInfoUpdateFunc($(this))'>수정</button>" +
											"<button type='button' name='infoDeleteBtn' class='btn btn-default' onClick='commInfoDeleteFunc($(this))'>삭제</button></td>" + 
										"</td>" + 
									"</tr>"
								);
							
						});//each

						$("#infoModal").modal('show');
						
					}//if
					
				});
				
			}//commCodeInfoAjaxSubmit
			//공통코드 상세보기 목록//
			
			
			
			// 공통코드 상세보기에서 코드 등록 //
			$("#infoInsertBtn").on("click", function(){
				
				if(confirm("등록 하시겠습니까?") == true){
					$("#infoInsertForm").submit();
				}else{
					return;
				}
				
			});
			// 공통코드 상세보기에서 코드 등록 //
			
			
			
			// 공통코드 상세보기에서 코드 수정 //
			function commInfoUpdateFunc(obj){
				
				var commCode = obj.closest("tr").find("td[name='commCode']").text();
				var commName = obj.closest("tr").find("td[name='commName']").text();
				var commCodeInfo = obj.closest("tr").find("td[name='commCodeInfo']").text();
				var deptUpdtCode = obj.closest("tr").find("td[name='deptCode']").text();
				
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commCode']").val(commCode);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commName']").val(commName);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commCodeInfo']").val(commCodeInfo);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='deptUpdtCode']").val(deptUpdtCode);
				
				$("#infoUpdateModal").modal('show');
				
			}//commInfoUpdateFunc
			
			$("#infoUpdateModal div[class='modal-footer'] button[name='submitBtn']").on("click",function(){
				
				if(confirm("정말로 수정하시겠습니까?") == true){
					$("#infoUpdateModal form[id='infoUpdateForm']").submit();
				}else{
					return false;
				}
				
			});
			// 공통코드 상세보기에서 코드 수정 //
			
			
			
			// 공통코드 상세보기에서 코드 삭제 //
			function commInfoDeleteFunc(obj){
				
				var commCode = obj.parents("tr").find("td[name='commCode']").html();
				
				if(confirm("정말로 삭제하시겠습니까?") == true){
					location.href = "/Project/commonDelete.do?commCode="+commCode;
				}else{
					return false;
				}
			}//commInfoDeleteFunc
			// 공통코드 상세보기에서 코드 삭제 //
			
			
			
			
			
		</script>
</body>
</html>