<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">휴가항목설정</h3>
					<!-- OVERVIEW -->
					
						
					<div class="panel panel-headline">
						<div class="panel-body">
							<form class="form-inline" name="searchForm">
								<strong class="pdu_8 ftl">근태구분</strong>
								<select name="attendanceDivision" class="w_120 mgl_8 mgu_8">
									<option value="vacation">휴가</option>
								</select>
							
								<span class="ftr">
									<button type="button" class="btn btn-primary" onClick="">검색</button>
								</span>
							</form>
						</div>
					</div>

					<!-- TABLE STRIPED -->
					<div class="panel panel-headline">
						<div class="boxArea text-center">
							<strong class="pdu_8 ftl">휴가항목설정 </strong>
							<span class="ftr">
								<button type="button" class="btn btn-primary" onClick="">행추가</button>
								<button type="button" class="btn btn-primary" onClick="">행삭제</button>
							</span>
						</div>	
						<div class="panel-body mgu_15">
							<form class="form-inline" name="f2">
								<table class="table table-bordered">
	<!-- 							<thead> -->
									<colgroup>
										<col width="3%">
										<col width="10%">
										<col width="10%">
										<col width="20%">
										<col width="10%">
										<col width="10%">
										<col width="37%">
									</colgroup>
									<tr>
										<th>
											<label class="fancy-checkbox-inline">
												<input type="checkbox" name="">
												<span></span>
											</label>
										</th>
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>구분</th>
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>코드</th>
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>명칭</th>
										<th class="text-center">연차반영</th>
										<th class="text-center">사용여부</th>
										<th class="text-center">비고</th>
									</tr>
									<tr>
										<td>
											<label class="fancy-checkbox-inline">
												<input type="checkbox" name="">
												<span></span>
											</label>
										</td>
										<td>휴가</td>
										<td>00</td>
										<td><input type="text" value="휴가(년차)" class="form-control"></td>
										<td>
											<label class="fancy-checkbox-inline">
												<input type="checkbox" name="">
												<span></span>
											</label>
										</td>
										<td>
											<label class="fancy-checkbox-inline">
												<input type="checkbox" name="">
												<span></span>
											</label>
										</td>
										<td><input type="text" class="form-control"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>	
				</div>
			</div>
		</div>
</body>
</html>
