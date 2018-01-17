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
 * JSON DATA 
 * 
 * ex)
 * {
    "data" : [
        {"mnNo":code,"mnName":name,"mnIdx":index,"mnPrntCode":"root"(parentCode)}
        ]
 *	}
 * 
 */
        $.fn.extend({
        	//data append menu tree
            ssTree:function(data){
            	//menu icon class name	
                var openedClass= 'glyphicon-folder-open',
                    closedClass= 'glyphicon-folder-close';
                
                //menu parent code
                var mnPrntCd;
                
                //menu append 
                $.each(data,function(index,dataThis){
                    mnPrntNo = dataThis.mnPrntNo;
                    console.log(mnPrntNo);
  
                    //ul append
                    if(($("#"+mnPrntNo).find("ul").length==0)){
                        $("#"+mnPrntNo).append("<ul></ul>");
                        
                    }//if
                    
                    //li append
                    $("#"+mnPrntNo).find("ul").append("<li id='"+dataThis.mnNo+"'><span>"+dataThis.mnName+"</span></li>");
                });//data each

                //menu addClass
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
                    }
                    
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
                        console.log(prnt.attr("id"));
                        if(prnt.attr("id")!="root"){
                        	$("input[name='mnPrntNo']").val(prnt.attr("id"));
                        }else{
                        	$("input[name='mnPrntNo']").val(0);
                        }
                        if(prnt.text()!='/'){
                        	$("input[name='mnPrntName']").val(prnt.find("span:eq[0]").text());
                        }
                        $("input[name='mnIdx']").val(prnt.find("li").index(newMenu)); 
                     
                    }
                    ,error:function(){
                        console.log("error");
                    }
                });//ajax
            },//end addMenu
            //click event 
            clickEvent : function(){
                $(this).on('click',function(e){
                    $("#tree li.current").removeClass("current");
                    $(this).addClass("current");
                    $(this).openMenu(e);
                    console.log($(this).attr("id"));
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
                    });
                });
            },//end clickEvent
            //add event
            addEvent : function(){
                $(this).on("click",function(){
                    $("#tree li.current").addMenu();
                    $(this).off("click");
                });
            }//end addEvent
        });//end extend