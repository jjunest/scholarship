<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="<%=address%>/css/content.css">
</head>

<%
String rcdno = request.getParameter("rcdno"); 						
ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateScholarInfoView(rcdno);
ScholarVO detailSVO = sdao.selectDetailInfo(rcdno);
%>

<body id="bListGi" class="mGib showLayer">
<div id="fixed-menu">
	<%@ include file ="mHeader.jsp" %>
</div>

<div id="wrap" style="width:100%;">
	<section id="scC" class="sc scCt scWing">
	<div class="content mGib">
		<div class="companyBox" style="background-image: url(<%=address%>/images/background.png);">
			<div class="cLogo">
				<p class="cName XXX_19807647"><%=detailSVO.getFoundationname()%></p>
			</div>

			<div class="cInfo wordBreak"><%=detailSVO.getScholarname()%></div>
			<div class="wrapFunction">
				<button class="btnFavorite " id="btnFavorite"><i class="fa fa-heart-o fa-lg"></i> <strong>조회수 <%=detailSVO.getView()%></strong></button>
			</div>
		</div>
	
		<section class="mGibCt">
			<div class="sc">
				<h2 class="hdGib">신청기간</h2>
				<p class="applyDate applyDate_GIB">
<%			
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
%>
	<span class="deadline">D-Day<strong> <%=dday%></strong></span>
	<span class="period devFontFixed"><span class="btContest btStart">시작</span><%=detailSVO.getStartday() %></br>
	<span class="btContest btStart">마감</span><%=detailSVO.getEndday() %></span>
	</p>
<%
}else{				
%>	
	<span class="deadline"><strong><%=detailSVO.getEndday() %></strong></span>
	<span class="period devFontFixed"><span class="btContest btStart">시작</span>정보 없음</br>
	<span class="btContest btStart">마감</span>정보 없음</span>
	</p>
<%										
}
%>
			</div>
			<div class="sc">
				<h2 class="hdGib">장학정보</h2>
				<dl class="scCnt">
					<dt>성적구분</dt>
					<dd><%=detailSVO.getGpa()%></dd>
					<dt>소득구분</dt>
					<dd><%=detailSVO.getStudentstatus()%></dd>
					<dt>장학금액</dt>
					<dd><%=detailSVO.getScholarmoney()%></dd>
					<dt>특정대학</dt>
					<dd><%=detailSVO.getSchoolname()%></dd>
					<dt>전공구분</dt>
					<dd><%=detailSVO.getMajor()%></dd>
					<dt>거주지역</dt>
					<dd><%=detailSVO.getArea()%></dd>
					<dt>홈페이지</dt>
					<%if((detailSVO.getLink()).equals("정보없음")){%>)
					<dd><a href="<%=detailSVO.getLink()%>">정보없음</a></dd>
					<%}else{%>
					<dd><a href="<%=detailSVO.getLink()%>">홈페이지 바로가기</a></dd>
					<%}%>
					<dt>첨부파일</dt>
					<dd><a href = "<%=detailSVO.getFileurl()%>"><%=detailSVO.getFilename()%></a></dd></br>
				</dl>
			</div>

			<div class="sc">
				<h2 class="hdGib">상세정보</h2>
				<p><%=detailSVO.getEtc() %></p>
			</div>

			<div class="sc">
				<p><a href="javascript:history.go(-1)" class="bt bt2 btC3 f"><span>뒤로가기<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
		</section>
	</div>
	</section>
</div>
</body>
</html>