var mobile = {
	// tab event bind 
	tabinit:function(tab){
		$(tab + " .tab_menu a").click(function(e){
			$(tab + " .tab_menu a").removeClass("on skin_color");					
			$(tab + " .tab_content").removeClass("on");
						
			$(this).addClass("on skin_color");										
			var idx = $(tab +" .tab_menu a").index(this);
			$(tab + " .tab_content").eq(idx).addClass("on");
		});
		$(tab + " .tab_content").eq(0).addClass("on");
	},

	inventoryEdit:function(code){
		$("#hLayer").css('display','block');	
		$("#editInventory").css('display','block');	
		
	},

	editOn:function(){
		$("#editModeOff").removeClass('on');
		$("#editModeOn").addClass('on');
		$("body").addClass('edit');
		//setCookie('editMode','on',30);
	},

	editOff:function(){
		$("#editModeOn").removeClass('on');
		$("#editModeOff").addClass('on');
		$("body").removeClass('edit');
		//setCookie('editMode','',0);
	},

	viewAdminMenu:function(m){
		switch(m){
			case "login" : 
				 $(".admin-login-menu").css('display','none');
				 $(".admin-menu").css('display','block');			 
				 break;
			case "not_login" : 
				 $(".admin-menu").css('display','none');
				 $(".admin-login-menu").css('display','block');			 
				 break;
		}
	},	

	deleteFlayer:function(){
		$("#hLayer").css('display','none');
		$(".fLayer").css('display','none');
	},

	rePostionFlayer:function(){		
		
		$(".fLayer").each(function(){
			$(this).css('left',  ($(window).width() / 2)  - ($(this).width() /2) + 'px');
			$(this).css('top',  ($(window).height() / 2)  - ($(this).height() /2) + 'px');	
		});
		
	},

	viewRelationNews:function(o){
		$(o).parent().find('.hidden').slideDown(function(){
			$(o).fadeOut('slow');
		});		
	},

	initDefaultEvent:function(MOBILE_WWW_DOMAIN, MOBILE_SELF_DOMAIN, MOBILE_FOLDER){			
	
			$("#search_button").click(function(){	
				if($("#subSearchForm").height() == 0){
					$("#subSearchForm").css('height','41px');
				}else{
					$("#subSearchForm").css('height','0').css('padding','0');
				}
			});			

			$("#menu_button").click(function(){ 
				$("#mainMenu").css('top','0px');
			});			

			$("#menu_button").click(function(){ 
				$("#hLayer").css('display','block');				
				$("#mainMenuContainer").css('left','0px');					
				$("#mainMenuContainer").css('height',$(window).height()+'px');				
				$("#hLayer").off('click');
			
				var startEventY = 0;
				var lastEventY = 0
				var posValue = 0;
				var overflowDiffValue = $(window).height() - ($(".mainMenuContainer-inner").outerHeight()+10);

				$(window).bind({
					resize:function(){
					$("#mainMenuContainer").css('height', $(window).height() + 'px');
					overflowDiffValue = $(window).height() - ($(".mainMenuContainer-inner").outerHeight()+10);
					}
				});

				$("#mainMenuContainer").bind('touchstart', function(e) {
					var event = e.originalEvent;
					startEventY = event.touches[0].screenY;					
				});

				$("#mainMenuContainer").bind('touchmove', function(e) {					
					$(document).bind('touchstart touchmove', function(e){e.preventDefault()});
					$(".mainMenuContainer-inner").css('transition','transform 0 ease-out');
					var event = e.originalEvent;					
					posValue = event.touches[0].screenY - startEventY + lastEventY;
					$(".mainMenuContainer-inner").css('transform','translate(0,'+posValue+'px)');
				});	

				$("#mainMenuContainer").bind('touchend', function(e) {					
					$(document).unbind('touchstart touchmove');
					lastEventY = posValue;
					if(lastEventY >= 0 || overflowDiffValue >= 0){
						$(".mainMenuContainer-inner").css('transition','transform 300ms ease-out');
						$(".mainMenuContainer-inner").css('transform','translate(0,0px)');
						lastEventY = 0;	
					}else if(lastEventY < overflowDiffValue){
						$(".mainMenuContainer-inner").css('transition','transform 300ms ease-out');
						$(".mainMenuContainer-inner").css('transform','translate(0,'+overflowDiffValue+'px)');
						lastEventY = overflowDiffValue;
					}
				});

				var eventX = 0;
				$("#hLayer").bind('touchstart', function(e) {
					var event = e.originalEvent;
					eventX = event.touches[0].screenX;					
				});
				$("#hLayer").bind('touchmove', function(e) {
					$(document).bind('touchstart touchmove', function(e){e.preventDefault()});
					var event = e.originalEvent;
					if((eventX-30) > event.touches[0].screenX){
						$(document).unbind('touchstart touchmove');
						$("#hLayer").unbind('touchstart touchmove');
						$("#hLayer").css('display','none');
						$("#mainMenuContainer").css('left','-290px');													
						event.preventDefault();
						return;
					}
				});					
				$("#hLayer").bind('touchend', function(e) {					
					$(document).unbind('touchstart touchmove');					
				});
			});			

			$("#menuClose").click(function(){ 
				$(document).unbind('touchstart touchmove');
				$("#hLayer").unbind('touchstart touchmove');
				$("#hLayer").css('display','none');				
				$("#mainMenuContainer").css('left','-290px');
			});
		
			$(document).scroll(function(){
				var sDocumentHeight = $(document).height() - $(window).height() - $("#wrapper > #footer").outerHeight();
				if($(document).scrollTop() > 0){	
					$("#moblie-top-btn").css('right','0px');	
					if($(document).scrollTop() > sDocumentHeight){						
						$("#moblie-top-btn").css('bottom','30px');	
					}else{
						$("#moblie-top-btn").css('bottom','10px');	
					}
				}else{
					$("#moblie-top-btn").css('right','-45px');
				}
			});

			$("#moveTop").click(function(){
				$('html, body').animate( {scrollTop:0}, 100);
			});

			if( $(".fLayer").length > 0){
				mobile.rePostionFlayer();
				$(window).bind("resize", function(){
					mobile.rePostionFlayer();
				});

				$("#hLayer").on({
					click:function(){
						mobile.deleteFlayer();
					}
				});			
			}			

			var getUrl = MOBILE_WWW_DOMAIN  + '/' + MOBILE_FOLDER + '/admin/php/ajax.getIp.php';		

			$.ajax({  			  
					  crossDomain:true,
					  type: "post",  
					  dataType: "text",  		
					  url: getUrl,    
					  success: function(data) {  						
						 if(data == 'IPOK'){						

							 var $frameSource = $('<iframe src = "'+MOBILE_WWW_DOMAIN+'/'+MOBILE_FOLDER+'/admin/login/wwwLoginCheck.php" id = "wwwLoginCheck" class = "hiddenElement"></iframe>');
							 $('body').append($frameSource);
							 $frameSource.load(function(){			
									switch( $frameSource.contents().text() ){
											 case "LOGIN" :  
												 mobile.viewAdminMenu('login'); 											 
												 if(getCookie('editMode') =='on'){												 
													 $('body').addClass('edit');
												 }
												 break;
											 case "NOT-LOGIN" :  
												mobile.viewAdminMenu('not_login');
												$('body').removeClass('edit');
												break;
										 }
							});
						}
						 		
	
								$("#adminLoginButton").click(function(){
										mobile.adminLogin(MOBILE_WWW_DOMAIN, MOBILE_SELF_DOMAIN, MOBILE_FOLDER);
								});

			
								$("#adminLogoutButton").click(function(){
										mobile.adminLogout(MOBILE_WWW_DOMAIN, MOBILE_SELF_DOMAIN, MOBILE_FOLDER);
								});

							
								$("#editModeOn").click(function(){
									setCookie('editMode','on',30);
									mobile.editOn();
								});

						
								$("#editModeOff").click(function(){
									setCookie('editMode','',-1);
									mobile.editOff()();
								});								
						
								$(".inventoryContainer .editBox").click(function(){
									$("#editInventoryFrame").css('display','block');
									$("#hLayer").css('display','block');								
									$("#editInventoryFrame").attr('src','/admin/inventoryEdit.html?mode=content&code='+$(this).text());									
								});

								$(".advertisementItem .editAd").click(function(){
									$("#editInventoryFrame").css('display','block');
									$("#hLayer").css('display','block');								
									$("#editInventoryFrame").attr('src','/admin/inventoryEdit.html?mode=ad&code='+$(this).text());									
								});
									    			
					  },
					  error: function(e) {  				  								 
				
					  }  
			});			
	}
}

