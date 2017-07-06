<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.List"%>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<%String address="/WebContent";%>
<%-- <%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%> --%>
  
<link type="text/css" rel="stylesheet" href="<%=address%>/css/scholarship.css">
</head>
<body>
<div id="fixed-menu">
	<%@ include file ="mHeader.jsp" %>
</div>

<%
ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> list = sdao.selectEndedInfo();
%>

<div id="wrap">
<section id="scC" class="sc scCt scWing">
	<section class="ssBooth ssHighlight">
		<h2 class="h hS2"><span>마감</span>장학금</h2>
			<ul class="booth booth1 booth4 listEvenOdd">
			<%for(int i=0; i<list.size(); i++){ 
				ScholarVO svo = list.get(i);
			%>
			<li>
				<a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>"><strong class="e"><%=svo.getFoundationname()%></strong> 
					<span class="t"><%=svo.getScholarname()%></span> 
					<span class="meta">
						<span class="career">장학 금액: <%=svo.getScholarmoney()%></span> | 
						<span class="career">성적 기준: <%=svo.getGpa()%></span>
					</span>
				</a>
				
				
<%
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
%>
	<span class="date2 "><span class="cs3"><%=svo.getEndday()%></span></span> 
	<a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>" class="btnApply btnRow2">D-Day<br><%=dday%></a>
<%  		
}else{
%>
	<span class="date2 "><span class="cs3">마감 <%=svo.getEndday()%></span></span> 
	<a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>" class="btnApply btnRow2">D-Day<br>기준 없음</a>
<%}%> 
			</li>
			<%}%>	
		</ul>
	</section>
</section>
</div>

<div id="fixed-menu">
	<%@ include file ="mFooter.jsp" %>
</div>
</body>
</html>