/**
 * 
 */
//side menu 함수
	(function commMenu(){
		
		//menu list data ajax로 불러오기
		paging.ajaxSubmit("/spring/navList.ajax","",function(data){
			
			var mnPrntNo //부모코드 저장 변수
	    	var mnIdx //menu index 저장 변수 
	    	var thisId // mnPrntNo의 url 저장변수

			//nav 추가 
			$("#sidebar-nav .sidebar-scroll").append("<nav><ul class='nav'></ul></nav>");
			
			//menu list data each
			$.each(data.navList,function(index,dataThis){
				mnPrntNo = dataThis.mnPrntNo; //부모코드 저장 변수
            	mnIdx = dataThis.mnIdx; //menu index 저장 변수 
            	
            
            	//최상위 메뉴 일때 
            	if(mnPrntNo==0){
					//index 적용 if else
            		if($("#sidebar-nav nav:eq(0)").children("li").length>mnIdx){
            			$("#sidebar-nav .nav:eq(0)>li:eq("+mnIdx+")").before("<li id='nav"+dataThis.mnNo+"'><a href='"+dataThis.mnUrl+"'><span>"+dataThis.mnName+"</span></a></li>")
            		}else{
            			$("#sidebar-nav .nav:eq(0)").append("<li id='nav"+dataThis.mnNo+"'><a href='"+dataThis.mnUrl+"'><span>"+dataThis.mnName+"</span></a></li>");
            		}//if else	
            	
            	}else{
            		//ul 추가 if
            	 	if($("#sidebar-nav #nav"+mnPrntNo).find("ul").length==0){
           
            			thisId = $("#sidebar-nav #nav"+mnPrntNo).children("a").attr("href"); //부모의 href 저장변수
            			if(thisId!=undefined){
            		 		$("#sidebar-nav #nav"+mnPrntNo).append("<div id='"+thisId.substring(1)+"' class='collapse'><ul class='nav'></ul></div>");
            	 		}//if
                 	}//if
                 
                 	//index 적용 if else
                 	if($("#sidebar-nav #nav"+mnPrntNo).find("ul:eq(0)>li").length>mnIdx){
                 		$("#sidebar-nav #nav"+mnPrntNo).find("ul:eq(0)>li:eq("+mnIdx+")").before("<li id='nav"+dataThis.mnNo+"'><a href='"+dataThis.mnUrl+"'><span>"+dataThis.mnName+"</span></a></li>");
                	}else{
                 		$("#sidebar-nav #nav"+mnPrntNo).find("ul:eq(0)").append("<li id='nav"+dataThis.mnNo+"'><a href='"+dataThis.mnUrl+"'><span>"+dataThis.mnName+"</span></a></li>");
                 	}//if else
                 	
            	}//if else            
			});//each
			
			//drop menu 적용을 위한 속성 지정
			$("#sidebar-nav a[href^='#']").attr({'data-toggle':'collapse'}).addClass("collapsed").append("<i class='icon-submenu lnr lnr-chevron-left'></i>");
		
			var pageHref = $(location).attr('href'); //현재 페이지 주소값 저장
			var pageUrl = pageHref.substring(pageHref.lastIndexOf("/")+1); // 설정된 url 값 저장 

			//현재 페이지의 메뉴에 active 적용 
			$("#sidebar-nav a[href='"+pageUrl+"']").parents("div.collapse").addClass("in");
			$("#sidebar-nav a[href='"+pageUrl+"']").parents("div.collapse").prev("a").removeClass("collapsed").addClass("collapse active");
		
		}); 
	})();