var view = {

	initSocialFloating:function(){
		$("#hLayer").css('display','block');	
		
		$("#socialFloating > header > h2").text('°øÀ¯ÇÏ±â');
		$("#socialFloating	.sns-list").css('display','block');
		$("#socialFloating	.url-copy").css('display','none');
		$("#socialFloating").css('display','block');

		$("#closeSocialFloating").click(function(){
			mobile.deleteFlayer();
		});		
	},

	urlcopy:function(){		
		$("#socialFloating > header > h2").text('URL º¹»ç');
		$("#socialFloating	.sns-list").css('display','none');
		$("#socialFloating	.url-copy").css('display','block');
	},
	
	initFontEvent:function(){		
		var unit = 1;
		var fontLevel = 0;
		var fontTimer;

		$("#fontPlus").click(function(){			
			if(fontLevel < 4){
				$("#articleHeader h1").css('font-size',(parseInt($("#articleHeader h1").css('font-size').replace('px','')) + unit)+'px');
				$("#articleBody .body").css('font-size',(parseInt($("#articleBody .body").css('font-size').replace('px','')) + unit)+'px');		

				$("#articleHeader h1").css('line-height',(parseInt($("#articleHeader h1").css('line-height').replace('px','')) + unit)+'px');
				$("#articleBody .body").css('line-height',(parseInt($("#articleBody .body").css('line-height').replace('px','')) + unit)+'px');		
				fontLevel++;
				setCookie('m-font-size',fontLevel, 30);
							
				if(fontLevel == 4){				
					$('#fontPlus > i').addClass('endSize');
				}else{
					$('#fontMinus > i').removeClass('endSize');
				}
				$("#font-msg").html('ÆùÆ®°¡ È®´ëµÇ¾ú½À´Ï´Ù');
				$("#font-msg").css('display','block');
				clearTimeout(fontTimer);
				fontTimer = setTimeout(function () {$("#font-msg").fadeOut('slow')}, 2000);
			}else{
				$("#font-msg").html('ÃÖ´ë ÆùÆ® »çÀÌÁîÀÔ´Ï´Ù');
				$("#font-msg").css('display','block');
				clearTimeout(fontTimer);
				fontTimer = setTimeout(function () {$("#font-msg").fadeOut('slow')}, 2000);
			}
		});
		
		$("#fontMinus").click(function(){
			if(fontLevel > 0){
				$("#articleHeader h1").css('font-size',(parseInt($("#articleHeader h1").css('font-size').replace('px','')) - unit)+'px');
				$("#articleBody .body").css('font-size',(parseInt($("#articleBody .body").css('font-size').replace('px','')) - unit)+'px');		

				$("#articleHeader h1").css('line-height',(parseInt($("#articleHeader h1").css('line-height').replace('px','')) - unit)+'px');
				$("#articleBody .body").css('line-height',(parseInt($("#articleBody .body").css('line-height').replace('px','')) - unit)+'px');		
				fontLevel--;
				setCookie('m-font-size',fontLevel, 30);
				if(fontLevel == 0){				
					$('#fontMinus > i').addClass('endSize');				
				}else{
					$('#fontPlus > i').removeClass('endSize');
				}
				$("#font-msg").html('ÆùÆ®°¡ Ãà¼ÒµÇ¾ú½À´Ï´Ù');
				$("#font-msg").css('display','block');
				clearTimeout(fontTimer);
				fontTimer = setTimeout(function () {$("#font-msg").fadeOut('slow')}, 2000);
			}else{
				$("#font-msg").html('ÃÖ¼Ò ÆùÆ® »çÀÌÁîÀÔ´Ï´Ù');
				$("#font-msg").css('display','block');
				clearTimeout(fontTimer);
				fontTimer = setTimeout(function () {$("#font-msg").fadeOut('slow')}, 2000);
			}
		});

		$(document).ready(function(){
			fontLevel = getCookie('m-font-size');			
			for(var i = 0; i < fontLevel; i++){				
				$("#articleHeader h1").css('font-size',(parseInt($("#articleHeader h1").css('font-size').replace('px','')) + unit)+'px');
				$("#articleBody .body").css('font-size',(parseInt($("#articleBody .body").css('font-size').replace('px','')) + unit)+'px');		
				$("#articleHeader h1").css('line-height',(parseInt($("#articleHeader h1").css('line-height').replace('px','')) + unit)+'px');
				$("#articleBody .body").css('line-height',(parseInt($("#articleBody .body").css('line-height').replace('px','')) + unit)+'px');				
			}

			if(fontLevel == 0){				
				$('#fontMinus > i').addClass('endSize');				
			}else if(fontLevel == 4){				
				$('#fontPlus > i').addClass('endSize');				
			}		
		});
	}
}

