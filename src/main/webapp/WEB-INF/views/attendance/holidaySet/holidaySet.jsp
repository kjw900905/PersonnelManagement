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
					<h3 class="page-title">�ް��׸���</h3>
					<!-- OVERVIEW -->
					
						
					<div class="panel panel-headline">
						<div class="panel-body">
							<form class="form-inline" name="searchForm">
								<strong class="pdu_8 ftl">���±���</strong>
								<select name="attendanceDivision" class="w_120 mgl_8 mgu_8">
									<option value="vacation">�ް�</option>
								</select>
							
								<span class="ftr">
									<button type="button" class="btn btn-primary" onClick="">�˻�</button>
								</span>
							</form>
						</div>
					</div>

					<!-- TABLE STRIPED -->
					<div class="panel panel-headline">
						<div class="boxArea text-center">
							<strong class="pdu_8 ftl">�ް��׸��� </strong>
							<span class="ftr">
								<button type="button" class="btn btn-primary" onClick="">���߰�</button>
								<button type="button" class="btn btn-primary" onClick="">�����</button>
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
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>����</th>
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>�ڵ�</th>
										<th class="text-center"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>��Ī</th>
										<th class="text-center">�����ݿ�</th>
										<th class="text-center">��뿩��</th>
										<th class="text-center">���</th>
									</tr>
									<tr>
										<td>
											<label class="fancy-checkbox-inline">
												<input type="checkbox" name="">
												<span></span>
											</label>
										</td>
										<td>�ް�</td>
										<td>00</td>
										<td><input type="text" value="�ް�(����)" class="form-control"></td>
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
