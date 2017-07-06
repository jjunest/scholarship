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
<%String addressNew = "/WebContent";%>
<%-- <%String Ver = "/WebContent/";
  String eclipseVer = "../";
  String UploadVer = "/WebContent/";%> --%>
<script type="text/javascript" src="<%=addressNew%>/js/slides.js"></script>
<link rel="stylesheet" type="text/css" href="<%=addressNew%>/css/common.css">
<style type="text/css">
@import url("/WebContent/css/slides.css");
#slides .slidesjs-pagination {position:absolute; top:115px; left:10px; z-index:10;}
#slides .slidesjs-previous {position:absolute; bottom:5px; left:5px; z-index:10; display:none;}
#slides .slidesjs-next {position:absolute; bottom:5px; left:20px; z-index:10; display:none;}
#slides .slidesjs-play {position:absolute; bottom:5px; left:35px; z-index:10; display:none !important;}
#slides .slidesjs-stop {position:absolute; bottom:5px; left:35px; z-index:10; display:none !important;}
#slides .img {width:100%; height:100%; position:relative;}
#slides .img-m {width:100%; height:100%; position:relative; display:none;}

#slides .textCenter {position:absolute; font-size:20px; width:100%; text-align:center; top:200px;}
#slides .textCenter a {display:block; font-size:16px; color:#fff; !important; text-align:center; overflow:hidden; white-space:nowrap;}
#slides .text {position:absolute; width:100%; text-align:center; bottom:-30px; right:0px}
#slides .text a {display:block; padding:10px 10PX; font-size:16px; color:#fff; !important; text-align:center; overflow:hidden; white-space:nowrap; border-radius:8px;}

#news .title {display:block; padding:10px 10PX; font-size:16px; color:#ccc !important; text-align:center; background:#313131; overflow:hidden;}

.btnFavorite {padding:10px 10px; margin-bottom:20px; font-size:20px; background-color: rgba(255, 255, 255, 0.2); border: 1px; color:white;}
</style>
</head>
<body>

<%
ScholarDAO sdao = ScholarDAO.getInstance();
List<ScholarVO> list = sdao.selectNewInfoList();
%>

<div id="slides" style="max-height: 700px;">
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(0).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice1.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(0).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(0).getRcdno()%>" target="_self"><%=list.get(0).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(0).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(1).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice2.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(1).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(1).getRcdno()%>" target="_self"><%=list.get(1).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(1).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(2).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice3.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(2).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(2).getRcdno()%>" target="_self"><%=list.get(2).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(2).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(3).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice4.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(3).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(3).getRcdno()%>" target="_self"><%=list.get(3).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(3).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(4).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice5.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(4).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(4).getRcdno()%>" target="_self"><%=list.get(4).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(4).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
	<div>
		<a href="mContent.jsp?rcdno=<%=list.get(5).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/practice6.png">
		</a>
		<div class="textCenter">
			<button class="btnFavorite" id="btnFavorite"><i class="fa fa-check-square-o fa-lg"></i> <strong>조회수 <%=list.get(5).getView()%></strong></button>
			<a href="mContent.jsp?rcdno=<%=list.get(5).getRcdno()%>" target="_self"><%=list.get(5).getScholarname() %></a>
		</div>
		<div class="text">
			<a href="mContent.jsp?rcdno=<%=list.get(5).getRcdno()%>" target="_self">
			<img class="img" alt="splash" src="<%=addressNew%>/images/go.png" style="position:relative;"/>
			</a>
		</div>
	</div>
</div>

<!--  
<div id="news" style="width: auto; height: auto !important">
	<div class="title">
		<ul style="padding: 0 0px 0 0px !important;">공지사항</ul>
	</div>
	
	<div class="dcp-schedule" style="width: auto; height: auto !important">
	<ul>
		<%for(int i=0; i<5; i++){%>
		<li>
			<a href="">
			<span>&gt; &nbsp;장학꿈 버전2 준비중</span>
			</br>
			<span class="date">&nbsp; &nbsp; &nbsp;공지일자 2015.08.01</span>
			</a>
		</li>
		<%}%>
	</ul>
	</div>
</div>
-->

<script type="text/javascript">
	$(function() {
    	$("#slides").slidesjs({
      		width: 800,
      		height: 1000,
      		navigation: {effect: "fade"},
           	pagination: {effect: "fade"},
          	effect: {fade: {speed: 800}},      		
      		play: {
      			effect: "fade",      			
            	active: true,
             	auto: true,
                interval: 4000,
                swap: true,
                pauseOnHover: true,
            	restartDelay: 2500
         	}      		
    	});
  	});
	
	if (460 > $("#slides").innerWidth()) {
		$(".splash").css("height" , $(".mobile").innerHeight());
	} else {
		$(".splash").css("height" , $(".mobile2").innerHeight());
	}
	
	$(document).ready(function() {
		$(".splash").css("height" , "auto");
		
		$(window).resize(function() {
			if (460 > $("#slides").innerWidth()) {
				$(".slidesjs-container").css("height" , $(".mobile").innerHeight());
			}
       	});
		
       	$(window).resize();  
	});
</script>
</body>
</html>