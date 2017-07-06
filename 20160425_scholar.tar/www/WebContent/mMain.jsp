<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>장학꿈</title>
<meta http-e"/Users/Minjeong/Downloads/ScholarshipCenter/WebContent/mboard/mMain.jsp"quiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />

<link rel="stylesheet" type="text/css" href="/WebContent/mboard/common.css"> <!-- 폰트 -->
<link rel="stylesheet" type="text/css" href="/WebContent/mboard/layout.css" /> <!-- Layout -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" /> <!-- 메뉴바 X표시 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> <!-- 메뉴바 반응형 -->
<script src="http://m.hgupress.com/js/mobile.js"></script> <!-- 메뉴바 반응형 -->

<script src='//imgs.coupangcdn.com/system/staticlibraries/jquery-touch-slider/201308/jquery.touchSlider-201308.js' type="text/javascript"></script>
<script src='//imgs.coupangcdn.com/system/staticlibraries/jquery-i18n-properties/1.0.9/jquery.i18n.properties-min-1.0.9.js' type="text/javascript"></script>
<script src='//imgs.coupangcdn.com/system/staticlibraries/iscroll/5.1.3/iscroll-5.1.3.js' type="text/javascript"></script>
<script src="http://m.coupang.com/resources/20150710182707_33c27461/nm/common/js/mobile_common.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://m.coupang.com/resources/20150719172354_b4679e18/nm/css/m.v2.min.css" type="text/css"/>

<style type = "text/css"> 
#wrapper .skin_background{background-color:#005DBC; color:#fff}
#wrapper .skin_color{color:#005DBC;}
#wrapper .skin_border{border:2px solid #005DBC;}
#wrapper .skin_bottom{border-bottom:4px solid #005DBC;}
</style>

</head>
<body>
<div id="wrapper" class = "service SET_B" style="text-align:center">
<header id = "header" class = "SET_B">	
	<!-- 메인 헤더 -->		
		<div id = "mainHeader" class = "skin_background">			
		<ul class = "headerList">
			<li class = "headerLeft">
				<span id = "menu_button" class = "top-nav">
					<img src="menu.png">
				</span>
			</li>
			<li class = "headerCenter">
				<sapn>장학꿈</sapn>
			</li>
			<li class = "headerRight">
				<span id = "search_button" class = "top-nav">
					<img src="search.png">
				</span>									
			</li>
		</ul>
	</div>
	<!-- 메인 헤더 -->				

	<!-- 사이드 메뉴 -->
	<aside id="mainMenuContainer" class = "border-box">				
		<nav class="mainMenuContainer-inner">						
			<section class="menu-search">
				<h2 class = "hiddenText">검색</h2>
				<form name = "searchForm" method = "get" action = "/news/articleList.html" id = "mainSearchForm">
					<input type = "hidden" name = "sc_area" value = "A">
					<input type="search" name="sc_word" placeholder="검색어를 입력하세요" class="keyword border-box menu-sch-input ft-fa2" >
					<button class = "searchButton">검색</button>						
				</form>
				<a id="menuClose"><i class="fa fa-times fa-2x"></i></a>
			</section>	
			
			<section class="menu border-box" style="text-align:center">
				<a href="">
					<h2 class="ft-fa1">로그인하기</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			
			<section class="menu border-box" style="text-align:center">
				<a>
					<h2 class="ft-fa1">장학꿈소개</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			
			<section class="menu border-box" style="text-align:center">
				<a>
					<h2 class="ft-fa1">공지사항</h2>			
					<i class="fa fa-chevron-right"></i>
				</a>
			</section>
			
			<ul id = "news-category-list">
					<li class = "border-box ft-fa2"><a href="" class="border-box">신규장학꿈</a></li>
					<li class = "border-box ft-fa2"><a href="" class="border-box">추천장학꿈</a></li>
					<li class = "border-box ft-fa2"><a href="" class="border-box">인기장학꿈</a></li>
					<li class = "border-box ft-fa2"><a href="" class="border-box">관심장학꿈</a></li>
					<li class = "border-box ft-fa2"><a href="" class="border-box">진행장학꿈</a></li>
					<li class = "border-box ft-fa2"><a href="" class="border-box">마감장학꿈</a></li>		
			</ul>						
		</nav>
	</aside>	
	<!-- 사이드 메뉴 -->

	<!-- 검색바 -->
	<div id = "subSearchForm" class="skin_background">				
		<form name = "searchForm" class = "searchForm" method = "get" action = "/news/articleList.html">
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
		<li><a class="top-menu0 on" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">신규장학꿈</a></li>
		<li><a class="top-menu1" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">추천장학꿈</a></li>
		<li><a class="top-menu2" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">인기장학꿈</a></li>
		<li><a class="top-menu2" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">관심장학꿈</a></li>
		<li><a class="top-menu2" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">진행장학꿈</a></li>
		<li><a class="top-menu3" href="" data-cclick="MOBILE_,SCROLLER,TODAYRECOMM,0">마감장학꿈</a></li>
    </ul>
    <span id="scroller-left" class="scroller-arr-left" data-cclick="MOBILE_,SCROLLER,LEFT,0"></span>
    <span id="scroller-right" class="scroller-arr-right active" data-cclick="MOBILE_,SCROLLER,RIGHT,0"></span>
</nav>
</div>

<div id="goodsList">
<section id="todayshot-section" class="isFlicking">
    <div id="todayshotList" class="todayshot-list">
    <ul>
    	<%for(int i=0; i<9; i++){%>
        <li>
            <a href="" class="todayshot-deal"><span class="todayshot-img"><img s="https://lh5.ggpht.com/5qt278_9Jk0IRMzzAvQ1tNsNKTqTpaQp3lmGa_dp6RL1mqmmOFjK2-qDNFZTxSQnOg=h900" width="70%" alt=""/></span></a>
        </li>
        <%}%>
    </ul>
    </div>
    <ul id="todayshotIndicator" class="todayshot-indicator"></ul>
</section>
</div>					

<footer id = "footer">			
	<div class = "footerInfo">
		<div class = "copyRight ft-fa3">Copyright ⓒ장학꿈</div>	
	</div>	
</footer>

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

        /*
         *	GNB 선택 후 선택한 메뉴가 스크롤이 필요한 경우
         *	TODO: scrolltopage를 이용하게 되면 페이지 로딩 시 강제로 스크롤을 하게 되서 애니메이션 효과 발생
         *	그대로 두는지 아예 로딩 시 iscroll객체 생성 시 기본값을 주는지 선
         */

        var _menuIndex = $("#scroller li a").index($("." + selectedTopmenu));
        iscroll.goToPage(_menuIndex, 0, 0);
        actArrw();

        /* Flicking */
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
                    $('#todayshotList img').load(function(){$(window).trigger('resize')});
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
					// todayshotList_show_cnt++;
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
        /* Flicking */
    });

    /* v3. script */
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