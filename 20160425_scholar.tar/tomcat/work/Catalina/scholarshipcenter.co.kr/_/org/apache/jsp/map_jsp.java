/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.23
 * Generated at: 2015-09-26 06:33:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class map_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\" class=\"hfix\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Sample DataAPI</title>\r\n");
      out.write("<meta name=\"author\" content=\"Kim kwangsung, Lim seonju\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi\">\r\n");
      out.write("<meta name=\"keywords\" content=\"»ýÈ°¾ÈÀüÁöµµ,¾ÈÀüÁöµµ\">\r\n");
      out.write("<meta name=\"description\" content=\"»ýÈ°¾ÈÀüÁöµµÆ÷ÅÐ »çÀÌÆ®¿¡ ¿À½Å°ÍÀ» È¯¿µÇÕ´Ï´Ù.º» ÆäÀÌÁö´Â WCAG2.0,KWCAG2.0 ¹× ¹Ì·¡Ã¢Á¶°úÇÐºÎÀÇ Á¤º¸½Ã½ºÅÛÀÇ ±¸Ãà ¿î¿µ ±â¼ú ÁöÄ§À» ÁØ¼öÇÏ¿© Á¦ÀÛÇÏ¿´½À´Ï´Ù.\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=9\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/8open/jquery.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/8open/jquery.easing.1.3.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/8open/common.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/8open/selcheck.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/8open/jquery.slimscroll.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/2dmap/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/2dmap/jquery.bxslider.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/2dmap/jquery-ui-1.10.3.custom.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/2dmap/jquery.ui.datepicker-ko.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script src=\"http://www.openlayers.org/api/2.13/OpenLayers.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/vworld.openapi.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"http://map.vworld.kr/js/apis.do?type=Base&apiKey=AAD4D8EE-31E5-3049-8067-34CAE32544D3\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("      var map;\r\n");
      out.write("\t    var mapBounds = new OpenLayers.Bounds(123 , 32, 134 , 43);\r\n");
      out.write("\t    var mapMinZoom = 7;\r\n");
      out.write("\t    var mapMaxZoom = 19;\r\n");
      out.write("\r\n");
      out.write("        // avoid pink tiles\r\n");
      out.write("        OpenLayers.IMAGE_RELOAD_ATTEMPTS = 3;\r\n");
      out.write("        OpenLayers.Util.onImageLoadErrorColor = \"transparent\";\r\n");
      out.write("        \r\n");
      out.write("        function init(){\r\n");
      out.write("        var options = {\r\n");
      out.write("            controls: [],\r\n");
      out.write("            projection: new OpenLayers.Projection(\"EPSG:900913\"),\r\n");
      out.write("            displayProjection: new OpenLayers.Projection(\"EPSG:4326\"),\r\n");
      out.write("            units: \"m\",\r\n");
      out.write("            controls : [],\r\n");
      out.write("            numZoomLevels:21,\r\n");
      out.write("            maxResolution: 156543.0339,\r\n");
      out.write("            maxExtent: new OpenLayers.Bounds(-20037508.34, -20037508.34, 20037508.34, 20037508.34)\r\n");
      out.write("            };\r\n");
      out.write("        map = new OpenLayers.Map('basemap', options);\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t  \t\t\t\t\r\n");
      out.write("\t\t//======================================\r\n");
      out.write("\t\t//1. ¹è°æÁöµµ Ãß°¡ÇÏ±â\r\n");
      out.write("        vBase = new vworld.Layers.Base('VBASE');\r\n");
      out.write("\t\tif (vBase != null){map.addLayer(vBase);}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("        var switcherControl = new OpenLayers.Control.LayerSwitcher();\r\n");
      out.write("        map.addControl(switcherControl);\r\n");
      out.write("        switcherControl.maximizeControl();\r\n");
      out.write("\r\n");
      out.write("        map.zoomToExtent( mapBounds.transform(map.displayProjection, map.projection ) );\r\n");
      out.write("        map.panTo(new OpenLayers.LonLat(14140009.710048,4524707.4183749));\r\n");
      out.write("      //  map.panTo(14140740.892214,4521395.6921268);\r\n");
      out.write("        if(\"A2SM_ODBLRCRMNLHSPOT_FEMALE\"==\"A2SM_CMMNPOI\"){\r\n");
      out.write("        \tmap.zoomTo(17);\t\r\n");
      out.write("        }else{\r\n");
      out.write("        \tmap.zoomTo(14);\r\n");
      out.write("        }\r\n");
      out.write("    \r\n");
      out.write("        map.addControl(new OpenLayers.Control.PanZoomBar());\r\n");
      out.write("        map.addControl(new OpenLayers.Control.MousePosition());\r\n");
      out.write("        map.addControl(new OpenLayers.Control.Navigation());\r\n");
      out.write("        //map.addControl(new OpenLayers.Control.MouseDefaults()); //2.12 No Support\r\n");
      out.write("        map.addControl(new OpenLayers.Control.Attribution({separator:\" \"}));\r\n");
      out.write("        addWmsLayer();\r\n");
      out.write("    }\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("\tfunction addWmsLayer(){\r\n");
      out.write("\tparam = {name:\"¿©¼º¹ã±æ Ä¡¾È¾ÈÀü ÀüÃ¼\",\r\n");
      out.write(" \t\tserverUrl:\"http://www.safemap.go.kr/sm/apis.do?apikey=AGTO30NX-ERMO-FWDX-604X-G0QGERVJZH\",\r\n");
      out.write("\t\tlayername:\"A2SM_ODBLRCRMNLHSPOT_FEMALE\",\r\n");
      out.write("\t\tstyles:\"A2SM_OdblrCrmnlHspot_Tot\"};\r\n");
      out.write("\tvar wmsLayer = new OpenLayers.Layer.WMS( param.name, param.serverUrl,\r\n");
      out.write("\t\t\t\t\t      {layers: ''+param.layername, \r\n");
      out.write("\t\t\t\t\t\t   styles:param.styles,\r\n");
      out.write("\t\t\t\t\t\t   format: 'image/png', \r\n");
      out.write("\t\t\t\t\t\t   exceptions:'text/xml',\r\n");
      out.write("\t\t\t\t\t\t   transparent: true},\r\n");
      out.write("\t\t\t\t\t      {isBaseLayer: false}\r\n");
      out.write("\t\t               );\t\r\n");
      out.write("map.addLayer(wmsLayer);\r\n");
      out.write("$('#basemap').height($(window).height()-20);\r\n");
      out.write("\t}\r\n");
      out.write("    </script>       \r\n");
      out.write("</head>\r\n");
      out.write("  <body onload=\"init()\">\r\n");
      out.write("    <div id=\"basemap\"  style=\"height:800px;\"></div>    \r\n");
      out.write("  </body>\r\n");
      out.write("</html> ");
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