<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		/**
		 * ssTree 
		 * 
		 * $("target").ssTree(JSON)
		 * 
		 * click event 
		 * 
		 * $("target li").clickEvent();
		 * 
		 * li add event
		 * 
		 * $("button").addEvent();
		 * 
		 * JSON DATA 형식 예
		 * 
		 * root parent code  = 0;
		 * 예){"data":[{mnNo=301, mnPrntNo=120, mnName=test300, mnIdx=0},{mnNo=301, mnPrntNo=0, mnName=test300, mnIdx=0}]}
		 * 
		 * 
		 */
		 $.fn.extend({
		 	//data append menu tree
		     ssTree:function(data){
		     	console.log(data);
		     	//menu icon class name	
		         var openedClass= 'glyphicon-folder-open',
		             closedClass= 'glyphicon-folder-close';
		         
		         //menu parent code
		         var mnPrntNo;
		         //menu idx
		         var mnIdx;
		         
		         //menu append 
		         $.each(data,function(index,dataThis){
		             mnPrntNo = dataThis.mnPrntNo;
		             mnIdx = dataThis.mnIdx;
		 
		             //ul append
		             if($("#tree #"+mnPrntNo).find("ul").length==0){
		                 $("#tree #"+mnPrntNo).append("<ul></ul>");
		             }//if
		             
		             //li append
		             
		             //index 적용 if else
		             if($("#tree #"+mnPrntNo).find("ul:eq(0)>li").length>mnIdx){
		             	$("#tree #"+mnPrntNo).find("ul:eq(0)>li:eq("+mnIdx+")").before("<li id='"+dataThis.mnNo+"'><span>"+dataThis.mnName+"</span></li>");
		             }else{
		             	$("#tree #"+mnPrntNo).find("ul:eq(0)").append("<li id='"+dataThis.mnNo+"'><span>"+dataThis.mnName+"</span></li>");
		             }//if else
		             
		         });//data each
	
		         var tree = $(this);
		         
		         //class add
		         tree.addClass("tree");
	
		         //li icon append
		         tree.find('li').each(function (index) {
	
		             if($(this).has("ul").length>0){
		                 var branch = $(this); //li with children ul
		                
		                 branch.prepend("<i class='indicator glyphicon " + closedClass + "'></i>");
		                 branch.addClass('branch');
		                 
		                 //toggle()
		                 branch.children().children().toggle();
		             }//if
		        	 	//root menu open
		             if(index==0){
		                 $(this).openMenu();
		                 $(this).addClass("current");
		             }
		         });//tree each
		     },//end ssTree
		     //openMenu event
		     openMenu : function(e){
		     	//menu icon class name	
		         var openedClass= 'glyphicon-folder-open',
		             closedClass= 'glyphicon-folder-close';
	
		         var icon = $(this).children('i:first');
		         icon.toggleClass(openedClass + " " + closedClass);
		         $(this).children().children().toggle();
	
		         //event bubbling block
		         if(e!=undefined){
		             if(e.stopPropagation) e.stopPropagation(); //MOZILLA
		         else e.cancelBubble = true; //IE
		         }//if
		     },//end openMenu
		     //menu add
		     addMenu : function(){
		     	//menu icon class name	
		         var openedClass= 'glyphicon-folder-open',
		             closedClass= 'glyphicon-folder-close';
		         
		         //ul&icon append
		         if($(this).find("ul").length==0){
		             $(this).append("<ul></ul>");
		             $(this).addClass('branch');
		             $(this).prepend("<i class='indicator glyphicon " + closedClass + "'></i>");
		         }//if
		         
		         //menu open
		         if($(this).has("ul").children('i:first.glyphicon-folder-close').length>0){
		             $(this).has("ul").openMenu();
		         }
		         
		         //li append
		         $(this).children("ul").append("<li name='new' class='current'><span>new</span></li>");
		         $("[name='new']").parents(".current").removeClass("current");
		         $("[name='new']").clickEvent();
		         
		         //form html append ajax
		         $.ajax({
		             type:"GET",
		             url:"menuInsertForm.do", //html
		             dataType:"html",
		             success:function(html){
		                 $("[name='detail']").html(html);
		                 var newMenu = $("[name='new']");
		                 var prnt = newMenu.parents('li:eq(0)');
		                 
		                 $("input[name='mnPrntNo']").val(prnt.attr("id"));
		                 $("input[name='mnIdx']").val(newMenu.siblings().length); 
		             }
		             ,error:function(){
		                 console.log("error");
		             }
		         });//ajax
		     },//end addMenu
		     //menu click event 
		     clickEvent : function(){
		     	//이벤트 등록 
		         $(this).on('click',function(e){
		         	//현재 대상외 class 삭제
		             $("#tree li.current").removeClass("current");
		             //대상 class 추가 
		             $(this).addClass("current");
		             //메뉴 오픈 
		             $(this).openMenu(e); 
		            
		             //기본 루트 li 제외 if
		             if($(this).attr("id")!="0"){
		             	$.ajax({
		                 	type:"POST",
		                 	url:"menuDetail.do",
		                 	data:{mnNo:$(this).attr("id")},
		                 	dataType:"html",
		                     success:function(html){
		                          $("[name='detail']").html(html);
		                      }
		                      ,error:function(){
		                          console.log("error");
		                      }	
		                 });//ajax
		             }//if
		         });//on click event
		     },//end clickEvent
		     //add event
		     addEvent : function(){
		         $(this).on("click",function(){
		             $("#tree li.current").addMenu();//메뉴 추가 
		             $(this).off("click"); //메뉴추가 이벤트 제거
		             $("#tree li").off("click"); //menu tree 이벤트 제거 
		         });//onclick
		     }//end addEvent
		 });//end extend
	</script>
	<script>
		
		//menuTree 에 들어갈 menu data load
		paging.ajaxSubmit("menuList.ajax","","menuTree",true);
	
		//menuUpdateForm html load
		var menuUpdateForm = function(){
	
		     var mnNo = $("[name='mnNo']").text(); //가져올 menu code 변수
		    //form html append ajax
		    $.ajax({
		        type:"GET",
		        url:"menuUpdateForm.do?mnNo="+mnNo, //html
		        dataType:"html",
		        success:function(html){
		            //panel에 html append
		            $("[name='detail']").html(html);
		            //카테고리 이동 버튼 이벤트 등록
		            moveEvent();
		        }
		        ,error:function(){
		            console.log("error");
		        }
		    });//ajax
		};//menuUpdateForm
	
		//menu update 함수
		var menuUpdate = function(){
		    //해당위치의 모든 menu index 저장변수
		    var menuIdxStr = "";
	
		    var mnNo = $("[name='mnNo']").val();// 해당 menu code
		    var $thisMenu = $("#tree #"+mnNo); // menuTree에서 해당 menu code를 가진 li
		    var $thisParent = $thisMenu.parent("ul"); // menuTree에서 해당 메뉴의 부모 ul 노드
	
		    //해당 위치의 모든 menu each
		    $thisParent.children("li").each(function(index){
		        //menu index string에 저장
		        menuIdxStr += $(this).attr("id")+":"+index+"^";
		    });//each
	
		    //menuIdxStr input에 저장
		    $("input[name='mnIdxStr']").val(menuIdxStr);
	
		    //ajax submit 실행
		    paging.ajaxFormSubmit("menuUpdate.do","updateForm","resultData");
	
		};//menuUpdate
	
		//이동 버튼 이벤트 등록 함수
		var moveEvent = function(){
		    $("#mnIdxBtn>button").on("click",function(){
		        menuMove($(this));
		    });//onClick
		};//moveEvent
	
		//menu 이동 이벤트 함수
		var menuMove = function(thisBtn){
	
		    var mnNo = $("[name='mnNo']").val(); //menu code 저장변수
		    var $thisMenu = $("#tree #"+mnNo); // menuTree에서 해당 menu code를 가진 li
		    var $thisParent = $thisMenu.parent("ul"); // menuTree에서 해당 메뉴의 부모 ul 노드
	
		    //switch (이벤트 실행 버튼 종류)
		    switch(thisBtn.attr("name")){
		        case "up" :
		                    $thisMenu.insertBefore($thisMenu.prev());
		                    break;
		        case "down" :
		                    $thisMenu.insertAfter($thisMenu.next());
		                    break;
		        case "top" :
		                    $thisMenu.prependTo($thisParent);
		                    break;
		        case "buttom" :
		                    $thisMenu.appendTo($thisParent);
		                    break;
		    }//switch
		};//menuMove
	
		//menu 등록 함수
		var menuInsert = function(){
		    paging.ajaxFormSubmit('/spring/menuInsert.do','insertForm',"resultData");
		    //사이드 메뉴 재 배치를 위한 함수 호출
		    commMenu();
		};//menuInsert
	
		var menuDelete = function(){
		    var mnNoData = {"mnNo" : $("[name='mnNo']").text()}; //가져올 menu code 변수
		    paging.ajaxSubmit("/spring/menuDelete.do",mnNoData,"resultData",true);
		}//menuDelete
	
		//menu 수정, 업데이트 , 삭제 결과 함수
		var resultData = function(result){
		    if(result="1"){
		        alert("정상처리되었습니다.");
		        window.location.href = "menuTreeMain.do";
		    }else{
		        alert("다시 시도해주세요.");
		    }//if else
	
		};//resultData
	
		//가져온 menu list 를 menu Tree에 배치하는 함수
		var menuTree = function menuTree(result){
		    //ssTree 호출
		    console.log(result);
		    $("#tree").ssTree(result.data);
		    //클릭 이벤트 등록
		    $("#tree li").clickEvent();
		    //버튼 추가 이벤트 등록
		    $("button[name='menuAdd']").addEvent();
		};//menuTree
	
		//작업 취소 함수
		var menuEsc = function(){
		    window.location.href = "menuTreeMain.do";
		};//menuEsc
</script>
</body>
</html>