<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<%String addressHeader = "/WebContent";%>
<%-- <%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%> --%>
  
<!--  String addressHeader = "../"
	  String addressHeader = "/WebContent" -->
<link rel="stylesheet" type="text/css" href="<%=addressHeader%>/css/common.css"> <!-- 폰트 -->
<link rel="stylesheet" type="text/css" href="<%=addressHeader%>/css/layout.css" /> <!-- Layout -->
<link rel="stylesheet" type="text/css" href="<%=addressHeader%>/css/header.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" /> <!-- 메뉴바 X표시 -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> <!-- 메뉴바 반응형 -->
<script src="<%=addressHeader%>/js/mobile.js"></script> <!-- 메뉴바 반응형 -->
<script src="<%=addressHeader%>/js/scroll.js" type="text/javascript"></script>
</head>
<body>
<div id="wrapper" class = "service SET_B" style="text-align:center">
<header id = "header" class = "SET_B">	
	<!-- 메인 헤더 -->		
		<div id = "mainHeader" class = "skin_background">			
		<ul class = "headerList">
			<li class = "headerLeft">
				<span id = "menu_button" class = "top-nav">
					<img src="<%=addressHeader%>/images/menu.png">
				</span>
			</li>
			<li class = "headerCenter">
				 <h2>장학꿈</h2>
			</li>
			<li class = "headerRight">
				<span id = "search_button" class = "top-nav">
					<img src="<%=addressHeader%>/images/search.png">
				</span>									
			</li>
		</ul>
	</div>
	<!-- 메인 헤더 -->				

	<!-- 왼쪽 메뉴 -->
	<aside id="mainMenuContainer" class = "border-box">				
		<nav class="mainMenuContainer-inner">						
			<section class="menu-search">
				<form name = "searchForm" method = "post" action = "mSearchList.jsp" id = "mainSearchForm">
					<input type = "hidden" name = "sc_area" value = "A">
					<input type="search" name="sc_word" placeholder="검색하기" class="keyword border-box menu-sch-input ft-fa2" >
					<button class = "searchButton">검색</button>						
				</form>
				<a id="menuClose"><i class="fa fa-times fa-2x"></i></a>
			</section>	
			
			<section class="menu border-box" style="text-align:center">
				<a>
					<h2 class="ft-fa1" style="text-align: center;">로그인하기</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>

			<section class="menu border-box" style="text-align:center">
				<a href="mMain.jsp">
					<h2 class="ft-fa1" style="text-align: center;">메인화면</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			
			<section class="menu border-box" style="text-align:center">
				<a>
					<h2 class="ft-fa1" style="text-align: center;">장학꿈소개</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			
			<!--  
			<section class="menu border-box" style="text-align:center">
				<a href="mAnnouncement.jsp">
					<h2 class="ft-fa1" style="text-align: center;">공지사항</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			-->
			
			<ul id = "news-category-list">
				<li><a href="mMain.jsp">신규장학금</a></li>
				<li><a href="mTop.jsp">인기장학금</a></li>
				<li><a href="mTotal.jsp">전체장학금</a></li>
				<li><a href="mScholarship.jsp">진행장학금</a></li>
				<li><a href="mScholarshipEnd.jsp">마감장학금</a></li>		
			</ul>						
		</nav>
	</aside>	
	<!-- 왼쪽 메뉴 -->

	<!-- 검색바 -->
	<div id = "subSearchForm" class="skin_background">				
		<form name = "searchForm" class = "searchForm" method = "post" action = "mSearchList.jsp">
			<input type = "hidden" name = "sc_area" value = "A">
			<input type = "text" name = "sc_word" class = "keyword">
			<button  class = "button_3 searchButton">검색</button>		
		</form>				
	</div>
	<!-- 검색바 -->

</header>
</div>

<div id="wrap">
    <nav id="topMenu">
    <ul id="scroller">
		<li><a class="top-menu0" href="mMain.jsp" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">신규장학금</a></li>
		<li><a class="top-menu1" href="mTop.jsp" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">인기장학금</a></li>
		<li><a class="top-menu2" href="mTotal.jsp" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">전체장학금</a></li>
		<li><a class="top-menu3" href="mScholarship.jsp" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">진행장학금</a></li>
		<li><a class="top-menu4" href="mScholarshipEnd.jsp" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">마감장학금</a></li>
    </ul>
    <span id="scroller-left" class="scroller-arr-left" data-cclick="MOBILE_,SCROLLER,LEFT,0"></span>
    <span id="scroller-right" class="scroller-arr-right active" data-cclick="MOBILE_,SCROLLER,RIGHT,0"></span>
	</nav>
</div>

<script>
$(window).load(function(){
	mobile.initDefaultEvent('http://scholarshipcenter.co.kr','mobile');
});
</script>

<script type="text/javascript">
    "use strict";
    var iscroll;
    var actArrw = function() {
        $('#scroller-left,#scroller-right').addClass('active');
        0 === iscroll.x ? $("#scroller-left").removeClass("active")
                : iscroll.x === iscroll.maxScrollX &&
                $("#scroller-right").removeClass("active");
    }

    var selectedTopmenu = "top-menu0";

    $(document).ready(function() {
        $('#main-banner').click(function() {
            if(!($(this).attr("href"))){
                coupangApp.go('', 'homeBanner');
            }
        });

        var _menuIndex = $("#scroller li a").index($("." + selectedTopmenu));
        iscroll.goToPage(_menuIndex, 0, 0);
        actArrw();

        if($('#todayshot-section').hasClass('isFlicking')){
            var panelTime;

            $("#todayshotList").touchSlider({
                speed : 400,
                flexible : true,
                rolling : true,
                page : 1,
                initComplete : function (e) {
                    $("#todayshotIndicator").html("");
                    $("#todayshotList ul li").each(function (i, el) {
                        if((i+1) % e._view == 0) {
                            $("#todayshotIndicator").append('<li></li>');
                        }
                    });
                    $('#todayshotList img').load(function(){$(window).trigger('resize');});
                },
                counter : function (e) {
                    $("#todayshotIndicator li").removeClass("on").eq(e.current-1).addClass("on");
                    clearInterval(panelTime);
                    panelTime = setInterval(function(){$("#todayshotList").get(0).animate(-1,true)},3000);
                },
                custom : function (){
                    clearInterval(panelTime);
                },
                onTouchEnd : function() {
                }
            });

            panelTime = setInterval(function(){$("#todayshotList").get(0).animate(-1,true)},5000);

            $(window).bind({
                resize : function() {
                    $("#todayshotList").height($("#todayshotList img").height());
                },
                load : function() {
                    $("#todayshotList").height($("#todayshotList img").height());
                }
            });
        };
    });

    if($('#topMenu').size() > 0 && $('#scroller').size() > 0){
        $('#scroller').width(document.getElementById('scroller').scrollWidth + 52);

        var scrollOption = {
            snap : 'li',
            scrollX : true,
            scrollY : false,
            eventPassthrough : true
        };
        if(navigator.userAgent.match(/iphone/i) ||
                navigator.userAgent.match(/ipad/i)){
            scrollOption.useTransform = false;
        }
        iscroll = new IScroll('#topMenu', scrollOption);
        iscroll.on('scrollEnd', actArrw);
        $('#scroller-left,#scroller-right').click(function() {
            $(this).hasClass("scroller-arr-left") ? iscroll.prev() : iscroll.next();
        });
    }
</script>
</body>
</html>