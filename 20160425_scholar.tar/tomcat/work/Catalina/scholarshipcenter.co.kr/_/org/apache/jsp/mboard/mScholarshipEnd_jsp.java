/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-09-06 21:19:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.mboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import dao.ScholarDAO;
import dto.ScholarVO;
import java.util.Calendar;

public final class mScholarshipEnd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/mboard/mFooter.jsp", Long.valueOf(1439959149000L));
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\n");
      out.write("<title>장학꿈</title>\n");
String address="/WebContent";
      out.write('\n');
      out.write("\n");
      out.write("  \n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(address);
      out.write("/css/scholarship.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"fixed-menu\">\n");
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
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");

ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> list = sdao.selectEndedInfo();

      out.write("\n");
      out.write("\n");
      out.write("<div id=\"wrap\">\n");
      out.write("<section id=\"scC\" class=\"sc scCt scWing\">\n");
      out.write("\t<section class=\"ssBooth ssHighlight\">\n");
      out.write("\t\t<h2 class=\"h hS2\"><span>마감</span>장학금</h2>\n");
      out.write("\t\t\t<ul class=\"booth booth1 booth4 listEvenOdd\">\n");
      out.write("\t\t\t");
for(int i=0; i<list.size(); i++){ 
				ScholarVO svo = list.get(i);
			
      out.write("\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(svo.getRcdno());
      out.write("\"><strong class=\"e\">");
      out.print(svo.getFoundationname());
      out.write("</strong> \n");
      out.write("\t\t\t\t\t<span class=\"t\">");
      out.print(svo.getScholarname());
      out.write("</span> \n");
      out.write("\t\t\t\t\t<span class=\"meta\">\n");
      out.write("\t\t\t\t\t\t<span class=\"career\">장학 금액: ");
      out.print(svo.getScholarmoney());
      out.write("</span> | \n");
      out.write("\t\t\t\t\t\t<span class=\"career\">성적 기준: ");
      out.print(svo.getGpa());
      out.write("</span>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");

String checkString = "[0-9][0-9][0-9][0-9].[0-9][0-9].[0-9][0-9]";
String endday = "";

if(svo.getEndday().matches(checkString)){                
	System.out.println("end day matches our pattern : "+svo.getEndday());


	int endday_year = Integer.parseInt(svo.getEndday().substring(0,4)); 
	int endday_month = Integer.parseInt(svo.getEndday().substring(5,7));
	int endday_day = Integer.parseInt(svo.getEndday().substring(8,10));
	Calendar cal = Calendar.getInstance();
	long now_day = cal.getTimeInMillis();
	cal.set(endday_year, endday_month-1, endday_day);
	long event_day = cal.getTimeInMillis();
	long d_day = (event_day - now_day)/(60*60*24*1000);
	
	String dday = String.valueOf((int)d_day); 								

      out.write("\n");
      out.write("\t<span class=\"date2 \"><span class=\"cs3\">");
      out.print(svo.getEndday());
      out.write("</span></span> \n");
      out.write("\t<a href=\"mContent.jsp?rcdno=");
      out.print(svo.getRcdno());
      out.write("\" class=\"btnApply btnRow2\">D-Day<br>");
      out.print(dday);
      out.write("</a>\n");
  		
}else{

      out.write("\n");
      out.write("\t<span class=\"date2 \"><span class=\"cs3\">마감 ");
      out.print(svo.getEndday());
      out.write("</span></span> \n");
      out.write("\t<a href=\"mContent.jsp?rcdno=");
      out.print(svo.getRcdno());
      out.write("\" class=\"btnApply btnRow2\">D-Day<br>기준 없음</a>\n");
}
      out.write(" \n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t");
}
      out.write("\t\n");
      out.write("\t\t</ul>\n");
      out.write("\t</section>\n");
      out.write("</section>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"fixed-menu\">\n");
      out.write("\t");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\n");
      out.write("<title>장학꿈</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<footer id = \"footer\">\t\t\t\n");
      out.write("\t<div class = \"footerInfo\">\n");
      out.write("\t\t<div class = \"copyRight ft-fa3\">Copyright ⓒ장학꿈</div>\t\n");
      out.write("\t</div>\t\n");
      out.write("</footer>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
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