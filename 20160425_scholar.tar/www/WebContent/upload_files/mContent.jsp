<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<SCRIPT type="text/javascript">

function CheckForm(form){
	form.submit();

}

function goBack() {
    window.history.back();
}

</SCRIPT>

<style>
@media only screen and (max-width : 799px) {
 body{
  zoom:30%
 }
 #content { width:600px; }
}

@media only screen and (min-width : 800px) and (max-width : 1023px) {
body{
	zoom: 60%
}
 #content { width:600px; }
}

@media only screen and (min-width : 1024px}

}

</style>


<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장학꿈</title>

</head>
<body bgcolor="#FFFFFF">

<table align=center width=1500>
<tr>
<td>
<table ALIGN="CENTER" width=1500 height=150>
	<tr>
	<td width=100  height=100 align=CENTER>
		<IMG SRC="/WebContent/images/jang.png" height=150>
	</td>
	<td width=150 align=left>
		<FONT FACE="Geneva, Arial" SIZE=8><b>장학꿈</b></FONT>
	</td>
	<td width=1250 align=left>
		<FONT FACE="Geneva, Arial" SIZE=6>통학장학금센터</FONT>
	</td>
	</tr>
</table>
</td>
</tr>

<tr>
<td>
<table bgcolor=#575656 ALIGN="CENTER" width=1500 height="200" border=1>
<tr height = "200">
	<td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Intro.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>장학꿈 소개</b></FONT></td>
  	<td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Announcement.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>공지사항</b></FONT></td>
  	<td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mMain.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>진행 장학금</b></FONT></td>
  	<td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mMainEnd.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>마감 장학금</b></FONT></td>
  	<td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mSearch.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>장학금 검색</b></FONT></td>
</tr>
</table>
</td>
</tr>

<tr>
<td>

<%
int num = Integer.parseInt(request.getParameter("rcdno"));
String Query = "select * from scholar WHERE rcdno =?";

ScholarDAO sdao = ScholarDAO.getInstance();
ScholarVO vo = sdao.selectOneBoard(num);

String realFolder="";
realFolder = "/WebContent/upload_files";
String image = realFolder + "/" + vo.getImagename();

//gpa 변환// 1이면 선택안함 / 2이면 2.5이상 /3이면 3.0이상 /4이면 3.5이상 /5이면 4.0이상 
String gpascreen="";
String scholarmoneyscreen="";
String studentstatusscreen="";

if(vo.getGpa()==1){
	
	gpascreen = "기준 없음";
}else if(vo.getGpa()==2){
	gpascreen = "2.5 이상";
}else if(vo.getGpa()==3){
	gpascreen = "3.0 이상";
}else if(vo.getGpa()==4){
	gpascreen = "3.5 이상";
}else if(vo.getGpa()==5){
	gpascreen = "4.0이상";
}


//scholarmoney 변환 //3이면 ~100만원 / 4이면 100~200만원 / 5이면 200~300만원 / 6이면 300이상 / 


if(vo.getScholarmoney()==3){
	scholarmoneyscreen = "100만원 이하";
	
}else if (vo.getScholarmoney()==4){
	scholarmoneyscreen = "100~200만원";
}else if (vo.getScholarmoney()==5){
	scholarmoneyscreen = "200~300만원";
}
else if (vo.getScholarmoney()==6){
	scholarmoneyscreen = "300만원 이상";
}
else if (vo.getScholarmoney()==7){
	scholarmoneyscreen = "기타";
}
else if (vo.getScholarmoney()==8){
	scholarmoneyscreen = "전액 장학금";
}

//student status 변환

if(vo.getStudentstatus()==2){
	studentstatusscreen = "1분위 이하";
}else if (vo.getStudentstatus()==3){
	studentstatusscreen = "2분위 이하";
}else if (vo.getStudentstatus()==4){
	studentstatusscreen = "3분위 이하";
}else if (vo.getStudentstatus()==5){
	studentstatusscreen = "4분위 이하";
}
else if (vo.getStudentstatus()==6){
	studentstatusscreen = "5분위 이하";
}
else if (vo.getStudentstatus()==7){
	studentstatusscreen = "6분위 이하";
}
else if (vo.getStudentstatus()==8){
	studentstatusscreen = "7분위 이하";
}
else if (vo.getStudentstatus()==9){
	studentstatusscreen = "8분위 이하";
}
else if (vo.getStudentstatus()==10){
	studentstatusscreen = "기준 없음";
}

