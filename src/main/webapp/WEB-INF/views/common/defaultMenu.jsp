<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="sidebar-nav" class="sidebar">
		<div class="sidebar-scroll">
			<nav>
			<ul class="nav">
				<li><a href="#humanMajor" data-toggle="collapse"
					class="active collapsed"><span>인사관리</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="humanMajor" class="collapse ">
						<ul class="nav">
							<li><a href="#humanMiddle" data-toggle="collapse"
								class="collapsed">사원관리<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="humanMiddle" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/home" class="">사원등록</a></li>
										<li><a href="${pageContext.request.contextPath}/products" class="">사원조회</a></li>
										<li><a href="${pageContext.request.contextPath}/contactus" class="">사원수정</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li><a href="#TimeMajor" data-toggle="collapse"
					class="collapsed"><span>근태관리</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="TimeMajor" class="collapse">
						<ul class="nav">
							<li><a href="#TimeMiddle1" data-toggle="collapse"
								class="collapsed">출결관리<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle1" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/dailAttdReg" class="">일일근태등록</a></li>
										<li><a href="${pageContext.request.contextPath}/mnthngAttdCrtCls" class="">월간근태생성/마감</a></li>
										<li><a href="${pageContext.request.contextPath}/mnthAttdStat" class="">월근태현황</a></li>
										<li><a href="${pageContext.request.contextPath}/hdayExtnNightWorkInqr" class="">휴일/연장/야간근무조회</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle2" data-toggle="collapse"
								class="collapsed">출장관리<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle2" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/businessRequest" class="">출장신청(사원,관리자)</a></li>
										<li><a href="" class="">출장조회</a></li>
										<li><a href="${pageContext.request.contextPath}/businessAdj" class="">출장정산</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle3" data-toggle="collapse"
								class="collapsed">휴가관리<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle3" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/vacationCount" class="">휴가개수설정(관리자)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationRequest" class="">휴가신청(관리자,사원)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationListAdmin" class="">휴가조회(관리자)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationList" class="">휴가조회(사원)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationMonthlyReport" class="">휴가월마감(관리자)</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle4" data-toggle="collapse"
								class="collapsed">근태기초정보설정/조회<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle4" class="collapse">
									<ul class="nav">
										<li><a href="" class="">휴일설정</a></li>
										<li><a href="${pageContext.request.contextPath}/holidaySet" class="">휴가항목설정</a></li>	
										<li><a href="" class="">근속연수별휴가설정</a></li>
										<li><a href="" class="">월간근무표설정</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
						
					
				</li>
				<li><a href="#PayrollMajor" data-toggle="collapse"
					class="collapsed"><span>급여관리</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="PayrollMajor" class="collapse ">
						<ul class="nav">
							<li><a href="#PayrollMiddle" data-toggle="collapse"
								class="collapsed">급여<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="PayrollMiddle" class="collapse">
									<ul class="nav">
										<li><a href="" class="">급여조회</a></li>
										<li><a href="" class="">급여등록</a></li>
										<li><a href="" class="">급여수정</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li><a href="#authorityMajor" data-toggle="collapse"
					class="collapsed"><span>권한관리</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="authorityMajor" class="collapse ">
						<ul class="nav">
							<li><a href="menuTree.html">메뉴관리</a></li>
							<li><a href="#authorityMiddle">권한관리</a></li>
							<li><a href="${pageContext.request.contextPath}/commonList.do">공통코드</a></li>
						</ul>
					</div></li>
			</ul>
			</nav>
		</div>
	</div>
</body>
</html>