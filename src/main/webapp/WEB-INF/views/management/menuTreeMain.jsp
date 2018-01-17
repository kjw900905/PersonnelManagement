<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/resources/common/include/headInclude.jsp" %>
<%--  --%>
<link rel="stylesheet" href="/spring/resources/common/management/css/menuTree.css">
</head>
<body>
	<!-- WRAPPER -->
    <div id="wrapper">
        <!-- NAVBAR -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="brand">
                <a href="index.html"><img src="/spring/resources/common/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/spring/resources/common/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
                            <div id="humanMajor" href="#subPages" class="collapse ">
                                <ul class="nav">
                                    <li><a href="#humanMiddle"  data-toggle="collapse" class="collapsed">사원관리<i class="icon-submenu lnr lnr-chevron-left"></i></a>
                                    <div id="humanMiddle" class="collapse">
                                        <ul class="nav">
                                            <li><a href="#" class="">사원등록</a></li>
                                            <li><a href="#" class="">사원조회</a></li>
                                            <li><a href="#" class="">사원수정</a></li>
                                        </ul>
                                    </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#TimeMajor" data-toggle="collapse" class="collapsed"><span>근태관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
                            <div id="TimeMajor" href="#subPages" class="collapse ">
                                <ul class="nav">
                                    <li><a href="#TimeMiddle"  data-toggle="collapse" class="collapsed">출결관리<i class="icon-submenu lnr lnr-chevron-left"></i></a>
                                    <div id="TimeMiddle" class="collapse">
                                        <ul class="nav">
                                            <li><a href="#" class="">근태등록</a></li>
                                            <li><a href="#" class="">근태조회</a></li>
                                            <li><a href="#" class="">근태수정</a></li>
                                        </ul>
                                    </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#PayrollMajor" data-toggle="collapse" class="collapsed"><span>급여관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
                            <div id="PayrollMajor" href="#subPages" class="collapse ">
                                <ul class="nav">
                                    <li><a href="#PayrollMiddle"  data-toggle="collapse" class="collapsed">급여<i class="icon-submenu lnr lnr-chevron-left"></i></a>
                                    <div id="PayrollMiddle" class="collapse">
                                        <ul class="nav">
                                            <li><a href="#" class="">급여조회</a></li>
                                            <li><a href="#" class="">급여등록</a></li>
                                            <li><a href="#" class="">급여수정</a></li>
                                        </ul>
                                    </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="#authorityMajor" data-toggle="collapse" class="active" aria-expanded="true"><span>권한관리</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
                            <div id="authorityMajor" href="#subPages" class="collapse in" aria-expanded="true">
                                <ul class="nav">
                                    <li><a href="menuTree.html">메뉴관리</a>
                                    </li>
                                    <li><a href="#">권한관리</a>
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
					<h3 class="page-title">메뉴관리</h3>
					<div class="row">
						<div class="col-md-4">
							<!-- MENU TREE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">menu tree</h3>
								</div>
								<div class="panel-body" name="menuTree">
                                    <button type="button" name="menuAdd" class="btn btn-default btn-sm"><i class="fa fa-plus-square"></i> 메뉴추가</button>
                                    <div class="tree">
                                        <ul id="tree">
                                            <li id="root"><span>/</span> 
                                            </li>
                                        </ul>
                                    </div>
                                </div>
							</div>
							<!-- END MENU TREE -->
                        </div>
                        <div class="col-md-8">
                            <div class="panel" style="min-height:500px">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 16px">

									</h3>
								</div>
								<div class="panel-body" name="detail">
                               
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
        <!-- END MAIN -->
        <div class="clearfix"></div>
        <footer>
            <div class="container-fluid">
                <p class="copyright">&copy; 2017 Theme I Need. All Rights Reserved.</p>
            </div>
        </footer>
    </div>
    <!-- END WRAPPER -->
	<%@ include file="/resources/common/include/scriptInclude.jsp"%>
	<script src="/spring/resources/common/management/js/menuTree.js"></script>	
	<script>
	
	paging.ajaxSubmit("menuList.do","","menuTree",true);
	
	var menuInsert = function(){
		paging.ajaxFormSubmit('/spring/menuInsert.do','insertForm',"insertForm");
	}
	
	var insertForm = function(result){
		console.log(result>0);
		if(result>0){
			alert("메뉴등록에 성공하였습니다.");
		}else if(result<0){
			alert("메뉴등록에 실패하였습니다.");
		}
	}
	
	var menuTree = function(result){	
		//console.log(result);
		$("#tree").ssTree(result.data);
		$("#tree li").clickEvent();
		$("button[name='menuAdd']").addEvent();
	}

	var menuEsc = function(){
		window.location.href = "menuTreeMain.do";
	}
	</script>
</body>
</html>