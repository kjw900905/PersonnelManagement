<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!-- MAIN -->
	<div class="main">
		<!-- MAIN CONTENT -->
		<div class="main-content">
			<div class="container-fluid">
				<h3 class="page-title">휴일설정</h3>
				<!-- OVERVIEW -->

				<div class="panel panel-headline">
					<div class="panel-body">
						<form class="form-inline" name="searchForm">
							<strong class="pdu_8 ftl">사업장 </strong> <select
								name="attendanceDivision" class="w_120 mgl_8 mgu_8">
								<option value="vacation">인크레파스 본점</option>
							</select> <span class="ftr">
								<button type="button" class="btn btn-primary" onClick="">검색</button>
							</span>
						</form>
					</div>
				</div>
				<hr>
				<!-- body head end-->

				<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
				<script type="text/javascript">
						if (!wcs_add)
							var wcs_add = {};
						wcs_add["wa"] = spro.getAnalyticsKey("hr");
						wcs_do();
					</script>
			</div >
		</div >
</body>
</html>