Calendar cal = Calendar.getInstance();
int endday1 = vo.getEndday();
int year = endday1/10000;
int month = (endday1%10000)/100;
int day = (endday1%100);
long now_day = cal.getTimeInMillis();
cal.set(year, month-1, day);
  
long event_day = cal.getTimeInMillis();
long d_day = (event_day - now_day)/(60*60*24*1000);
%>

<table bgcolor=#E6E6E6 align=center width=1500>
<tr>
<td>

<table bgcolor=#E6E6E6 align=center width=1500 height=1000 border=1>
<tr>
<td align=center>
	<IMG style="display:block;" width=1450 height=1000 SRC=<%=image%>>
</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 ALIGN="CENTER" width=1500 height=300>
<tr>
<td ALIGN=CENTER><FONT FACE="KoreanTJM" SIZE=10><b><%=vo.getScholarname()%></b></FONT></td>
</tr>
<%if(d_day>=0){%>
<tr>
<%if(vo.getEndday()==20500101){%>
<td ALIGN=CENTER><FONT FACE="KoreanTJM" SIZE=7 color=red><b>끝</b></FONT></td>
<%}else{%>
<td ALIGN=CENTER><FONT FACE="KoreanTJM" SIZE=7 color=red><b>D-day <%=d_day%></b></FONT></td>
<%}%>
</tr>
<%}else{%>
<tr>
<td ALIGN=CENTER><FONT FACE="KoreanTJM" SIZE=7 color=red><b> 마감 </b></FONT></td>
<%}%>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 ALIGN="CENTER" width=1500 border=1 cellpadding=20>
<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>재단</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= vo.getFoundationname() %></FONT></td>
</tr>
<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>장학금액</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= scholarmoneyscreen %> </FONT></td>
</tr>

<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>평점</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= gpascreen %> </FONT></td>
</tr>
<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>소득분위</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%=studentstatusscreen%> </FONT></td>
</tr>

<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>대상지역</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= vo.getArea() %></FONT></td>
</tr>

<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>전공</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= vo.getMajor() %></FONT></td>
</tr>

<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white  SIZE=8>학교</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%= vo.getSchoolname()%></FONT></td>
</tr>

<%
int start = vo.getStartday();
int end = vo.getEndday();

int startyear = start/10000;
int startmonth = (start%10000)/100;
int startday = (start%100);

int endyear = end/10000;
int endmonth = (end%10000)/100;
int endday = (end%100);
%>

<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>시작날짜</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%=startyear%>년 <%=startmonth%>월 <%=startday%>일</FONT></td>
</tr>
<tr>
<td ALIGN="CENTER" bgcolor="#575656"><FONT FACE="KoreanTJM" color=white SIZE=8>마감날짜</FONT></td>
<td ALIGN="CENTER" bgcolor="#FFFFFF"><FONT FACE="KoreanTJM" SIZE=8><%=endyear%>년 <%=endmonth%>월 <%=endday%>일</FONT></td>
</tr>
</table>

</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 align=center width=1500 height=1500 cellpadding=20>
<tr><td align=center height=200><FONT FACE="KoreanTJM" SIZE=8> 상세 정보 </FONT></td></tr> 
<tr><td><FONT FACE="KoreanTJM" SIZE=8><%=vo.getEtc()%></FONT></td></tr>
</table>
</td>
</tr>
</table>

</td>
</tr>
</table>

</td>
</tr>
</table>

<br>
<br>

<table bgcolor ="#FFFFFF" ALIGN="CENTER" width="1000" height="200" border=1>
<tr>
<td align = center onclick="goBack()"><FONT FACE="Geneva, Arial" SIZE=20>뒤로가기</FONT></td>

</tr>
</table>


<br>
<br>
<br>

</body>
</html>