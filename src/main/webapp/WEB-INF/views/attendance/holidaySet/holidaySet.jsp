<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script>
	$(document).on("click", "button[name=addTr]", function(){
		var addStaffText =  '<tr name="vacationOption">'+
							'<td class="w3"><label class="fancy-checkbox-inline"><input type="checkbox" name="chk"><span></span></label></td>' +
							'<td class="w10"><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>' +
							'<td class="w10"><input type="text" class="form-control w_80" name="code"></td>' +
							'<td class="w20"><input type="text" class="form-control" name = "title"></td>' +
							'<td class="w10"><label class="fancy-checkbox-inline"><input type="checkbox" name="AnnualLeaveReflectionCheckbox"><span></span></label></td>' +
							'<input type="hidden" name="AnnualLeaveReflection">' +
							'<td class="w10"><label class="fancy-checkbox-inline"><input type="checkbox" name="UseOrFailureCheckbox"><span></span></label></td>' +
							'<input type="hidden" name="UseOrFailure">' +
							'<td class="w37"><input type="text" class="form-control w_300" name="note"></td>' +
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

	function insertDB(formId){
		var AnnualLeaveReflectionCheckbox = $("input[name='AnnualLeaveReflectionCheckbox']");
		var UseOrFailureCheckbox = $("input[name='UseOrFailureCheckbox']");
		var count = AnnualLeaveReflectionCheckbox.size();
		
		var AnnualLeaveReflectionCheckboxresult = $("input[name='AnnualLeaveReflectionCheckbox']").prop("checked");
		var UseOrFailureCheckboxresult = $("input[name='UseOrFailureCheckbox']").prop("checked");
		
		var AnnualLeaveReflection = $("input[name='AnnualLeaveReflection']");
		var UseOrFailure = $("input[name='UseOrFailure']");
		
		$("input[name='AnnualLeaveReflectionCheckbox']").val(AnnualLeaveReflectionCheckboxresult);
		$("input[name='UseOrFailureCheckbox']").val(UseOrFailureCheckboxresult);
		
		//checkbox�� üũ�Ǿ������� �ش��ϴ� hidden�� true�� �־��ְ� �ƴϸ� false�� �־���.
		for(var i = 0 ; i < count ; i++){
			if(AnnualLeaveReflectionCheckbox.eq(i).is(":checked")){
				AnnualLeaveReflection.eq(i).val('true');
			}else{
				AnnualLeaveReflection.eq(i).val('false');
			}
			
			if(UseOrFailureCheckbox.eq(i).is(":checked")){
				UseOrFailure.eq(i).val('true');
			}else{
				UseOrFailure.eq(i).val('false');
			}
		}
		
		
		var json;
		var obj = new Object();
		var jsonObj = $("#" + formId).serializeArray();
		var jobj = {};
		var jArray = new Array();
		
		$(jsonObj).each(function(index, obj){

			jobj[obj.name] = obj.value;
			//index 0�� divide : �ް�  1�� code : 00 �̷��� ��. �׷��� json �Ѽ�Ʈ�� 6�� ���� 6����  ©����.
			//{"divide":"�ް�","code":"00","title":"�ް�(����)","AnnualLeaveReflection":"false","UseOrFailure":"false","note":""} 6�� ������ �̷��� �ϼ���.
			if((index+1) % 6 == 0 ){
				jArray.push(jobj);
				
				//�ѹ��ϸ� �ʱ�ȭ����ߵ�. �׷��� �ǹؿ��ִ°���θ� �ȵ�.
				jobj = {};
			}
			
			console.log(index + ":" + obj.name +":"+ obj.value);
		});
		
		

// 		for(var i = 0 ; i < jsonObj.length ; i++){
// 			jArray[jsonObj[i]['name']] = jsonObj[i]['value'];
// 		}

		
		$("#" + formId).ajaxForm({
			
			url:"/spring/holidaySetDBInset.ajax",
			type:'GET',
			data : jobj,
			dataType:"JSON",
			
			success:function(data) {
				
				//window.opener.location.reload();
				
				if(data.success == "true") {
					
					alert("���强��!");
				}else {
					
					alert("�ߺ��� �޿������� �ֽ��ϴ�.");
				}
				console.log("��������� : "+ jsonObj);
				console.log("��������� : "+ JSON.stringify(jArray));
		
				self.close();
			},
			
			error:function(jqXHR, textStatus, errorThrown){
				alert("�ߺ��� �޿������� �ֽ��ϴ�. \n" + textStatus + " : " + errorThrown);
	            self.close();
			}
			
		}).submit();
	}
	
</script>

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
								<button type="button" name="addTr" class="btn btn-primary" onClick="">���߰�</button>
								<button type="button" name="deleteTr" class="btn btn-primary" onClick="">�����</button>
							</span>
						</div>	
						<div class="panel-body mgu_15">
							<form class="form-inline" name="f2" action="/spring/holidaySetDBInset.do" id="insertForm">
								
								<table class="table table-bordered" id="vacationOptionTable" style="980px;">
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
		                           <thead class="scrollHead">
		                              <tr>
		                                 <th class="w3">
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="selectAll_chk" onClick="selectAll()">
		                                       <span></span>
		                                    </label>
		                                 </th>
		                                 <th class="text-center w10"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>����</th>
		                                 <th class="text-center w10"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>�ڵ�</th>
		                                 <th class="text-center w20"><i class="fa fa-asterisk-red" aria-hidden="true" ></i>��Ī</th>
		                                 <th class="text-center w10">�����ݿ�</th>
		                                 <th class="text-center w10">��뿩��</th>
		                                 <th class="text-center w37">���</th>
		                              </tr>
		                           </thead>
		                           <tbody class="scrollBody">
		                              <tr id="headTr">
		                                 <td class="w3">
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td class="w10"><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td class="w10"><input type="text" class="form-control w_80" value="00" name="code"></td>
		                                 <td class="w20"><input type="text" value="�ް�(����)" class="form-control" name = "title"></td>
		                                 <td class="w10">
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="AnnualLeaveReflection">
		                                 <td class="w10">
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="UseOrFailure">
		                                 <td class="w37"><input type="text" class="form-control w_300" name="note"></td>
		                              </tr>
		                              <tr>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td class="w10"><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td><input type="text" class="form-control w_80" value="01" name="code"></td>
		                                 <td><input type="text" value="�����ް�" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="AnnualLeaveReflection">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="UseOrFailure">
		                                 <td><input type="text" class="form-control w_300" name="note"></td>
		                              </tr>
		                              <tr>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td><input type="text" class="form-control w_80" value="02" name="code"></td>
		                                 <td><input type="text" value="����" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="AnnualLeaveReflection">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="UseOrFailure">
		                                 <td><input type="text" class="form-control w_300" name="note"></td>
		                              </tr>
		                              <tr>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td><input type="text" class="form-control w_80" value="03" name="code"></td>
		                                 <td><input type="text" value="�����ް�" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="AnnualLeaveReflection">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="UseOrFailure">
		                                 <td><input type="text" class="form-control w_300" name="note"></td>
		                              </tr>
		                              <tr>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td><input type="text" class="form-control w_80" value="04" name="code"></td>
		                                 <td><input type="text" value="����ް�" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                  <input type="hidden" name="AnnualLeaveReflection">
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <input type="hidden" name="UseOrFailure">
		                                 <td><input type="text" class="form-control w_300" name="note"></td>       
		                              </tr>
		                              <tr>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="notDeleteChk">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control w_80" value="�ް�" name="divide"></td>
		                                 <td><input type="text" class="form-control w_80" value="05" name="code"></td>
		                                 <td><input type="text" value="�����ް�" class="form-control" name = "title"></td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="AnnualLeaveReflectionCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td>
		                                    <label class="fancy-checkbox-inline">
		                                       <input type="checkbox" name="UseOrFailureCheckbox">
		                                       <span></span>
		                                    </label>
		                                 </td>
		                                 <td><input type="text" class="form-control w_300" name="note"></td>
		                                 <input type="hidden" name="AnnualLeaveReflection">
		                                 <input type="hidden" name="UseOrFailure">
		                              </tr>
		                           </tbody>
		                        </table>
		                 
		                        <button type="button" name="saveButton" class="btn btn-primary ftr" onClick="insertDB('insertForm')">����</button>
							</form>
						</div>
					</div>	
				</div>
			</div>
		</div>
</body>
</html>
