<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.List"%>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<link type="text/css" rel="stylesheet" href="http://m.jobkorea.co.kr//css/default.css?date=201506301840">
<link type="text/css" rel="stylesheet" href="http://m.jobkorea.co.kr/css/font-awesome-4.2.0/css/font-awesome.min.css">
</head>
<body>
<div id="fixed-menu">
	<%@ include file ="mHeader.jsp" %>
</div>

<!-- -----------------Get ended ScholarList which are in Databases --------------------------- -->
<%
ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> recomList = sdao.selectPopularInfoList();

%><!-- ----------------- Get ended ScholarList which are in Databases ENDED---------------------- -->


<div class="content">
	<section class="ssHighlight" id="dev_Highlight_0" >
		<h3 class="hS4"><span class="icoPart"></span>인기장학금</h3>
			<ul class="booth boothNewest">
				<%for(int i=0; i<recomList.size(); i++){
				ScholarVO svo = recomList.get(i);%>
				<li>
					<span class="part"><a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>"><%=svo.getScholarname() %></a></span>
					<div class="ingBox">
						<a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>" class="inner">
							<span class="thumb" style="padding-top:6px; display:inline-block;"><img src="../images/mark.png"></span>
							<strong class="tit">재단 명 :<%= svo.getFoundationname() %></strong>
							<span class="txt">잫학 금액 : <%= svo.getScholarmoney() %></span>
							<span class="desc"><span class="date "><span class="cs3">마감 : <%= svo.getEndday() %></span></span></span>
						</a>
					</div>
				</li>
				<%}%>
			</ul>
	</section>
</div>

<div id="fixed-menu">
	<%@ include file ="mFooter.jsp" %>
</div>
</body>
</html>