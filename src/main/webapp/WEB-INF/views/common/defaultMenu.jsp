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
					class="active collapsed"><span>�λ����</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="humanMajor" class="collapse ">
						<ul class="nav">
							<li><a href="#humanMiddle" data-toggle="collapse"
								class="collapsed">�������<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="humanMiddle" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/home" class="">������</a></li>
										<li><a href="${pageContext.request.contextPath}/products" class="">�����ȸ</a></li>
										<li><a href="${pageContext.request.contextPath}/contactus" class="">�������</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li><a href="#TimeMajor" data-toggle="collapse"
					class="collapsed"><span>���°���</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="TimeMajor" class="collapse">
						<ul class="nav">
							<li><a href="#TimeMiddle1" data-toggle="collapse"
								class="collapsed">������<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle1" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/dailAttdReg" class="">���ϱ��µ��</a></li>
										<li><a href="${pageContext.request.contextPath}/mnthngAttdCrtCls" class="">�������»���/����</a></li>
										<li><a href="${pageContext.request.contextPath}/mnthAttdStat" class="">��������Ȳ</a></li>
										<li><a href="${pageContext.request.contextPath}/hdayExtnNightWorkInqr" class="">����/����/�߰��ٹ���ȸ</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle2" data-toggle="collapse"
								class="collapsed">�������<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle2" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/businessRequest" class="">�����û(���,������)</a></li>
										<li><a href="" class="">������ȸ</a></li>
										<li><a href="${pageContext.request.contextPath}/businessAdj" class="">��������</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle3" data-toggle="collapse"
								class="collapsed">�ް�����<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle3" class="collapse">
									<ul class="nav">
										<li><a href="${pageContext.request.contextPath}/vacationCount" class="">�ް���������(������)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationRequest" class="">�ް���û(������,���)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationListAdmin" class="">�ް���ȸ(������)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationList" class="">�ް���ȸ(���)</a></li>
										<li><a href="${pageContext.request.contextPath}/vacationMonthlyReport" class="">�ް�������(������)</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#TimeMiddle4" data-toggle="collapse"
								class="collapsed">���±�����������/��ȸ<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="TimeMiddle4" class="collapse">
									<ul class="nav">
										<li><a href="" class="">���ϼ���</a></li>
										<li><a href="${pageContext.request.contextPath}/holidaySet" class="">�ް��׸���</a></li>	
										<li><a href="" class="">�ټӿ������ް�����</a></li>
										<li><a href="" class="">�����ٹ�ǥ����</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
						
					
				</li>
				<li><a href="#PayrollMajor" data-toggle="collapse"
					class="collapsed"><span>�޿�����</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="PayrollMajor" class="collapse ">
						<ul class="nav">
							<li><a href="#PayrollMiddle" data-toggle="collapse"
								class="collapsed">�޿�<i
									class="icon-submenu lnr lnr-chevron-left"></i></a>
								<div id="PayrollMiddle" class="collapse">
									<ul class="nav">
										<li><a href="" class="">�޿���ȸ</a></li>
										<li><a href="" class="">�޿����</a></li>
										<li><a href="" class="">�޿�����</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li><a href="#authorityMajor" data-toggle="collapse"
					class="collapsed"><span>���Ѱ���</span><i
						class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="authorityMajor" class="collapse ">
						<ul class="nav">
							<li><a href="menuTree.html">�޴�����</a></li>
							<li><a href="#authorityMiddle">���Ѱ���</a></li>
							<li><a href="${pageContext.request.contextPath}/commonList.do">�����ڵ�</a></li>
						</ul>
					</div></li>
			</ul>
			</nav>
		</div>
	</div>
</body>
</html>