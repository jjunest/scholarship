/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-10-14 12:08:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.safehouse;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title> 안전한 家 - 여성을 위한 안전한 집을 찾아드립니다 </title>\r\n");
      out.write("<link href=\"/img/icon_new/favicon.ico\" rel=\"shortcut icon\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/WebContent/safehouse/css/common.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/WebContent/safehouse/css/ddhouse_mypage.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/WebContent/safehouse/css/ddhouse_se.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/WebContent/safehouse/_master/css/custom-theme/jquery-ui-1.10.2.custom.css\">\r\n");
      out.write("<script async=\"\" src=\"//www.google-analytics.com/analytics.js\"></script><script type=\"text/javascript\" src=\"/WebContent/safehouse/_master/js/jquery-1.9.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/_master/js/jquery-ui-1.10.2.custom.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/_master/js/jquery-ui-timepicker-addon.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/_master/js/json2.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/js/asset_common.js\" charset=\"utf-8\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/js/upload_common.js\" charset=\"utf-8\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/js/ddhouse_common.js\" charset=\"utf-8\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/WebContent/safehouse/js/topmenu_border_common.js\" charset=\"utf-8\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function goPage(url) {\r\n");
      out.write("\r\n");
      out.write("location.href=url;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div style=\"\">\r\n");
      out.write("\t\t\t<div style=\"float:left\"><a href=\"/\"><img src=\"/WebContent/safehouse/image/logo.png\" style=\"padding:4px\"  height = \"80\"></a></div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div style=\"float:left; text-align:center; margin-left:30px; margin-top:30px; font-size:12px; position:relative; font-family:'굴림',Gulim,'돋움',Dotum,Helvetica,Sans-serif;\">\r\n");
      out.write("\t\t\t\t<div class=\"round_left\" style=\"border:1px solid #bfbfbf; border-right:0px; width:3px; height:40px; float:left;\"></div>\r\n");
      out.write("\t\t\t\t<div id=\"topsearch_selgubun\" style=\"padding:0px 3px 0px 3px; float:left; width:110px; height:40px; font-size: 1.13em; border:1px solid #bfbfbf; border-left:0px; border-right:1px dashed #bfbfbf; text-align:center; color:#808080; cursor:pointer\">\r\n");
      out.write("\t\t\t\t\t<span id=\"topsearch_selgubun_nm\" style=\"line-height: 3.0em\">아파트/분양권</span> <span style=\"font-size:10px; color:#1e7447\">▼</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<input type=\"text\" id=\"topsearch_search\" class=\"stopprop\" style=\"padding-left: 10px; height: 38px; \r\n");
      out.write("\twidth:275px; \r\n");
      out.write("\tpadding-left:5px; \r\n");
      out.write("\tborder:1px solid #bfbfbf;\r\n");
      out.write("\tborder-left:0px; \r\n");
      out.write("\tborder-right:0px; \r\n");
      out.write("\tfloat:left; \r\n");
      out.write("\tfont-size:1.13em; \r\n");
      out.write("\tline-height: 40px;\r\n");
      out.write("\tcolor:gray ;\r\n");
      out.write("\t font-family: '굴림',Gulim,'돋움',Dotum,Helvetica,Sans-serif; \" value=\"아파트 이름을 입력하세요\">\r\n");
      out.write("\t\t\t\t<div class=\"round_right\" style=\"height:40px; width:35px; border:1px solid #bfbfbf; border-left:0px; float:left; cursor:pointer; background-image:url('../../img/btn/magnifier_red.png'); background-position: 50% 50%; background-repeat:no-repeat\"></div>\r\n");
      out.write("\t\t\t\t<br style=\"clear:both\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"popup\" id=\"top_slayer_location\" style=\"width: 290px; max-height: 250px; display: none;\"></div>\r\n");
      out.write("\t\t\t\t<div id=\"topsearch_selgubun_option\" style=\"display: none;\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"topsearch_optionlist\">\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascript: f_topsearch_change_gubun(this, 'APT')\">아파트/분양권</li>\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascript: f_topsearch_change_gubun(this, 'LAND')\">토지</li>\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascript: f_topsearch_change_gubun(this, 'SHOPRENT')\">상가임대</li>\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascr\tipt: f_topsearch_change_gubun(this, 'SHOPDEAL')\">건물매매</li>\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascript: f_topsearch_change_gubun(this, 'HOUSE')\">주택</li>\r\n");
      out.write("\t\t\t\t\t\t<li onclick=\"javascript: f_topsearch_change_gubun(this, 'FACTORY')\">공장·창고</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<br style=\"clear:both\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("<div id=\"topmenu\" style=\"height: 40px; z-index: 199; border-radius: 4px 4px 0px 0px; background-color: rgb(32, 130, 79);\">\r\n");
      out.write("\t\t\t<div class=\"topmenues_empty\" style=\" width:16px; \"></div>\r\n");
      out.write("\t\t\t<span class=\"topmenues\" onclick=\"javascript:goPage('List.jsp')\" style=\" width:75px; \">실매물</span>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \"  onclick=\"javascript:goPage('List.jsp')\" style=\" width:89px; \">거래의뢰</span>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \" onclick=\"javascript:goPage('List.jsp')\" style=\" width:88px; \">중개업소</span>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \"  onclick=\"javascript:goPage('List.jsp')\" style=\" width:64px; \">뉴스</span>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \"  onclick=\"javascript:goPage('List.jsp')\" style=\" width:89px; \">지역정보</span>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \"  onclick=\"javascript:goPage('List.jsp')\" style=\" width:89px; \">커뮤니티</span>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t<span class=\"topmenues \"  onclick=\"javascript:goPage('List.jsp')\" style=\" width:101px; \">마이페이지</span>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"topmenues_empty\" style=\" width:25px; \"></div>\r\n");
      out.write("\t\t\t<br style=\"clear:both\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
