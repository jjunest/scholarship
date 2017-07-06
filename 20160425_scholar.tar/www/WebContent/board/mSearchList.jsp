<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import = "java.util.List"%>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.net.URLEncoder" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String address="/WebContent";%>
<%String Ver = "/WebContent";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%>
  
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<link type="text/css" rel="stylesheet" href="<%=address%>/css/scholarship.css">
<link type="text/css" rel="stylesheet" href="<%=address%>/css/font-awesome.css">
</head>
<style type="text/css">
#nameLength{width:330px; vertical-align:middle; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
</style>

<body>
<div id="fixed-menu">
	<jsp:include page="mHeader.jsp"></jsp:include>
</div>

<!-- -----------------Get poopular ScholarList which are in Databases --------------------------- -->
<%
request.setCharacterEncoding("utf-8");
String keyword = request.getParameter("sc_word");

out.println("keyword: "+keyword);

ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> List = sdao.searchInfoList(keyword);

out.println("size : "+List.size());

%><!-- ----------------- Get popular ScholarList which are in Databases ENDED---------------------- -->

<div class="content">
	<section class="ssHighlight" id="dev_Highlight_0" >
		<h3 class="hS4"><span class="icoPart"></span>장학금 검색 결과</h3>
			<ul class="booth boothNewest">
				<%for(int i=0; i<List.size(); i++){
				ScholarVO svo = List.get(i);%>
				<li>
					<span class="part" id = "nameLength"><a href="manager_mContent_detailInfo.jsp?rcdno=<%=svo.getRcdno()%>"><%=svo.getScholarname() %></a></span>
					<div class="ingBox">
						<a href="mContent.jsp?rcdno=<%=svo.getRcdno()%>" class="inner">
							<span class="thumb" style="padding-top:6px; display:inline-block;"><img src="<%=Ver %>/images/mark.png"></span>
							<strong class="tit">재단명 : <%=svo.getFoundationname() %></strong>
							<span class="txt">장학 금액 : <%=svo.getScholarmoney() %></span>
							<span class="desc"><span class="date "><span class="cs3">마감일 : <%=List.get(i).getEndday() %></span></span></span>
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