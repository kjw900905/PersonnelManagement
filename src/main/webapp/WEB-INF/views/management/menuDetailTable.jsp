<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>
<table class="table table-bordered">
	<colgroup>
		<col width="25%">
		<col width="75%">
	</colgroup>
	<tbody>
		<tr>
			<th>메뉴코드</th>
			<td name="mnNo">${map.mnNo}</td>
		</tr>
		<tr>
			<th>메뉴명</th>
			<td name="mnName">${map.mnName}</td>
		</tr>
		<tr>
			<th>url</th>
			<td name="mnUrl">${map.mnUrl}</td>
		</tr>
		<tr>
			<th>공개여부</th>
			<td name="mnUseYn">${map.mnUseYn}</td>
		</tr>
		<tr>
			<th>순번</th>
			<td name="mnIdx">${map.mnIdx}</td>
		</tr>
		<tr>
			<th>생성일자</th>
			<td name="mnCrt">${map.mnCrt}</td>
		</tr>
		<tr>
			<th>수정일자</th>
			<td name="mnUpdt">${map.mnUpdt}</td>
		</tr>
		<tr>
			<th>속성</th>
			<td name="mnAttr">${map.mnAttr}</td>
		</tr>
	</tbody>
</table>
<div class="text-right">
	<button type="boutton" class="btn btn-info">수정</button>
	<button type="boutton" class="btn btn-danger">삭제</button>
</div>