var list = {
	vars : {"mobileDomain":"","wwwDomain":"","pageValue":"","curCount":"","total":"","curYear":"","listMode":"","container":"","list_per_page":"","sc_section_code":"","sc_sub_section_code":"","sc_serial_code":"","sc_area":"","sc_level":"","sc_article_type":"","sc_view_level":"","sc_serial_number":"","sc_word":"","sc_word2":"","sc_andor":"","sc_order_by":""},

	initList:function(
		mobileDomain,
		wwwDomain,
		pageValue,
		curCount,
		total,
		curYear,
		listMode,
		list_per_page,
		sc_section_code,
		sc_sub_section_code,
		sc_serial_code,
		sc_area,
		sc_level,
		sc_article_type,
		sc_view_level,
		sc_serial_number,
		sc_word,
		sc_word2,
		sc_andor,
		sc_order_by
	){	

		list.vars.container =  $("#articleContainer");
		list.vars.mobileDomain = mobileDomain;
		list.vars.wwwDomain = wwwDomain;
		list.vars.pageValue = pageValue;
		list.vars.curCount = curCount;
		list.vars.total = total;
		list.vars.curYear = curYear;
		list.vars.listMode = listMode;					
		list.vars.list_per_page = list_per_page;				
		list.vars.sc_section_code = sc_section_code;				
		list.vars.sc_sub_section_code = sc_sub_section_code;
		list.vars.sc_serial_code = sc_serial_code;
		list.vars.sc_area = sc_area;
		list.vars.sc_level = sc_level;
		list.vars.sc_article_type = sc_article_type;
		list.vars.sc_view_level = sc_view_level;
		list.vars.sc_serial_number = sc_serial_number;
		list.vars.sc_word = sc_word;
		list.vars.sc_word2 = sc_word2;
		list.vars.sc_andor = sc_andor;
		list.vars.sc_order_by = sc_order_by;
	

		$(".dateController .left").click(function(){
			--list.vars.curYear;
			$(".dateController .left").html((list.vars.curYear-1)+'³â');
			$(".dateController .cur").html(list.vars.curYear+'³â');
			$(".dateController .right").html((list.vars.curYear+1)+'³â');
					
			list.yearChange();
		});

		$(".dateController .right").click(function(){
			++list.vars.curYear;
			$(".dateController .left").html((list.vars.curYear-1)+'³â');
			$(".dateController .cur").html(list.vars.curYear+'³â');
			$(".dateController .right").html((list.vars.curYear+1)+'³â');
					
			list.yearChange();
		});
													
		$(window).load(function(){
			list.newsLoad();
			//list.setMode();
		});

		$("#listMore").click(function(){
			++list.vars.pageValue;
			list.newsLoad();
		});				

		$("#listTitleStyle").click(function(){
			list.vars.listMode = 'listTitle';
			list.setMode();
			//list.setHistory();
		});

		$("#listDetailStyle").click(function(){
			list.vars.listMode = 'listDetail';
			list.setMode();
			//list.setHistory();
		});

		$("#listImgStyle").click(function(){
			list.vars.listMode = 'listImg';
			list.setMode();
			//list.setHistory();
		});				
	},

	initMasonry:function(){
		list.vars.container.imagesLoaded( function() {				
			// initialize
			list.vars.container.masonry({
				  columnWidth:0,
				  itemSelector: ".item"
			});	
		});				
	},

	setMode:function(){		
		setCookie('listStyle',list.vars.listMode,30);
		switch(list.vars.listMode){
			case "listTitle" : 						
				list.vars.container.masonry('destroy'); 
				$("#articleContainer").attr('class','articleListTitle'); 
				$(".article-viewer li").removeClass('onView').eq(0).addClass('onView');
				break;
			case "listDetail" : 									
				list.vars.container.masonry('destroy'); 
				$("#articleContainer").attr('class','articleListDetail'); 
				$(".article-viewer li").removeClass('onView').eq(1).addClass('onView');
				break;
			case "listImg" : 
				$("#articleContainer").attr('class','articleListImage'); 
				$(".article-viewer li").removeClass('onView').eq(2).addClass('onView');
				list.initMasonry();
				break;
		}		
	},
			
	newsLoad:function(){		
		$("#listMore").css('display', 'none');
		$("#loading").css('display', 'block');			
		var sc_sdate = list.vars.curYear+'-1-1';
		var sc_edate = list.vars.curYear+'-12-31';			
		

		$.ajax({  			  
			  type: "post",  
			  dataType: "json",  		
			  data:{
				  page:urlencode(list.vars.pageValue),
				  list_per_page:urlencode(list.vars.list_per_page),
				  sc_section_code:urlencode(list.vars.sc_section_code),
				  sc_sub_section_code:urlencode(list.vars.sc_sub_section_code),
				  sc_serial_code:urlencode(list.vars.sc_serial_code),
				  sc_area:urlencode(list.vars.sc_area),
				  sc_level:urlencode(list.vars.sc_level),
				  sc_article_type:urlencode(list.vars.sc_article_type),
				  sc_view_level:urlencode(list.vars.sc_view_level),
				  sc_sdate:urlencode(sc_sdate),
				  sc_edate:urlencode(sc_edate),
				  sc_serial_number:urlencode(list.vars.sc_serial_number),
				  sc_word:urlencode(list.vars.sc_word),
				  sc_word2:urlencode(list.vars.sc_word2),
				  sc_andor:urlencode(list.vars.sc_andor),
				  sc_order_by:urlencode(list.vars.sc_order_by),
				  total:urlencode(list.vars.total)
			  },
			  url: "/news/putNewsJson.php",    
			  success: function(json) {
					

				  if(!list.vars.total) list.vars.total = json.newsCnt;
						  
				  $("#total").text(list.vars.total);			
				  var count = json.news.length;				
					

				   if(count > 0){
					for(var i=0; i<count; i++){
						var idxno = json.news[i].idxno;
						var img = json.news[i].img;
						var title = urldecode(json.news[i].title);
						var sub_title = urldecode(json.news[i].sub_title);
						var summary = urldecode(json.news[i].summary);
						var user_name = urldecode(json.news[i].user_name);
						var date = json.news[i].view_date;							

						var htmlStr = '';
						htmlStr += '<a href = "/news/articleView.html?idxno='+idxno+'" title = "'+list.vars.mobileDomain+'/news/articleView.html?idxno='+idxno+' | ±â»ç »ó¼¼ÆäÀÌÁö">';
						if(img) htmlStr += '<div class = "thumb"><img src = "'+list.vars.wwwDomain+'/'+img+'" /></div>';		
						htmlStr += '<div class = "description">';
						htmlStr += '<h3>'+title+'</h3>';
						if(sub_title) htmlStr += '<h4 class = "dotline">'+sub_title+'</h4>';
						if(summary) htmlStr += '<p class = "summary">'+summary+'</p>';
						htmlStr += '<p class = "info"><span class ="writer">'+user_name+'</span><span class ="date">'+date+'</span></p>';		
						htmlStr += '</div>';						
						htmlStr += '</a>';						
						
						if($('#articleContainer li[data-idx='+idxno+']').length < 1){
							
							if(list.vars.listMode == 'listImg'){
								var elem1 = document.createElement('li');			
								elem1.className = 'item';
								elem1.setAttribute('data-idx',idxno);
								elem1.innerHTML = htmlStr;
								var elems = [ elem1 ];

								list.vars.container.append( elems ).masonry( 'appended', elems );
							}else{
								var tmp = $(document.createElement('li'));		
								tmp.attr('class','item');
								tmp.attr('data-idx',idxno);
								
								tmp.html(htmlStr);					
								tmp.appendTo($("#articleContainer"));
							}							
							
							list.vars.curCount = parseInt(list.vars.curCount) + 1;													
							$("#newsCount").text(list.vars.curCount);

						}
					}

				  }else{						   
						if(list.vars.total < 1){			
							list.vars.pageValue=1;
							alert('±â»ç°¡ Á¸ÀçÇÏÁö ¾Ê½À´Ï´Ù.');
						}else{							
							list.vars.pageValue--;
							alert('´õÀÌ»ó Ç¥½ÃÇÒ ±â»ç°¡ ¾ø½À´Ï´Ù');
						}

						list.vars.curCount = list.vars.total;
						$("#newsCount").text(list.vars.curCount);
				  }

				  $("#listMore").css('display', 'block');
				  $("#loading").css('display', 'none');
				
				  if(list.vars.listMode == 'listImg' && list.vars.curCount > 0) list.initMasonry();

			  },   
			  error: function(e) {  				  								 
				 alert('Á¤»óÃ³¸®µÇÁö ¾Ê¾Ò½À´Ï´Ù.');
				 $("#listMore").css('display', 'block');
				 $("#loading").css('display', 'none');
				 list.vars.pageValue--;
			  }  				 
		 });
	},

	setHistory:function(){		

		if (history && history.pushState) {

			history.pushState(
			{
				"htmlHistory":urlencode($("#articleContainer").html()),			
				"listMode":urlencode(list.vars.listMode),
				"curCount":urlencode(list.vars.curCount),
				"scrollPosition":$("#listMore").offset().top - $(window).height(),
				"pageHistory":list.vars.pageValue
			},
			location.href, 		
			'?page='+list.vars.pageValue+
			'&list_per_page='+urlencode(list.vars.list_per_page)+
			'&total='+urlencode(list.vars.total)+
			'&sc_section_code='+urlencode(list.vars.sc_section_code)+
			'&sc_sub_section_code='+urlencode(list.vars.sc_sub_section_code)+
			'&sc_serial_code='+urlencode(list.vars.sc_serial_code)+
			'&sc_area='+urlencode(list.vars.sc_area)+
			'&sc_level='+urlencode(list.vars.sc_level)+
			'&sc_article_type='+urlencode(list.vars.sc_article_type)+
			'&sc_view_level='+urlencode(list.vars.sc_view_level)+
			'&curYear='+urlencode(list.vars.curYear)+
			'&sc_serial_number='+urlencode(list.vars.sc_serial_number)+
			'&sc_word='+urlencode(list.vars.sc_word)+
			'&sc_word2='+urlencode(list.vars.sc_word2)+
			'&sc_andor='+urlencode(list.vars.sc_andor)+
			'&sc_order_by='+urlencode(list.vars.sc_order_by)+
			'&listStyle='+urlencode(list.vars.listMode)
			);
		}
	},
	
	yearChange:function(){
		list.vars.container.masonry('destroy'); 
		$("#articleContainer > li").remove();
		$('html, body').animate( {scrollTop:0} );
		list.vars.pageValue = 1;
		list.vars.curCount = 0;
		list.vars.total = 0;			
		list.newsLoad();			
		if(list.vars.listMode == 'listImg') list.initMasonry();
	}
}

