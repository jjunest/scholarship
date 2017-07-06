<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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

<link rel="stylesheet" type="text/css" href="<%=Ver%>/css/content.css">

<script language="javascript">

function del(rcdno)
{
var del

del=confirm("정말 삭제하시겠습니까?")

if (del == true)
{

location.replace("manager_mContent_detailInfo_Delete.jsp?rcdno="+rcdno)
}
else
{
alert("취소되었습니다!")

}
}


function crawler_check(rcdno)
{
var check

check=confirm("DB에 정보가 제대로 입력되었습니까?")

if (check == true)
{

location.replace("manager_mContent_CrawlerCheck_C.jsp?rcdno="+rcdno)
}
else
{
alert("취소되었습니다!")

}
}

function status_change(rcdno)
{
var check

check=confirm("장학금 기간이 마감되었습니까?")

if (check == true)
{

location.replace("manager_mContent_StatusChange_C.jsp?rcdno="+rcdno)
}
else
{
alert("취소되었습니다!")

}
}

</script>



</head>

<%
String rcdno = request.getParameter("rcdno"); 						//get request's "rcdno"

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateScholarInfoView(rcdno);
ScholarVO detailSVO = sdao.selectDetailInfo(rcdno);

%>

<jsp:include page="manager_Header.jsp"></jsp:include>
<body id="bListGi" class="mGib showLayer">
<div id="wrap">
	<section id="scC" class="sc scCt scWing">
	<div class="content mGib">
		<div class="companyBox" style="background: rgb(128, 128, 128);">
			<div class="cLogo">
				<p class="cName XXX_19807647"><%=detailSVO.getFoundationname() %></p>
			</div>

			<div class="cInfo wordBreak"><%=detailSVO.getScholarname() %></div>
			<div class="wrapFunction">
				<button class="btnFavorite " id="btnFavorite"><i class="fa fa-heart-o fa-lg"></i> <strong><%=detailSVO.getView() %></strong></button>
			</div>

		</div>
	
		<section class="mGibCt">
			<div class="sc">
				<h2 class="hdGib">신청기간</h2>
				<p class="applyDate applyDate_GIB">
	
<%//============================================Startday & Endday & DDay calculate start ================================================			
String checkString = "[0-9][0-9][0-9][0-9].[0-9][0-9].[0-9][0-9]";
String endday = "";

if(detailSVO.getEndday().matches(checkString)){                  //if endday pattern matches like " 2015-08-15" ->  dday can be calculated
	System.out.println("end day matches our pattern : "+detailSVO.getEndday());


	int endday_year = Integer.parseInt(detailSVO.getEndday().substring(0,4)); // calculate DDAY ==================
	int endday_month = Integer.parseInt(detailSVO.getEndday().substring(5,7));
	int endday_day = Integer.parseInt(detailSVO.getEndday().substring(8,10));
	Calendar cal = Calendar.getInstance();
	long now_day = cal.getTimeInMillis();
	cal.set(endday_year, endday_month-1, endday_day);
	long event_day = cal.getTimeInMillis();
	long d_day = (event_day - now_day)/(60*60*24*1000);
	
	String dday = String.valueOf((int)d_day); 								//in_dday -> save like "5"
			%><span class="deadline">
			D-Day<strong> <%=dday%></strong>
			</span>
			<span class="period devFontFixed"><span class="btContest btStart">시작</span><%=detailSVO.getStartday() %></br><span class="btContest btStart">마감</span><%=detailSVO.getEndday() %></span>
				</p>
			<%

}else {				//if can't calculate DDAY ========================
			%>			<span class="deadline">
					<strong><%=detailSVO.getEndday() %></strong>
					</span>
					<span class="period devFontFixed"><span class="btContest btStart">시작</span>정보 없음 </br><span class="btContest btStart">마감</span> 정보 없음 </span>
				</p>
			<%										
	
}


	%>
	
<!-- ----------------------------------------------ㄴStartday & Endday &  DDay calculate ENDED---------------------------------------------------- -->
	
				
			</div>

			<div class="sc">
				<h2 class="hdGib">장학정보</h2>
				<dl class="scCnt">
					<dt>성적구분</dt>
					<dd><%=detailSVO.getGpa() %></dd>
					<dt>소득구분</dt>
					<dd><%=detailSVO.getStudentstatus() %></dd>
					<dt>장학금액</dt>
					<dd><%=detailSVO.getScholarmoney() %></dd>
					<dt>특정대학</dt>
					<dd><%=detailSVO.getSchoolname() %></dd>
					<dt>전공구분</dt>
					<dd><%=detailSVO.getMajor() %></dd>
					<dt>거주지역</dt>
					<dd><%=detailSVO.getArea() %></dd>
					<dt>홈페이지</dt>
					<dd><a href="<%=detailSVO.getLink()%>" target="_blank" ><%=detailSVO.getLink()%></a></dd>
					<dt>출처</dt>
					<dd><a href="<%=detailSVO.getUrl()%>" target="_blank" ><%=detailSVO.getUrl()%></a></dd>
					<dt>첨부파일</dt>
					<dd><a href="<%=detailSVO.getFileurl()%>" target="_blank" ><%=detailSVO.getFileurl()%></a></dd>
				</dl>
			</div>

			<div class="sc">
				<h2 class="hdGib">상세정보</h2>
				<% 																		// etc 부분의 개행 <br>을 추가 해준다. 
				String etcBefore = detailSVO.getEtc();
				String etcFinal = etcBefore.replaceAll("\n\r","<br><br>");%>
				<p><%=etcFinal %></p>
			</div>


			<div class="sc">
				<p><a href="javascript:history.go(-1)" class="bt bt2 btC3 f"><span>뒤로가기<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
			
			<div class="sc">
				<p><a href="javascript:crawler_check('<%=rcdno %>')" class="bt bt2 btC3 f"><span>정보 확인<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
		
			<div class="sc">
				<p><a href="javascript:status_change('<%=rcdno %>')" class="bt bt2 btC3 f"><span>마감 장학금으로 변경<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
		
			<div class="sc">
				<p><a href="manager_mContent_detailInfo_Modify.jsp?rcdno=<%=rcdno %>" class="bt bt2 btC3 f"><span>수정하기<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
			
			<div class="sc">
				<p><a href="javascript:del('<%=rcdno %>')" class="bt bt2 btC3 f"><span>삭제하기<span class="icnGib icn_arr2 icnRt"></span></span></a></p>
			</div>
			
		</section>
	</div>
	</section>
</div>
</body>
</html>