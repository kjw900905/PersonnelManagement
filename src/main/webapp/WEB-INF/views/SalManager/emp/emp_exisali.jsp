<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>
	<div class="main-content">

		<div class="container-fluid">
			<h3 class="page-title">직원급여정보</h3>

			<div class="col-md-10">
				<div class="panel">
					<div class="panel-heading">

						<form id="frm" name="f1" method="POST">
							<div class="panel-body">
								<table class="table table-bordered">
									<thead>
										<th class="text-center"><input type="checkbox" id="checkall" /></th>
										<th>사번</th>
										<th>사원이름</th>
										<th>급여</th>
										<th>교통비</th>
										<th>식대</th>
										<th>차량유지비</th>
								
									</thead>
									
									<c:forEach var="tb" items="${list}" varStatus="status">
										<tr>
											<td width="5" align="center"><input type="checkbox" id="chk${status.index}" onclick="check('${status.index}')"></td>
											<td width="50" name="empcode${status.index}" id="${tb.EMP_EMNO}">${tb.EMP_EMNO}</td>
											<td width="100" >${tb.EMP_NAME}</td>
											<td width="100" name="saltext${status.index}" align="center">${tb.SEMP_SAL}</td>
											<td width="100" name="tamtext${status.index}" align="center"></td>
											<td width="100" name="fdetext${status.index}" align="center"></td>
											<td width="100" name="cmctext${status.index}" align="center"></td>
										</tr>	
									</c:forEach>
								</table>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>