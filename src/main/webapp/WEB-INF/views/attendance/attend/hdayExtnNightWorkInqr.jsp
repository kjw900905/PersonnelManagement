<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� /���� /�߰��ٹ� ��ȸ</title>
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
				<h3 class="page-title">���� /���� /�߰��ٹ� ��ȸ</h3>
				
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
							<!-- �����ȣ -->
							<i class="fa fa-asterisk-red" aria-hidden="true" ></i>�����ȣ
							<div class="input-group">
								<input type="text" class="form-control" id="" name="empEmno" placeholder="���">
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-search" aria-hidden="true" data-toggle="modal" data-target="#emnoModal"></span> <!-- �˻� ������ -->
								</span>
							</div>
							<!-- �˻���ư -->
						  	<input type="submit" class="btn btn-primary" style="float:right; name="search" value="�˻�">
						</form>
					</div>
				</div>
				
				<div class="panel panel-headline">
					<div class="panel-heading">
						<h3 class="panel-title">���� /���� /�߰��ٹ� ��ȸ</h3>
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
										<th>��������</th>
										<th>���½ð�</th>
										<th>��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>??</td>
										<td>??</td>
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
							    
							<!-- ��ư���� -->
							<div class="text-center"> 
								<button type="button" class="btn btn-info">�μ��ϱ�</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-success">�����ٿ�</button>
							</div>
							<!-- END ��ư���� -->
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>