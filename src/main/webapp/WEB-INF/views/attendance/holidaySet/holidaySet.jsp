<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script>
	$(function() { //스크롤바 css
		$('#vacationOptionTable').children('thead').css('width','calc(100% - 1em)');
	});

	$(document).on("click", "button[name=addTr]", function(){
		var addStaffText =  "<tr name='vacationOption' style='display:table;width:100%;table-layout:fixed;'>"+
							'<td><label class="fancy-checkbox-inline"><input type="checkbox" name="chk"><span></span></label></td>' +
							'<td><input type="text" class="form-control" value="휴가"></td>' +
							'<td><input type="text" class="form-control"></td>' +
							'<td><input type="text" class="form-control"></td>' +
							'<td><label class="fancy-checkbox-inline"><input type="checkbox" name=""><span></span></label></td>' +
							'<td><label class="fancy-checkbox-inline"><input type="checkbox" name=""><span></span></label></td>' +
							'<td><input type="text" class="form-control"></td>' +
							'</tr>';
							
		$("#vacationOptionTable #headTr").before(addStaffText);
	});
	
	$(document).on("click", "button[name=deleteTr]", function(){
		var $obj = $("input[name='chk']");
		var checkCount = $obj.size();
		
		for(var i = 0 ; i < checkCount ; i++){
			if($obj.eq(i).is(":checked")){
				$obj.eq(i).parent().parent().parent().remove();
			}
		}
	});
	
	function selectAll(){
		var $obj = $("input[name='selectAll_chk']");
		var $obj2 = $("input[name='chk']");
		var $obj3 = $("input[name='notDeleteChk']");
		
		if($obj.is(":checked")){
			$obj2.prop("checked", true);
			$obj3.prop("checked", true);
		}else{
			$obj2.prop("checked", false);
			$obj3.prop("checked", false);
		}
	}
	
	function insertForm(){
		$("#insertForm").submit();
	}
	
	function tableToJson(){
		var dataArray = new Array();
		var title = document.getElementById("vacationOptionTable").value;  
		var rowCount = $('#vacationOptionTable').length;
		var mytable = document.getElementById("vacationOptionTable");
		 
		for(var i=0; i<rowCount; i++){
		    var row = mytable.rows.item(i);
		    var dataObj = new Object();
		        for ( var j = 0; j<row.cells.length; j++ ) { 
		            var col = row.cells.item(j);   
		             if (col.firstChild.getAttribute('type') =="text"){   //텍스트일경우와 체크박스일경우 값을 다르게
		                dataObj.question = col.firstChild.value;
		            }else{
		                dataObj.essential = col.firstChild.checked;  //체크박스의 경우 value값은 체크값이 아니기 때문
		            }
		        dataObj.title = title;
		    }   
		    dataArray.push(JSON.stringify(dataObj));   //데이터를 json 형식으로 만들어줌 stringify
		}
		
		var result = {"'dataList'" : [dateArray]};
		
		var str='';
		for(var i in result){
		    if(result.hasOwnProperty(i)){
		        str += i + ":[" + result[i]+"]";
		    }
		}
		var dataParam = "{"+str+"}";

		alert(dataParam);
	}
	
	
	
</script>

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
								<button type="button" name="addTr" class="btn btn-primary" onClick="">행추가</button>
								<button type="button" name="deleteTr" class="btn btn-primary" onClick="">행삭제</button>
							</span>
						</div>	
						<div class="panel-body mgu_15">
							<form class="form-inline" name="f2" action="/spring/holidaySetDBInset.do" id="insertForm">
								
								<table class="table table-bordered" id="vacationOptionTable">
   <!--                      <thead> -->
		                           <colgroup>
		                              <col width="3%">
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="20%">
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="37%">
		                           </colgroup>
		                           <thead style="display:table;width:100%;table-layout:fixed;">
		                              <tr>
		                                 <th>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="selectAll_chk" onClick="selectAll()">
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
		                           </thead>
		                           <tbody style="display:block;height:200px;overflow:auto;">
		                              <tr id="headTr" style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="00"></td>
		                                 <td><input type="text" value="휴가(년차)" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflection">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailure">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" name="note"></td>
		                              </tr>
		                              <tr style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="01"></td>
		                                 <td><input type="text" value="생리휴가" class="form-control"></td>
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
		                              <tr style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="02"></td>
		                                 <td><input type="text" value="병가" class="form-control"></td>
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
		                              <tr style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="03"></td>
		                                 <td><input type="text" value="경조휴가" class="form-control"></td>
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
		                              <tr style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="04"></td>
		                                 <td><input type="text" value="출산휴가" class="form-control"></td>
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
		                              <tr style="display:table;width:100%;table-layout:fixed;">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control" value="휴기"></td>
		                                 <td><input type="text" class="form-control" value="05"></td>
		                                 <td><input type="text" value="포상휴가" class="form-control"></td>
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
		                           </tbody>
		                        </table>
		                 
		                        <button type="button" name="saveButton" class="btn btn-primary ftr" onClick="tableToJson()">저장</button>
							</form>
						</div>
					</div>	
				</div>
			</div>
		</div>
</body>
</html>
