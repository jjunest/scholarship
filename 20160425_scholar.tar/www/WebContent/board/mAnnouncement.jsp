<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<%String addressContent="/WebContent";%>
<%-- <%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%> --%>
<link rel="stylesheet" type="text/css" href="<%=addressContent%>/css/content.css">
</head>

<body id="bListGi" class="mGib showLayer">

<div id="fixed-menu">
	<%@ include file ="mHeader.jsp" %>
</div>

<div id="wrap">
	<section id="scC" class="sc scCt scWing">
	<div class="content mGib">
		<div class="companyBox" style="background: rgb(128, 128, 128);">
			<div class="cLogo">
				<p class="cName XXX_19807647">장학꿈 공지사항</p>
			</div>

			<div class="cInfo wordBreak">장학꿈 공지사항</div>
			<div class="wrapFunction">
				<button class="btnFavorite " id="btnFavorite"><i class="fa fa-heart-o fa-lg"></i> <strong>조회수 10,000</strong></button>
			</div>

		</div>
		<section class="mGibCt">
			<div class="sc">
				<h2 class="hdGib">공지사항</h2>
				<dl class="scCnt">
					<dt>제목</dt>
					<dd>제목</dd>
					<dt>작성자</dt>
					<dd>장학꿈</dd>
					<dt>작성일</dt>
					<dd>2015-00-00</dd>
				</dl>
			</div>

			<div class="sc">
				<h2 class="hdGib">내용</h2>
				<p>내용</p>
			</div>

			<div class="sc">
				<p><a href="javascript:history.go(-1)" class="bt bt2 btC3 f"><span>뒤로가기<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
		</section>
	</div>
	</section>
</div>

<div id="fixed-menu">
	<%@ include file ="mFooter.jsp" %>
</div>
</body>
</html>