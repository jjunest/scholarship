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
<%String address="/WebContent";%>


<%-- <%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%> --%>
  
  
<link type="text/css" rel="stylesheet" href="<%=address%>/css/scholarship.css">
<link type="text/css" rel="stylesheet" href="<%=address%>/css/font-awesome.css">
<style type="text/css">
#nameLength{width:340px; vertical-align:middle; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
</style>

</head>
<body>
<div id="fixed-menu">
	<%@ include file ="mHeader.jsp" %>
</div>
<%
ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> list = sdao.selectPopularInfoList();
%>
<div class="content">
	<section class="ssHighlight" id="dev_Highlight_0" >
		<h3 class="hS4"><span class="icoPart"></span>인기장학금</h3>
			<ul class="booth boothNewest">
				<%for(int i=0; i<list.size(); i++){
				ScholarVO svo = list.get(i);%>
				<li>
					<span class="part" id = "nameLength" ><a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>"><%=svo.getScholarname()%></a></span>
					<div class="ingBox">
						<a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>" class="inner">
							<span class="thumb" style="padding-top:6px; display:inline-block;"><img src="<%=address%>/images/mark.png"></span>
							<strong class="tit"><%=svo.getFoundationname()%></strong>
							<span class="txt">조회수: <%=svo.getView()%></span>
							<span class="txt">마감일: <%=svo.getEndday()%></span>
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