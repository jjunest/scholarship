/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-08-19 07:52:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.manager_005fboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import dao.ScholarDAO;
import dto.ScholarVO;

public final class manager_005fmTop_005fpopularList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/manager_board/mFooter.jsp", Long.valueOf(1439965668000L));
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
String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";
      out.write("\n");
      out.write("  \n");
      out.write("<meta http-equiv=\"Content-Script-Type\" content=\"text/javascript\" />\n");
      out.write("<meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />\n");
      out.write("<meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width\" />\n");
      out.write("<title>장학꿈</title>\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"http://m.jobkorea.co.kr//css/default.css?date=201506301840\">\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"http://m.jobkorea.co.kr/css/font-awesome-4.2.0/css/font-awesome.min.css\">\n");
      out.write("<style type=\"text/css\">\n");
      out.write("#nameLength{width:350px; vertical-align:middle; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div id=\"fixed-menu\">\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "manager_Header.jsp", out, false);
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- -----------------Get poopular ScholarList which are in Databases --------------------------- -->\n");

ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> List = sdao.selectPopularInfoList();


      out.write("<!-- ----------------- Get popular ScholarList which are in Databases ENDED---------------------- -->\n");
      out.write("\n");
      out.write("<div class=\"content\">\n");
      out.write("\t<section class=\"ssHighlight\" id=\"dev_Highlight_0\" >\n");
      out.write("\t\t<h3 class=\"hS4\"><span class=\"icoPart\"></span>인기장학금</h3>\n");
      out.write("\t\t\t<ul class=\"booth boothNewest\">\n");
      out.write("\t\t\t\t");
for(int i=0; i<List.size(); i++){
				ScholarVO svo = List.get(i);
      out.write("\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<span class=\"part\" id =\"nameLength\"><a href=\"manager_mContent_detailInfo.jsp?rcdno=");
      out.print(svo.getRcdno());
      out.write('"');
      out.write('>');
      out.print(svo.getScholarname() );
      out.write("</a></span>\n");
      out.write("\t\t\t\t\t<div class=\"ingBox\">\n");
      out.write("\t\t\t\t\t\t<a href=\"manager_mContent_detailInfo.jsp?rcdno=");
      out.print(svo.getRcdno());
      out.write("\" class=\"inner\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"thumb\" style=\"padding-top:6px; display:inline-block;\"><img src=\"../images/mark.png\"></span>\n");
      out.write("\t\t\t\t\t\t\t<strong class=\"tit\">재단명 : ");
      out.print(svo.getFoundationname() );
      out.write("</strong>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"txt\">장학 금액 : ");
      out.print(svo.getScholarmoney() );
      out.write("</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"desc\"><span class=\"date \"><span class=\"cs3\">마감일 : ");
      out.print(List.get(i).getEndday() );
      out.write("</span></span></span>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t");
}
      out.write("\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t</section>\n");
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
      out.write("<footer id = \"footer\">\t\t\t\n");
      out.write("\t<div class = \"footerInfo\">\n");
      out.write("\t\t<div class = \"copyRight ft-fa3\">Copyright ⓒ장학꿈</div>\t\n");
      out.write("\t</div>\t\n");
      out.write("</footer>\n");
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
