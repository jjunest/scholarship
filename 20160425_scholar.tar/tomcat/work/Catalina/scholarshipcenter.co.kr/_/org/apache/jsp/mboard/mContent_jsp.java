/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-09-06 23:00:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.mboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.ScholarDAO;
import dto.ScholarVO;
import java.util.Calendar;

public final class mContent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/mboard/mHeader.jsp", Long.valueOf(1441571374000L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\r\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\r\n");
      out.write("<title>장학꿈</title>\r\n");
String address="/WebContent";
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(address);
      out.write("/css/content.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");

String rcdno = request.getParameter("rcdno"); 						
ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateScholarInfoView(rcdno);
ScholarVO detailSVO = sdao.selectDetailInfo(rcdno);

      out.write("\r\n");
      out.write("\r\n");
      out.write("<body id=\"bListGi\" class=\"mGib showLayer\">\r\n");
      out.write("<div id=\"fixed-menu\">\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\r\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\r\n");
      out.write("<title>장학꿈</title>\r\n");
String addressHeader = "/WebContent";
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("  \r\n");
      out.write("<!--  String addressHeader = \"../\"\r\n");
      out.write("\t  String addressHeader = \"/WebContent\" -->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressHeader);
      out.write("/css/common.css\"> <!-- 폰트 -->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressHeader);
      out.write("/css/layout.css\" /> <!-- Layout -->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressHeader);
      out.write("/css/header.css\">\r\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\" rel=\"stylesheet\" /> <!-- 메뉴바 X표시 -->\r\n");
      out.write("\r\n");
      out.write("<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script> <!-- 메뉴바 반응형 -->\r\n");
      out.write("<script src=\"");
      out.print(addressHeader);
      out.write("/js/mobile.js\"></script> <!-- 메뉴바 반응형 -->\r\n");
      out.write("<script src=\"");
      out.print(addressHeader);
      out.write("/js/scroll.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrapper\" class = \"service SET_B\" style=\"text-align:center\">\r\n");
      out.write("<header id = \"header\" class = \"SET_B\">\t\r\n");
      out.write("\t<!-- 메인 헤더 -->\t\t\r\n");
      out.write("\t\t<div id = \"mainHeader\" class = \"skin_background\">\t\t\t\r\n");
      out.write("\t\t<ul class = \"headerList\">\r\n");
      out.write("\t\t\t<li class = \"headerLeft\">\r\n");
      out.write("\t\t\t\t<span id = \"menu_button\" class = \"top-nav\">\r\n");
      out.write("\t\t\t\t\t<img src=\"");
      out.print(addressHeader);
      out.write("/images/menu.png\">\r\n");
      out.write("\t\t\t\t</span>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li class = \"headerCenter\">\r\n");
      out.write("\t\t\t\t <h2>장학꿈</h2>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li class = \"headerRight\">\r\n");
      out.write("\t\t\t\t<span id = \"search_button\" class = \"top-nav\">\r\n");
      out.write("\t\t\t\t\t<img src=\"");
      out.print(addressHeader);
      out.write("/images/search.png\">\r\n");
      out.write("\t\t\t\t</span>\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- 메인 헤더 -->\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t<!-- 왼쪽 메뉴 -->\r\n");
      out.write("\t<aside id=\"mainMenuContainer\" class = \"border-box\">\t\t\t\t\r\n");
      out.write("\t\t<nav class=\"mainMenuContainer-inner\">\t\t\t\t\t\t\r\n");
      out.write("\t\t\t<section class=\"menu-search\">\r\n");
      out.write("\t\t\t\t<form name = \"searchForm\" method = \"post\" action = \"mSearchList.jsp\" id = \"mainSearchForm\">\r\n");
      out.write("\t\t\t\t\t<input type = \"hidden\" name = \"sc_area\" value = \"A\">\r\n");
      out.write("\t\t\t\t\t<input type=\"search\" name=\"sc_word\" placeholder=\"검색하기\" class=\"keyword border-box menu-sch-input ft-fa2\" >\r\n");
      out.write("\t\t\t\t\t<button class = \"searchButton\">검색</button>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t<a id=\"menuClose\"><i class=\"fa fa-times fa-2x\"></i></a>\r\n");
      out.write("\t\t\t</section>\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<section class=\"menu border-box\" style=\"text-align:center\">\r\n");
      out.write("\t\t\t\t<a>\r\n");
      out.write("\t\t\t\t\t<h2 class=\"ft-fa1\" style=\"text-align: center;\">로그인하기</h2>\t\t\t\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-chevron-right\"></i>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<section class=\"menu border-box\" style=\"text-align:center\">\r\n");
      out.write("\t\t\t\t<a href=\"mMain.jsp\">\r\n");
      out.write("\t\t\t\t\t<h2 class=\"ft-fa1\" style=\"text-align: center;\">메인화면</h2>\t\t\t\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-chevron-right\"></i>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<section class=\"menu border-box\" style=\"text-align:center\">\r\n");
      out.write("\t\t\t\t<a href=\"mIntroduction.jsp\">\r\n");
      out.write("\t\t\t\t\t<h2 class=\"ft-fa1\" style=\"text-align: center;\">장학꿈소개</h2>\t\t\t\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-chevron-right\"></i>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<!--  \r\n");
      out.write("\t\t\t<section class=\"menu border-box\" style=\"text-align:center\">\r\n");
      out.write("\t\t\t\t<a href=\"mAnnouncement.jsp\">\r\n");
      out.write("\t\t\t\t\t<h2 class=\"ft-fa1\" style=\"text-align: center;\">공지사항</h2>\t\t\t\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-chevron-right\"></i>\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</section>\r\n");
      out.write("\t\t\t-->\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<ul id = \"news-category-list\">\r\n");
      out.write("\t\t\t\t<li><a href=\"mScholarship.jsp\">신규장학금</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"mTop.jsp\">인기장학금</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"mTotal.jsp\">전체장학금</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"mMain.jsp\">진행장학금</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"mScholarshipEnd.jsp\">마감장학금</a></li>\t\t\r\n");
      out.write("\t\t\t</ul>\t\t\t\t\t\t\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</aside>\t\r\n");
      out.write("\t<!-- 왼쪽 메뉴 -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- 검색바 -->\r\n");
      out.write("\t<div id = \"subSearchForm\" class=\"skin_background\">\t\t\t\t\r\n");
      out.write("\t\t<form name = \"searchForm\" class = \"searchForm\" method = \"post\" action = \"mSearchList.jsp\">\r\n");
      out.write("\t\t\t<input type = \"hidden\" name = \"sc_area\" value = \"A\">\r\n");
      out.write("\t\t\t<input type = \"text\" name = \"sc_word\" class = \"keyword\">\r\n");
      out.write("\t\t\t<button  class = \"button_3 searchButton\">검색</button>\t\t\r\n");
      out.write("\t\t</form>\t\t\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- 검색바 -->\r\n");
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("    <nav id=\"topMenu\">\r\n");
      out.write("    <ul id=\"scroller\">\r\n");
      out.write("\t\t<li><a class=\"top-menu0\" href=\"mScholarship.jsp\" data-cclick=\"MOBILE_,SCROLLER,TODAYRECOMM,0\">신규장학금</a></li>\r\n");
      out.write("\t\t<li><a class=\"top-menu1\" href=\"mTop.jsp\" data-cclick=\"MOBILE_,SCROLLER,TODAYRECOMM,0\">인기장학금</a></li>\r\n");
      out.write("\t\t<li><a class=\"top-menu2\" href=\"mTotal.jsp\" data-cclick=\"MOBILE_,SCROLLER,TODAYRECOMM,0\">전체장학금</a></li>\r\n");
      out.write("\t\t<li><a class=\"top-menu3\" href=\"mMain.jsp\" data-cclick=\"MOBILE_,SCROLLER,TODAYRECOMM,0\">진행장학금</a></li>\r\n");
      out.write("\t\t<li><a class=\"top-menu4\" href=\"mScholarshipEnd.jsp\" data-cclick=\"MOBILE_,SCROLLER,TODAYRECOMM,0\">마감장학금</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <span id=\"scroller-left\" class=\"scroller-arr-left\" data-cclick=\"MOBILE_,SCROLLER,LEFT,0\"></span>\r\n");
      out.write("    <span id=\"scroller-right\" class=\"scroller-arr-right active\" data-cclick=\"MOBILE_,SCROLLER,RIGHT,0\"></span>\r\n");
      out.write("\t</nav>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("$(window).load(function(){\r\n");
      out.write("\tmobile.initDefaultEvent('http://scholarshipcenter.co.kr','mobile');\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    \"use strict\";\r\n");
      out.write("    var iscroll;\r\n");
      out.write("    var actArrw = function() {\r\n");
      out.write("        $('#scroller-left,#scroller-right').addClass('active');\r\n");
      out.write("        0 === iscroll.x ? $(\"#scroller-left\").removeClass(\"active\")\r\n");
      out.write("                : iscroll.x === iscroll.maxScrollX &&\r\n");
      out.write("                $(\"#scroller-right\").removeClass(\"active\");\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    var selectedTopmenu = \"top-menu0\";\r\n");
      out.write("\r\n");
      out.write("    $(document).ready(function() {\r\n");
      out.write("        $('#main-banner').click(function() {\r\n");
      out.write("            if(!($(this).attr(\"href\"))){\r\n");
      out.write("                coupangApp.go('', 'homeBanner');\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        var _menuIndex = $(\"#scroller li a\").index($(\".\" + selectedTopmenu));\r\n");
      out.write("        iscroll.goToPage(_menuIndex, 0, 0);\r\n");
      out.write("        actArrw();\r\n");
      out.write("\r\n");
      out.write("        if($('#todayshot-section').hasClass('isFlicking')){\r\n");
      out.write("            var panelTime;\r\n");
      out.write("\r\n");
      out.write("            $(\"#todayshotList\").touchSlider({\r\n");
      out.write("                speed : 400,\r\n");
      out.write("                flexible : true,\r\n");
      out.write("                rolling : true,\r\n");
      out.write("                page : 1,\r\n");
      out.write("                initComplete : function (e) {\r\n");
      out.write("                    $(\"#todayshotIndicator\").html(\"\");\r\n");
      out.write("                    $(\"#todayshotList ul li\").each(function (i, el) {\r\n");
      out.write("                        if((i+1) % e._view == 0) {\r\n");
      out.write("                            $(\"#todayshotIndicator\").append('<li></li>');\r\n");
      out.write("                        }\r\n");
      out.write("                    });\r\n");
      out.write("                    $('#todayshotList img').load(function(){$(window).trigger('resize');});\r\n");
      out.write("                },\r\n");
      out.write("                counter : function (e) {\r\n");
      out.write("                    $(\"#todayshotIndicator li\").removeClass(\"on\").eq(e.current-1).addClass(\"on\");\r\n");
      out.write("                    clearInterval(panelTime);\r\n");
      out.write("                    panelTime = setInterval(function(){$(\"#todayshotList\").get(0).animate(-1,true)},3000);\r\n");
      out.write("                },\r\n");
      out.write("                custom : function (){\r\n");
      out.write("                    clearInterval(panelTime);\r\n");
      out.write("                },\r\n");
      out.write("                onTouchEnd : function() {\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            panelTime = setInterval(function(){$(\"#todayshotList\").get(0).animate(-1,true)},5000);\r\n");
      out.write("\r\n");
      out.write("            $(window).bind({\r\n");
      out.write("                resize : function() {\r\n");
      out.write("                    $(\"#todayshotList\").height($(\"#todayshotList img\").height());\r\n");
      out.write("                },\r\n");
      out.write("                load : function() {\r\n");
      out.write("                    $(\"#todayshotList\").height($(\"#todayshotList img\").height());\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        };\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    if($('#topMenu').size() > 0 && $('#scroller').size() > 0){\r\n");
      out.write("        $('#scroller').width(document.getElementById('scroller').scrollWidth + 52);\r\n");
      out.write("\r\n");
      out.write("        var scrollOption = {\r\n");
      out.write("            snap : 'li',\r\n");
      out.write("            scrollX : true,\r\n");
      out.write("            scrollY : false,\r\n");
      out.write("            eventPassthrough : true\r\n");
      out.write("        };\r\n");
      out.write("        if(navigator.userAgent.match(/iphone/i) ||\r\n");
      out.write("                navigator.userAgent.match(/ipad/i)){\r\n");
      out.write("            scrollOption.useTransform = false;\r\n");
      out.write("        }\r\n");
      out.write("        iscroll = new IScroll('#topMenu', scrollOption);\r\n");
      out.write("        iscroll.on('scrollEnd', actArrw);\r\n");
      out.write("        $('#scroller-left,#scroller-right').click(function() {\r\n");
      out.write("            $(this).hasClass(\"scroller-arr-left\") ? iscroll.prev() : iscroll.next();\r\n");
      out.write("        });\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"wrap\" style=\"width:100%;\">\r\n");
      out.write("\t<section id=\"scC\" class=\"sc scCt scWing\">\r\n");
      out.write("\t<div class=\"content mGib\">\r\n");
      out.write("\t\t<div class=\"companyBox\" style=\"background-image: url(");
      out.print(address);
      out.write("/images/background.png);\">\r\n");
      out.write("\t\t\t<div class=\"cLogo\">\r\n");
      out.write("\t\t\t\t<p class=\"cName XXX_19807647\">");
      out.print(detailSVO.getFoundationname());
      out.write("</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"cInfo wordBreak\">");
      out.print(detailSVO.getScholarname());
      out.write("</div>\r\n");
      out.write("\t\t\t<div class=\"wrapFunction\">\r\n");
      out.write("\t\t\t\t<button class=\"btnFavorite \" id=\"btnFavorite\"><i class=\"fa fa-heart-o fa-lg\"></i> <strong>조회수 ");
      out.print(detailSVO.getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<section class=\"mGibCt\">\r\n");
      out.write("\t\t\t<div class=\"sc\">\r\n");
      out.write("\t\t\t\t<h2 class=\"hdGib\">신청기간</h2>\r\n");
      out.write("\t\t\t\t<p class=\"applyDate applyDate_GIB\">\r\n");
			
String checkString = "[0-9][0-9][0-9][0-9].[0-9][0-9].[0-9][0-9]";
String endday = "";

if(detailSVO.getEndday().matches(checkString)){                  
	System.out.println("end day matches our pattern : "+detailSVO.getEndday());
	int endday_year = Integer.parseInt(detailSVO.getEndday().substring(0,4)); 
	int endday_month = Integer.parseInt(detailSVO.getEndday().substring(5,7));
	int endday_day = Integer.parseInt(detailSVO.getEndday().substring(8,10));
	Calendar cal = Calendar.getInstance();
	long now_day = cal.getTimeInMillis();
	cal.set(endday_year, endday_month-1, endday_day);
	long event_day = cal.getTimeInMillis();
	long d_day = (event_day - now_day)/(60*60*24*1000);
	
	String dday = String.valueOf((int)d_day); 								

      out.write("\r\n");
      out.write("\t<span class=\"deadline\">D-Day<strong> ");
      out.print(dday);
      out.write("</strong></span>\r\n");
      out.write("\t<span class=\"period devFontFixed\"><span class=\"btContest btStart\">시작</span>");
      out.print(detailSVO.getStartday() );
      out.write("</br>\r\n");
      out.write("\t<span class=\"btContest btStart\">마감</span>");
      out.print(detailSVO.getEndday() );
      out.write("</span>\r\n");
      out.write("\t</p>\r\n");

}else{				

      out.write("\t\r\n");
      out.write("\t<span class=\"deadline\"><strong>");
      out.print(detailSVO.getEndday() );
      out.write("</strong></span>\r\n");
      out.write("\t<span class=\"period devFontFixed\"><span class=\"btContest btStart\">시작</span>정보 없음</br>\r\n");
      out.write("\t<span class=\"btContest btStart\">마감</span>정보 없음</span>\r\n");
      out.write("\t</p>\r\n");
										
}

      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"sc\">\r\n");
      out.write("\t\t\t\t<h2 class=\"hdGib\">장학정보</h2>\r\n");
      out.write("\t\t\t\t<dl class=\"scCnt\">\r\n");
      out.write("\t\t\t\t\t<dt>성적구분</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getGpa());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>소득구분</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getStudentstatus());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>장학금액</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getScholarmoney());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>특정대학</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getSchoolname());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>전공구분</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getMajor());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>거주지역</dt>\r\n");
      out.write("\t\t\t\t\t<dd>");
      out.print(detailSVO.getArea());
      out.write("</dd>\r\n");
      out.write("\t\t\t\t\t<dt>홈페이지</dt>\r\n");
      out.write("\t\t\t\t\t");
if((detailSVO.getLink()).equals("정보없음")){
      out.write(")\r\n");
      out.write("\t\t\t\t\t<dd><a href=\"");
      out.print(detailSVO.getLink());
      out.write("\">정보없음</a></dd>\r\n");
      out.write("\t\t\t\t\t");
}else{
      out.write("\r\n");
      out.write("\t\t\t\t\t<dd><a href=\"");
      out.print(detailSVO.getLink());
      out.write("\">홈페이지 바로가기</a></dd>\r\n");
      out.write("\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t<dt>첨부파일</dt>\r\n");
      out.write("\t\t\t\t\t<dd><a href = \"");
      out.print(detailSVO.getFileurl());
      out.write('"');
      out.write('>');
      out.print(detailSVO.getFilename());
      out.write("</a></dd></br>\r\n");
      out.write("\t\t\t\t</dl>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"sc\">\r\n");
      out.write("\t\t\t\t<h2 class=\"hdGib\">상세정보</h2>\r\n");
      out.write("\t\t\t\t<p>");
      out.print(detailSVO.getEtc() );
      out.write("</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"sc\">\r\n");
      out.write("\t\t\t\t<p><a href=\"javascript:history.go(-1)\" class=\"bt bt2 btC3 f\"><span>뒤로가기<span class=\"icnGib icn_arr2 icnRt\"></span></span></a></p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
