<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.List"%>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.util.Calendar" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%>
  
  
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>

<link type="text/css" rel="stylesheet" href="http://m.jobkorea.co.kr/css/default.css?date=201506301840">
</head>
<div id="fixed-menu">
<jsp:include page="manager_Header.jsp"></jsp:include>
</div>


<!-- -----------------Get ing ScholarList which are in Databases --------------------------- -->
<%
ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> List = sdao.selectAllInfoList();
%><!-- ----------------- Get ing ScholarList which are in Databases ENDED---------------------- -->





<div id="wrap">
<section id="scC" class="sc scCt scWing">
	<section class="ssBooth ssHighlight">
		<h2 class="h hS2"><span>전체</span>장학금</h2>
			<ul class="booth booth1 booth4 listEvenOdd">
			<%for(int i=0; i<List.size(); i++) 							//-----------------Pick Each EndedList
			{ ScholarVO svo = List.get(i);
			
			%>
			<li>
				<a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>"><strong class="e">재단 명 | <%=svo.getFoundationname() %></strong> 
					<span class="t"><%= svo.getScholarname() %></span> 
					<span class="meta">
						<span class="career">장학 금액 | <%= svo.getScholarmoney() %></span> || 
						<span class="career">성적 기준 | <%= svo.getGpa() %></span>
					</span>
				</a>
				
				
<%//============================================DDay calculate start ================================================			
String checkString = "[0-9][0-9][0-9][0-9].[0-9][0-9].[0-9][0-9]";
String endday = "";

if(svo.getEndday().matches(checkString)){                  //if endday pattern matches like " 2015-08-15" ->  dday can be calculated
	System.out.println("end day matches our pattern : "+svo.getEndday());


	int endday_year = Integer.parseInt(svo.getEndday().substring(0,4)); // calculate DDAY ==================
	int endday_month = Integer.parseInt(svo.getEndday().substring(5,7));
	int endday_day = Integer.parseInt(svo.getEndday().substring(8,10));
	Calendar cal = Calendar.getInstance();
	long now_day = cal.getTimeInMillis();
	cal.set(endday_year, endday_month-1, endday_day);
	long event_day = cal.getTimeInMillis();
	long d_day = (event_day - now_day)/(60*60*24*1000);
	
	String dday = String.valueOf((int)d_day); 								//in_dday -> save like "5"
	
	%><span class="date2 "><span class="cs3"><%=svo.getEndday() %></span></span> 
	<a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>" class="btnApply btnRow2">D-Day<br><%=dday %></a><%  		//if dday can be calculated, show like this
}else{
		
	%><span class="date2 "><span class="cs3">마감 일| <%=svo.getEndday() %></span></span> 
	<a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>" class="btnApply btnRow2">D-Day<br>기준 없음</a><%				//if dday can't be calculated, show like this
			
			
}	%> 
<!-- //============================================DDay calculate Ended ================================================ -->

				
			

			</li>
			<%}%>	
			</ul>
	</section>
</section>

<div id="fixed-menu">
	<%@ include file ="mFooter.jsp" %>
</div>
</div>
</html>