var toRollingArray = new Array();
var rolling = {
	initRolling:function(target, speed){						
		$(target + " .showButton").click(function(){											
			if($(this).hasClass('on')){				
				$(this).removeClass('on');			
				$(target + " .list li").css('display','none');	
				$(target + ' .list > li').eq(toRollingArray[target]['key']).css('display','block');
				$(target + " .list").removeClass('rollOff').addClass('roll');		
				$(this).find('i').removeClass('fa-caret-up').addClass('fa-caret-down');
				toRollingArray[target]['timer'] =  setTimeout(function(){rolling.toRolling(target, speed);},speed);
			}else{
				clearTimeout( toRollingArray[target]['timer'] );
				$(this).addClass('on');
				$(target + " .list li").css('display','block');				
				$(target + " .list").removeClass('roll').addClass('rollOff');		
				$(this).find('i').removeClass('fa-caret-down').addClass('fa-caret-up');
			}
		});				

		if(toRollingArray[target] === null || toRollingArray[target] === undefined){
			toRollingArray[target] = new Array();
			toRollingArray[target]['key'] = 0;	
			toRollingArray[target]['oldKey'] = 0;	
		}
					
		toRollingArray[target]['timer'] =  setTimeout(function(){rolling.toRolling(target, speed);},speed);
	},

	toRolling:function(target, speed){
		var item = $(target + ' .list > li');		
		item.each(function(i){										
			if(i != toRollingArray[target]['key']){				
				item.eq(i).css('display','none');					
			}
		});				
					
		if(toRollingArray[target]['key'] <= (item.length - 2)){								
			toRollingArray[target]['oldKey'] = toRollingArray[target]['key'];
			toRollingArray[target]['key']++;
		}else{		
			toRollingArray[target]['oldKey'] = item.length - 1;
			toRollingArray[target]['key'] = 0;					
		}						
		item.eq(toRollingArray[target]['oldKey']).fadeOut('slow', function(){							
			item.eq(toRollingArray[target]['key']).fadeIn('slow', function(){
			});					
		});				

		toRollingArray[target]['timer'] =  setTimeout(function(){rolling.toRolling(target, speed);},speed);
	}
}

// AD Write
function ADWriteTag(tag){
	if(!tag) return false;
	if(tag=="stop") return false;
	tag = decodeURIComponent(tag); //decode
	document.write(tag);
}