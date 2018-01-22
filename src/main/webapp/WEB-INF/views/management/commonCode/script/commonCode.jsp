<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script>
	
	/* ================================ 메인 공통코드 관련  ========================================== */		
		
			// 메인 공통코드 insert시 중복체크  //
			$("form[id='insertForm'] input[name='commCodeCheck']").on("click", function(){	
				
				var url = "/spring/commCodeCheck.do";
				var commCode = $("#insertForm input[name='commCode']").val();
				var data = {"commCode":commCode};
				
				if(commCode == ""){
					alert("코드를 입력해주세요.");
					return false;
				}//if
				
				commCodeCheckAjaxSubmit(url, data);
				
			});
			
			function commCodeCheckAjaxSubmit(url, data){
				
				paging.ajaxSubmit(url, data, function(result){
					$("form[id='insertForm'] span[name='checkValue']").text(result.commCode);
				});
					
			}//ajaxSubmit
			// 메인 공통코드 insert시 중복체크  //
			
			
			// 메인 공통코드 등록 //
			$("#insertBtn").on("click",function(){
				
				var thisModal = $("#insertModal form[id='insertForm']");
				
				if(thisModal.find("span[name='checkValue']").text() == ""){
					alert("코드를 확인해주세요.");
					return false;
				}else if(thisModal.find("span[name='checkValue']").text()
						== "이미 사용 중인 코드입니다."){
					alert("사용할 수 없는 코드입니다. 다시 확인해 주세요.");
					return false;
				}//if
				
				if(thisModal.find("input[name='commCode']").val() == ""){
					alert("코드를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commName']").val() == ""){
					alert("코드명을 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commCodeInfo']").val() == ""){
					alert("코드정보를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='deptCode']").val() == ""){
					alert("등록부서를 입력해주세요.");
					return false;
				}
					
				
				var url = "/spring/commonInsert.do";
				var frm = $("#insertModal").find("form").attr("id");
				
				if(confirm("등록 하시겠습니까?") == true){
					
					commInsertAjaxFormSubmit(url,frm);
				
				}else{
					return false;
				}//if
				
			});
			
			function commInsertAjaxFormSubmit(url,frm){
			
				paging.ajaxFormSubmit(url,frm,function(result){
					
					if(result == 1){
						alert("정상적으로 등록되었습니다.");
						location.href = "/spring/commonList.do";
					}else{
						alert("등록에 실패하였습니다. 다시 시도해주세요.");
						location.href = "/spring/commonList.do";
					}//if
				});
			}
			// 메인 공통코드 등록 //
			
			
			
			// 메인 공통코드 검색조건 목록 //
			function commSearchListFunc(){
				
				var url = "/spring/commonList.do";
				var commonSelect = $("select[name='commonSelect'] option:selected").val();
				var commonSearch = $("input[name='commonSearch']").val();
				
				console.log("commonSelect: " + commonSearch);
				
				if(commonSelect == ('default')){
					alert("검색조건을 선택해주세요.");
					return false;
				}else if(commonSearch == ("")){
					alert("검색내용을 입력해주세요.");
					return false;
				}else{
					$("#commonSearchForm").submit();
					
				}
				
				var data = {"commonSelect":commonSelect,"commonSearch":commonSearch};
				
				//location.href = "/Project/commonList.do?commonSelect="+commonSelect+"&commonSearch="+commonSearch;
				//commSearchListajaxSubmit(url,data);
				
			}//commSearchListFunc
			// 메인 공통코드 검색조건 목록 //
			

			
			// 메인 공통코드 수정 //
			$("div[id='commList'] table button[name='updateBtn']").on("click", function(){
				
				$("updateModal form[id='updateForm']").find("tr").find("td").each(function(){
					$(this).val().remove();
				});
				 
				var commCode = $(this).closest("tr").children("td[name='commCode']").text();
				var commName = $(this).closest("tr").children("td[name='commName']").text();
				var commCodeInfo = $(this).closest("tr").children("td[name='commCodeInfo']").text();
				var deptUpdtCode = $(this).closest("tr").children("td[name='deptCode']").text();
				
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commCode']").val(commCode);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commName']").val(commName);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='commCodeInfo']").val(commCodeInfo);
				$("#updateModal form[id='updateForm']").find("tr").find("td").children("input[name='deptUpdtCode']").val(deptUpdtCode);
				
				$("#updateModal").modal('show');
				
			});
			
			
			$("#updateModal .modal-footer button[name='submitBtn']").on("click",function(){
				
				if(thisModal.find("input[name='commName']").val() == ""){
					alert("코드명을 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commCodeInfo']").val() == ""){
					alert("코드정보를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='deptUpdtCode']").val() == ""){
					alert("수정부서를 입력해주세요.");
					return false;
				}//if
				
				var url = "/spring/commonUpdate.do";
				var frm = $("#updateModal").find("form").attr("id");
				
				if(confirm("정말로 수정하시겠습니까?") == true){
					commUpdateAjaxFormSubmit(url,frm);
				}else{
					return false;
				}//if
				
			});
			
			function commUpdateAjaxFormSubmit(url,frm){
				
				paging.ajaxFormSubmit(url,frm,function(result){
					
					if(result == 1){
						alert("정상적으로 수정되었습니다.");
						location.href = "/spring/commonList.do";
					}else{
						alert("수정에 실패하였습니다. 다시 시도해주세요.");
						location.href = "/spring/commonList.do";
					}//if
				});
				
			}//commUpdateAjaxSubmit
			// 메인 공통코드 수정 //
			
			
			
			// 메인 공통코드 삭제 //
			$("div[id='commList'] table button[name='deleteBtn']").on("click", function(){
				
				var commCode = $(this).closest("tr").children("td[name='commCode']").text();
				
				if(confirm("정말로 삭제 하시겠습니까?") == true){
					
					var url = "/spring/commonDeleteCheck.do";
					var data = {"commCode":commCode};
					
					commDeleteAjaxSubmit(url,data);
					
				}else{
					return false;
				}
				
			});
			
			function commDeleteAjaxSubmit(url, data){
				
				paging.ajaxSubmit(url,data,function(result){

					if(result.listSize == 0 || result.listSize == "0"){
						location.href = "/spring/commonDelete.do?commCode="+data.commCode;
					}else{
						alert("해당 코드는 삭제할 수 없습니다.");
						return false;
					}
					
				});
			}
			// 메인 공통코드 삭제 //
			
			
