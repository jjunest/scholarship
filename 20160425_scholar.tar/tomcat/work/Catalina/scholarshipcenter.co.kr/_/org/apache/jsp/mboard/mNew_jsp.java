/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-08-08 10:30:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.mboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mNew_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
String addressNew = "/WebContent";
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(addressNew);
      out.write("/js/slides.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressNew);
      out.write("/css/new.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(addressNew);
      out.write("/css/common.css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("@import url(\"/WebContent/css/slides.css\");\r\n");
      out.write("#slides .slidesjs-pagination {position:absolute; top:100px; left:20px; z-index:10;}\r\n");
      out.write("#slides .slidesjs-previous {position:absolute; bottom:5px; left:5px; z-index:30; display:none;}\r\n");
      out.write("#slides .slidesjs-next {position:absolute; bottom:5px; left:20px; z-index:30; display:none;}\r\n");
      out.write("#slides .slidesjs-play {position:absolute; bottom:5px; left:35px; z-index:30; display:none !important;}\r\n");
      out.write("#slides .slidesjs-stop {position:absolute; bottom:5px; left:35px; z-index:30; display:none !important;}\r\n");
      out.write("#slides .img {width:100%; height:100%; position:relative;}\r\n");
      out.write("#slides .img-m {width:100%; height:100%; position:relative; display:none;}\r\n");
      out.write("#slides .text {position:absolute; bottom:160px; right:15px;}\r\n");
      out.write("#slides .text a {display:block; padding:10px 10PX; font-size:16px; color:#ccc !important; text-align:center; background:#313131; overflow:hidden; white-space:nowrap; border-radius:8px;}\r\n");
      out.write("#slides .text a span {margin-left:15px; padding:10px 5px; color:#ccc; text-align:center; background:#005DBC; border-radius:8px;}\r\n");
      out.write("\r\n");
      out.write("#news .title {display:block; padding:10px 10PX; font-size:16px; color:#ccc !important; text-align:center; background:#313131; overflow:hidden;}\r\n");
      out.write("\r\n");
      out.write(".dcp-schedule {position:relative; width:235px; height:231px; padding:20px 0; background:#005b9a; overflow:hidden;}\r\n");
      out.write(".dcp-schedule ul {padding:0 20px 0 15px;}\r\n");
      out.write(".dcp-schedule li {padding:14px 0;}\r\n");
      out.write(".dcp-schedule li a {font-size:16px; color:#fff;}\r\n");
      out.write(".dcp-schedule li a span {display:block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;}\r\n");
      out.write(".dcp-schedule li a .date {color:#e8e8e8;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"slides\" style=\"max-height: 420px;\">\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice1.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice2.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice3.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice4.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice5.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice6.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<img class=\"img\" alt=\"splash\" src=\"");
      out.print(addressNew);
      out.write("/images/practice7.png\">\r\n");
      out.write("\t\t<div class=\"text\">\r\n");
      out.write("\t\t<a href=\"\" target=\"_self\">2015 장학꿈 하반기 장학금<span>바로가기</span> </a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
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
