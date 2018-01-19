<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���� ����/����</title>
<script>

	//���̺� ���� �������
	$(document).ready(function() { 
	    $('.table tr').children().addClass('text-center');
	    console.log('hg');
	});
	
	//�޷�
	$(function () {
	    $('#monthDate').datetimepicker({
	    	viewMode: 'months',
	    	format: 'YYYY-MM'
	    });
	});


</script>
</head>
<body>
	<div class="main">
		<div class="main-content">
			<div class="container-fluid">
				<h3 class="page-title">���� ���� ����/����</h3>
				
				<div class="panel">
					<div class="panel-body">
						<form class="form-inline" action="/spring/readHdayExtnNightWorkInqr">
							<i class="fa fa-asterisk-red" aria-hidden="true" ></i>�ٹ����
							<!-- �޷� -->
							<div class="input-group date" id="monthDate">
							  	<input type="text" class="form-control" id="modeApplicationDate" name="workYyMm"/>
							    <span class="input-group-addon">
								    <span class="glyphicon glyphicon-calendar"></span> <!-- �޷� ������ -->
							    </span>
						  	</div>
						  	<!-- �˻���ư -->
						  	<input type="submit" class="btn btn-primary" style="float:right; name="search" value="�˻�">
						</form>
					</div>
				</div>
					
				<div class="panel panel-headline">
					<div class="panel-heading">
						<h3 class="panel-title">������ �������</h3>
							<!-- <p class="subtitle">������ �ʿ��� ��� �߰� ����</p> -->
					</div>
					<div class="panel-body">
						<div class="list_wrapper">
							<table class="table tablesorter table-bordered" id="">
								<thead>
									<tr>
										<th>�����ȣ</th>
										<th>����</th>
										<th>����</th>
										<th>�μ�</th>
										<th>ȣ��</th>					
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>??</td>
										<td>??</td>
										<td>??</td>
										<td>??</td>
										<td>??</td>
									</tr>
								</tbody>
							</table>
							<!-- paging ���� -->
							<div align="center">
								<ul class="pagination">
									<li>
										<a title="����������" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
									</li>
									<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
								    <li><a href="#">4</a></li>
								    <li><a href="#">5</a></li>
								    <li>
										<a href="#" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
								</ul>
							</div>
							<!-- END list table ���� -->
						</div>
					</div>
				</div>
				
				<div class="panel panel-headline">
					<div class="panel-heading">
						<h3 class="panel-title">������ �ϼ�</h3>
							<!-- <p class="subtitle">������ �ʿ��� ��� �߰� ����</p> -->
					</div>
					<div class="panel-body">
						<div class="list_wrapper">
							<table class="table tablesorter table-bordered" id="">
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>�ѱٹ��ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="�ѱٹ��ϼ�">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���ϱٹ��ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���ϱٹ��ϼ�">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���ϱٹ��ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���ϱٹ��ϼ�">
									</td>
								</tr>
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>�ް�����ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="�ް�����ϼ�">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>��Ÿ�ް��ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="��Ÿ�ް��ϼ�">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>����ϼ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="����ϼ�">
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-headline">
					<div class="panel-heading">
						<h3 class="panel-title">������ �ð�(�ú�)</h3>
							<!-- <p class="subtitle">������ �ʿ��� ��� �߰� ����</p> -->
					</div>
					<div class="panel-body">
						<div class="list_wrapper">
							<table class="table tablesorter table-bordered" id="">
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���Ͽ���</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���Ͽ���">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���Ͼ߰�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���Ͼ߰�">
									</td>
									<td colspan="2"></td>
								</tr>
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���ϱٷ�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���ϱٷ�">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���Ͽ���</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���Ͽ���">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>���Ͼ߰�</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="���Ͼ߰�">
									</td>
								</tr>
								<tr>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>����</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="����">
									</td>
									<td><i class="fa fa-asterisk-red" aria-hidden="true"></i>����</td>
									<td>
										<input type="text" class="form-control" id="" placeholder="����">
									</td>
									<td colspan="2"></td>
								</tr>
							</table>
						</div>
						<!-- END list table ���� -->
						
						<!-- ��ư���� -->
						<div class="text-right"> 
							<button type="button" class="btn btn-danger">�����ϱ�</button>
						</div>
						<!-- END ��ư���� -->
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
</body>
</html>