/* ================================ 하위 공통코드 관련(공통코드 상세보기) ========================================== */

			
			// 공통코드 상세보기에서 공통코드 insert시 중복체크 START //
			$("form[id='infoInsertForm'] input[name='commCodeCheck']").on("click", function(){	
				
				var url = "/spring/commCodeCheck.do";
				var commCode = $("#infoInsertForm input[name='commCode']").val();
				var data = {"commCode":commCode};
				
				if(commCode == ""){
					alert("코드를 입력해주세요.");
					return false;
				}//if
				
				commCodeInfoCheckAjaxSubmit(url, data);
				
			});
			
			function commCodeInfoCheckAjaxSubmit(url, data){
				
				paging.ajaxSubmit(url, data, function(result){
					$("#infoInsertForm span[name='checkValue']").text(result.commCode);
				});
					
			}//ajaxSubmit
			// 공통코드 상세보기에서 공통코드 insert시 중복체크 START //
			
			
			
			// 공통코드 상세보기 목록 //
			function commInfoListFunc(obj){
				
				var url = "/spring/commonInfoList.do";
				var path = obj;
				var commCode = $(obj).find("td[name='commCode']").text();
				var data = {"commPrntCode":commCode};
				
				
				// 해당 부모코드의 하위코드 생성할 때 필요한 작업 //
				var commPrntCode = $(obj).find("td[name='commCode']").text();
				var commPrntName = $(obj).find("td[name='commName']").text();
				
				if($("#infoInsertModal form[id='infoInsertForm']").find($("input[type='hidden']"))){
					
					$("#infoInsertModal form[id='infoInsertForm']").find($("input[type='hidden']")).each(function(){
						$(this).remove();
					});
					
				}//if
				
				$("#infoInsertModal form[id='infoInsertForm']").prepend("<input type='hidden' name='commPrntName' value='" + commPrntName + "'>");
				$("#infoInsertModal form[id='infoInsertForm']").prepend("<input type='hidden' name='commPrntCode' value='" + commPrntCode + "'>");
				// 해당 부모코드의 하위코드 생성할 때 필요한 작업  //
				
				commInfoListAjaxSubmit(url,data);
				
			}//commCodeInfoFunc
			
			function commInfoListAjaxSubmit(url,data){
				
				paging.ajaxSubmit(url, data, function(result){
					
					if(result.length == 0 || result == null){	//상세보기 목록 값이 없으면
						
						console.log("목록없음");
						
						if($("div[id='infoModal'] tbody").find("tr")){	//기존에 생성 되어있던 목록 삭제
							
							$("div[id='infoModal'] tbody").find("tr").each(function(){
								$(this).remove();
							});
							
						}//if
						
						$("#infoModal").modal('show');	//상세보기 모달띄움
					
					}else{	//상세보기 목록 값이 있으면
						
						console.log("목록있음");
						
						if($("div[id='infoModal'] tbody").find("tr")){	//기존에 생성되있었던 목록 삭제
							
							$("div[id='infoModal'] tbody").find("tr").each(function(){
								$(this).remove();
							});
							
						}//if
						
						$.each(result, function(idx,value){	//해당 부모코드의 하위코드 목록 개수만큼 동적 생성
							
							$("div[id='infoModal'] tbody").append(
									"<tr>" +
										"<td name='commCode'>" + result[idx].commCode + "</td>" +
										"<td name='commName'>" + result[idx].commName + "</td>" +
										"<td name='commCodeInfo'>" + result[idx].commCodeInfo + "</td>" + 
										"<td name='deptCode'>" + result[idx].deptCode + "</td>" +
										"<td name='deptUpdtCode'>" + result[idx].deptUpdtCode + "</td>" + 
										"<td name='commCodeCrt'>" + result[idx].commCodeCrt + "</td>" +
										"<td name='commCodeUpdt'>" + result[idx].commCodeUpdt + "</td>" +
										"<td name='commInfoBtn'>" + 
											"<button type='button' name='infoUpdateBtn' class='btn btn-default' onClick='commInfoUpdateFunc($(this))'>수정</button>" +
											"<button type='button' name='infoDeleteBtn' class='btn btn-default' onClick='commInfoDeleteFunc($(this))'>삭제</button></td>" + 
										"</td>" + 
									"</tr>"
								);
							
						});//each

						$("#infoModal").modal('show');
						
					}//if
					
				});
				
			}//commCodeInfoAjaxSubmit
			//공통코드 상세보기 목록//
			
			
			
			// 공통코드 상세보기에서 코드 등록 //
			$("#infoInsertBtn").on("click", function(){
				
				var thisModal = $("#infoInsertModal").find("#infoInsertForm");
				
				if(thisModal.find("input[name='commCode']").val() == ""){
					alert("코드를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commName']").val() == ""){
					alert("코드명을 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commCodeInfo']").val() == ""){
					alert("코드정보를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='deptCode']").val() == ""){
					alert("등록부서를 입력해주세요.");
					return false;
				}//if
				
				var url = "/spring/commonInfoInsert.do";
				var frm = $("#infoInsertModal").find("form").attr("id");
				
				if(confirm("등록 하시겠습니까?") == true){
					
					if($("#infoInsertModal #infoInsertForm").find("span[name='checkValue']") == ""){
						alert("코드를 확인해주세요.");
						return false;
					}//if
					
					commInfoInsertAjaxFormSubmit(url,frm);
				
				}else{
					return false;
				}
				
			});
			
			function commInfoInsertAjaxFormSubmit(url,frm){
				
				paging.ajaxFormSubmit(url,frm,function(result){
					
					if(result == 1){
						alert("정상적으로 등록되었습니다.");
						location.href = "/spring/commonList.do";
					}else{
						alert("등록에 실패하였습니다. 다시 시도해주세요.");
						location.href = "/spring/commonList.do";
					}//if
					
				});
			}
			// 공통코드 상세보기에서 코드 등록 //
			
			
			
			// 공통코드 상세보기에서 코드 수정 //
			function commInfoUpdateFunc(obj){
				
				var commCode = obj.closest("tr").find("td[name='commCode']").text();
				var commName = obj.closest("tr").find("td[name='commName']").text();
				var commCodeInfo = obj.closest("tr").find("td[name='commCodeInfo']").text();
				var deptUpdtCode = obj.closest("tr").find("td[name='deptCode']").text();
				
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commCode']").val(commCode);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commName']").val(commName);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='commCodeInfo']").val(commCodeInfo);
				$("#infoUpdateModal form[id='infoUpdateForm']").find("input[name='deptUpdtCode']").val(deptUpdtCode);
				
				$("#infoUpdateModal").modal('show');
				
			}//commInfoUpdateFunc
			
			$("#infoUpdateModal div[class='modal-footer'] button[name='submitBtn']").on("click",function(){
				
				var thisModal = $("#infoUpdateModal").find("#infoUpdateForm");
				
				if(thisModal.find("input[name='commName']").val() == ""){
					alert("코드명을 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='commCodeInfo']").val() == ""){
					alert("코드정보를 입력해주세요.");
					return false;
				}else if(thisModal.find("input[name='deptUpdtCode']").val() == ""){
					alert("수정부서를 입력해주세요.");
					return false;
				}//if
				
				var url = "/spring/commonUpdate.do";
				var frm = $("#infoUpdateModal").find("form").attr("id");
				
				if(confirm("정말로 수정하시겠습니까?") == true){
					commInfoUpdateAjaxFormSubmit(url,frm);
				}else{
					return false;
				}
				
			});
			
			function commInfoUpdateAjaxFormSubmit(url,frm){
				
				paging.ajaxFormSubmit(url,frm,function(result){
					
					if(result == 1){
						alert("정상적으로 수정되었습니다.");
						location.href = "/spring/commonList.do";
					}else{
						alert("수정에 실패하였습니다. 다시 시도해주세요.");
						location.href = "/spring/commonList.do";
					}//if
					
				});
				
			}
			// 공통코드 상세보기에서 코드 수정 //
			
			
			
			// 공통코드 상세보기에서 코드 삭제 //
			function commInfoDeleteFunc(obj){
				
				var url = "/spring/commonDelete.do";
				var commCode = obj.parents("tr").find("td[name='commCode']").html();
				var data = {"commCode":commCode};
				
				if(confirm("정말로 삭제하시겠습니까?") == true){
					commInfoDeleteAjaxSubmit(url,data);
				}else{
					return false;
				}//if
			}//commInfoDeleteFunc
			
			function commInfoDeleteAjaxSubmit(url,data){
				
				paging.ajaxSubmit(url,data,function(result){
					
					if(result == 1){
						alert("정상적으로 삭제되었습니다.");
						location.href = "/spring/commonList.do";
					}else{
						alert("삭제에 실패하였습니다.");
						location.href = "/spring/commonList.do";
					}//if
					
				});
			}
			// 공통코드 상세보기에서 코드 삭제 //
			
			
			
			
			
		</script>

</head>
<body>

</body>
</html>