<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					<h3 class="page-title">공통코드 관리</h3>
					<!-- OVERVIEW -->
					<div class="row">
						<div class="col-md-10">
							<div class="panel panel-headline">
								<div class="panel-heading">
									<h4 class="panel-title" style="font-size:20px; padding-left:15px;">공통코드 조회</h4>
								</div>
								<div class="panel-body">
									<div class="col-md-2">
										<select id="commonSel" class="form-control">
											<option value="commPrntCode">그룹코드</option>
											<option value="commPrntName">그룹명</option>
											<option value="commCode">코드</option>
											<option value="commName">코드명</option>
											<option value="deptName">등록부서</option>
										</select>
									</div>
									<div class="input-group">
										<input type="text" id="commonSearch" class="form-control">
										<span class="input-group-btn">
											<button type="button" class="btn btn-primary" onClick="commonSubmit()">검색</button>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
						<!-- TABLE STRIPED -->
							<div class="panel">
								<div class="panel-heading">
									<div class="row">
										<div class="col-md-10"></div>
										<div class="col-md-2" align="right" style="margin-bottom:20px;">
											<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#insertModal">등록</button>
										</div>
										<div class="panel-body">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>그룹코드</th>
														<th>그룹명</th>
														<th>등록부서</th>
														<th>생성일</th>
														<th>수정일</th>
														<th>사용여부</th>
													</tr>
												</thead>
												<tbody name="commTable">
													<form action="" name="commCodeInfoFrm">
														<c:forEach var="l" items="${list}">
															<tr data-target="#infoModal" data-toggle="modal" style="cursor:pointer">
																<td name="commCode">${l.commCode}</td>
																<td name="commName">${l.commName}</td>
																<td name="deptCode">${l.deptCode}</td>
																<td name="commCodeCrt">${l.commCodeCrt}</td>
																<td name="commCodeUpdt">${l.commCodeUpdt}</td>
																<td name="commDelYn">${l.commDelYn}</td>
															</tr>
														</c:forEach>
													</form>
												</tbody>
											</table>
											<nav aria-label="Page navigation example" align="center">
												<ul class="pagination">
													<li class="page-item">
														<a class="page-link" href="#" aria-label="Previous">
															<span aria-hidden="true">&laquo;</span>
															<span class="sr-only">Previous</span>
														</a>
													</li>
													<li class="page-item"><a class="page-link" href="#">1</a></li>
													<li class="page-item"><a class="page-link" href="#">2</a></li>
													<li class="page-item"><a class="page-link" href="#">3</a></li>
													<li class="page-item">
														<a class="page-link" href="#" aria-label="Next">
															<span aria-hidden="true">&raquo;</span>
															<span class="sr-only">Next</span>
														</a>
													</li>
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
								<form action="/Project/commonInsert.do" id="commInsertForm">
									<table class="table table-hover" align="center">
										<tr>
											<td> &nbsp;소속부서</td>
											<td><input type="text" name="deptCode"></td>
										</tr>
										<tr>
											<td> &nbsp;그룹코드</td>
											<td><input type="text" name="commPrntCode"></td>
										</tr>
										<tr>
											<td> &nbsp;그룹코드명</td>
											<td><input type="text" name="commPrntName"></td>
										</tr>
										<tr>
											<td> &nbsp;코드정보</td>
											<td><input type="text" name="commCodeInfo"></td>
										</tr>
									</table>
									<!-- 소속부서:&nbsp;&nbsp;<input type="text" name="deptCode"><p>
									그룹코드:&nbsp;&nbsp;<input type="text" name="commPrntCode"><p>
									그룹코드명:&nbsp;&nbsp;<input type="text" name="commPrntName"><p>
									코드:&nbsp;&nbsp;<input type="text" name="commCode"><p>
									코드명:&nbsp;&nbsp;<input type="text" name="commName"><p>
									코드정보:&nbsp;&nbsp;<input type="text" name="commCodeInfo"><p> -->
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="commonInsert" class="btn btn-default" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- INFO MODAL -->
		<div id="infoModal" class="modal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">공통코드 상세보기</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-10" style="padding-top:20px;">
								<table class="table table-hover" style="padding-left:30px;">
									<thead>
										<tr>
											<th>순번</th>
											<th>코드</th>
											<th>코드명</th>
											<th>등록부서</th>
											<th>수정부서</th>
											<th>등록일</th>
											<th>수정일</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>A-10</td>
											<td>사원</td>
											<td>인사팀</td>
											<td>----</td>
											<td>20180104</td>
											<td>--------</td>
											<td><button type="button" class="btn btn-default" data-toggle="modal" data-target="#updateModal">수정</button></td>
										</tr>
										<tr>
											<td>2</td>
											<td>A-20</td>
											<td>대리</td>
											<td>인사팀</td>
											<td>보안팀</td>
											<td>20180104</td>
											<td>20180203</td>
											<td><button type="button" class="btn btn-default" data-toggle="modal" data-target="#updateModal">수정</button></td>
										</tr>
									</tbody>
								</table>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- UPDATE MODAL -->
		<div id="updateModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" id="updateModalClose">&times;</button>
						<h4 class="modal-title">공통코드 수정</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-11" style="padding-top:20px;">
								<table class="table table-hover" align="center">
									<tr>
										<td> &nbsp;그룹코드</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td> &nbsp;그룹코드명</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td> &nbsp;코드</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td> &nbsp;코드명</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td> &nbsp;코드정보</td>
										<td><input type="text"></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" onClick="modalHide()">저장</button>
					</div>
				</div>
			</div>
		</div>
</body>
		<script>
		
			
				
				$("#commonInsert").on("click",function(){
					
					$("#commInsertForm").submit();
					
				});
				
				
				$("#updateModalClose").on("click", function(){
					
					$("#updateModal").modal('hide');
					
				});
				
				
				
			
		
		</script>
</html>