/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-09-06 20:29:41 UTC
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

public final class mScholarship_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/mboard/mFooter.jsp", Long.valueOf(1439959149000L));
    _jspx_dependants.put("/mboard/mNew.jsp", Long.valueOf(1440056888000L));
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\r\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\r\n");
      out.write("<title>장학꿈</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div>\r\n");
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
      out.write("<div>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
String addressNew = "/WebContent";
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(addressNew);
      out.write("/js/slides.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressNew);
      out.write("/css/common.css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("@import url(\"/WebContent/css/slides.css\");\r\n");
      out.write("#slides .slidesjs-pagination {position:absolute; top:115px; left:10px; z-index:10;}\r\n");
      out.write("#slides .slidesjs-previous {position:absolute; bottom:5px; left:5px; z-index:10; display:none;}\r\n");
      out.write("#slides .slidesjs-next {position:absolute; bottom:5px; left:20px; z-index:10; display:none;}\r\n");
      out.write("#slides .slidesjs-play {position:absolute; bottom:5px; left:35px; z-index:10; display:none !important;}\r\n");
      out.write("#slides .slidesjs-stop {position:absolute; bottom:5px; left:35px; z-index:10; display:none !important;}\r\n");
      out.write("#slides .img {width:100%; height:100%; position:relative;}\r\n");
      out.write("#slides .img-m {width:100%; height:100%; position:relative; display:none;}\r\n");
      out.write("\r\n");
      out.write("#slides .textCenter {position:absolute; font-size:20px; width:100%; text-align:center; top:200px;}\r\n");
      out.write("#slides .textCenter a {display:block; font-size:16px; color:#fff; !important; text-align:center; overflow:hidden; white-space:nowrap;}\r\n");
      out.write("#slides .text {position:absolute; width:100%; text-align:center; bottom:-30px; right:0px}\r\n");
      out.write("#slides .text a {display:block; padding:10px 10PX; font-size:16px; color:#fff; !important; text-align:center; overflow:hidden; white-space:nowrap; border-radius:8px;}\r\n");
      out.write("\r\n");
      out.write("#news .title {display:block; padding:10px 10PX; font-size:16px; color:#ccc !important; text-align:center; background:#313131; overflow:hidden;}\r\n");
      out.write("\r\n");
      out.write(".btnFavorite {padding:10px 10px; margin-bottom:20px; font-size:20px; background-color: rgba(255, 255, 255, 0.2); border: 1px; color:white;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> list = sdao.selectNewInfoList();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"slides\" style=\"max-height: 700px;\">\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(0).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice1.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(0).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(0).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(0).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(0).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(1).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice2.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(1).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(1).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(1).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(1).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(2).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice3.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(2).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(2).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(2).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(2).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(3).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice4.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(3).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(3).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(3).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(3).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(4).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice5.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(4).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(4).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(4).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(4).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(5).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice6.png\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<div class=\"textCenter\">\r\n");
      out.write("\t\t\t<button class=\"btnFavorite\" id=\"btnFavorite\"><i class=\"fa fa-check-square-o fa-lg\"></i> <strong>조회수 ");
      out.print(list.get(5).getView());
      out.write("</strong></button>\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(5).getRcdno());
      out.write("\" target=\"_self\">");
      out.print(list.get(5).getScholarname() );
      out.write("</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t<a href=\"mContent.jsp?rcdno=");
      out.print(list.get(5).getRcdno());
      out.write("\" target=\"_self\">\r\n");
      out.write("\t\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/go.png\" style=\"position:relative;\"/>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!--  \r\n");
      out.write("<div id=\"news\" style=\"width: auto; height: auto !important\">\r\n");
      out.write("\t<div class=\"title\">\r\n");
      out.write("\t\t<ul style=\"padding: 0 0px 0 0px !important;\">공지사항</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"dcp-schedule\" style=\"width: auto; height: auto !important\">\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t");
for(int i=0; i<5; i++){
      out.write("\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"\">\r\n");
      out.write("\t\t\t<span>&gt; &nbsp;장학꿈 버전2 준비중</span>\r\n");
      out.write("\t\t\t</br>\r\n");
      out.write("\t\t\t<span class=\"date\">&nbsp; &nbsp; &nbsp;공지일자 2015.08.01</span>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t");
}
      out.write("\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("-->\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(function() {\r\n");
      out.write("    \t$(\"#slides\").slidesjs({\r\n");
      out.write("      \t\twidth: 800,\r\n");
      out.write("      \t\theight: 1000,\r\n");
      out.write("      \t\tnavigation: {effect: \"fade\"},\r\n");
      out.write("           \tpagination: {effect: \"fade\"},\r\n");
      out.write("          \teffect: {fade: {speed: 800}},      \t\t\r\n");
      out.write("      \t\tplay: {\r\n");
      out.write("      \t\t\teffect: \"fade\",      \t\t\t\r\n");
      out.write("            \tactive: true,\r\n");
      out.write("             \tauto: true,\r\n");
      out.write("                interval: 4000,\r\n");
      out.write("                swap: true,\r\n");
      out.write("                pauseOnHover: true,\r\n");
      out.write("            \trestartDelay: 2500\r\n");
      out.write("         \t}      \t\t\r\n");
      out.write("    \t});\r\n");
      out.write("  \t});\r\n");
      out.write("\t\r\n");
      out.write("\tif (460 > $(\"#slides\").innerWidth()) {\r\n");
      out.write("\t\t$(\".splash\").css(\"height\" , $(\".mobile\").innerHeight());\r\n");
      out.write("\t} else {\r\n");
      out.write("\t\t$(\".splash\").css(\"height\" , $(\".mobile2\").innerHeight());\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t$(\".splash\").css(\"height\" , \"auto\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(window).resize(function() {\r\n");
      out.write("\t\t\tif (460 > $(\"#slides\").innerWidth()) {\r\n");
      out.write("\t\t\t\t$(\".slidesjs-container\").css(\"height\" , $(\".mobile\").innerHeight());\r\n");
      out.write("\t\t\t}\r\n");
      out.write("       \t});\r\n");
      out.write("\t\t\r\n");
      out.write("       \t$(window).resize();  \r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div>\r\n");
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
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
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
