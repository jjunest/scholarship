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
    window.history.back()
}


</SCRIPT>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Scholarship Center</title>
</head>
<body>
<style>
	body{
		background-image: url(/WebContent/images/background5.jpg);            
		background-size: 100%;
		background-origin: content;
		background-repeat: repeat;
	}
</style>
<table ALIGN="CENTER" width=1500>
	<tr>
	<td width=100>
		<IMG SRC="/WebContent/images/jang.png" height=70 align=right>
	</td>

	<td width=1400>
		<FONT FACE="Geneva, Arial" SIZE=6><b>장학꿈</b></FONT>
	</td>
	</tr>
</table>

<table bgcolor=#57575B ALIGN="CENTER" width="1500" height="45">
<tr>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Main.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 메인 </FONT></td>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('MainDday.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> Dday순으로보기 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학재단 </FONT></td>
  <td ALIGN="CENTER"style="cursor:pointer" onClick = "javascript:location.replace('Search.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학금검색 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학금기부 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 공지사항 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 고객센터 </FONT></td>
</tr>
</table>
</head>

<body>

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
<table align=center width="1500">
<tr>
<td>
	<IMG SRC="/WebContent/images/scholarship.png" width="1500" height=500>
</td>
</tr>
</table>

<table bgcolor=#E6E6E6 align=center width=1500 cellpadding=50>
<tr>
<td>

<table bgcolor=#E6E6E6 align=center width=1400 border=1>
<tr>
<td width=600 height=400 align=center>
	<IMG style="display:block;" width=1400 height=600 SRC=<%=image%>>
</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 ALIGN="CENTER" width=1400 cellpadding=50>
<tr>

<%if(d_day>=0){%>
<td ALIGN="CENTER">
<FONT FACE="KoreanTJM" SIZE=10><b><%=vo.getScholarname()%>    </b></FONT> 
<FONT FACE="KoreanTJM" SIZE=6 color=red>D-day <%=d_day%></FONT></td>
<%}else{%>
<td ALIGN="CENTER">
<FONT FACE="KoreanTJM" SIZE=10><b><%=vo.getScholarname()%>    </b></FONT> 
<FONT FACE="KoreanTJM" SIZE=6 color=red> 마감 </FONT></td>
<%}%>
</tr>
<tr>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= vo.getFoundationname() %></FONT></td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 ALIGN="CENTER" width=1400 border=1 cellpadding=20>

<tr>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>장학금액</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= scholarmoneyscreen %> </FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>평점</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= gpascreen %> </FONT></td>
</tr>

<tr>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>소득분위</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= studentstatusscreen%> </FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>대상지역</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= vo.getArea() %></FONT></td>
</tr>

<tr>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>전공</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= vo.getMajor() %></FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>학교</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7><%= vo.getSchoolname()%></FONT></td>
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
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>시작날짜</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=6><%=startyear%>년 <%=startmonth%>월 <%=startday%>일</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=7>마감날짜</FONT></td>
<td ALIGN="CENTER"><FONT FACE="KoreanTJM" SIZE=6><%=endyear%>년 <%=endmonth%>월 <%=endday%>일</FONT></td>
</tr>
</table>

</td>
</tr>

<tr>
<td>
<table bgcolor=#E6E6E6 align=center height=1500 cellpadding=30>
<tr><td><FONT FACE="KoreanTJM" SIZE=8> 재단 소개 </FONT></td></tr> 
<tr><td><FONT FACE="KoreanTJM" SIZE=5><%=vo.getEtc()%></FONT></td></tr>
</table>
</td>
</tr>
</table>

</td>
</tr>
</table>

<br>
<br>
<table align=center>
<tr>
<td align=center><button onclick="goBack()">뒤로가기</button></td>
</tr>
</table>
<br>
<br>
<table align=center> 
<tr>
<td width =300 align = center bgcolor ="white"><A HREF ="Modify.jsp?rcdno=<%=num%>"> 정보 수정 (사용금지) </A></td>
<td width =200 align = center bgcolor ="white"><A HREF ="Delete.jsp?rcdno=<%=num%>"> 정보 삭제   </A></td>
</tr>
</table>

</body>
</html>