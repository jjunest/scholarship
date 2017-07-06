<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.lang.*"%>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.util.List" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장학꿈</title>
<style>
	body{
		background-image: url(../images/background5.jpg);           
		background-size: 100%;
		background-origin: content;
		background-repeat: repeat;
	}
</style>
</head>
<body bgcolor=#5C844A>

<table ALIGN="CENTER" width=1500>
	<tr>
	<td width=100>
		<IMG SRC="../images/jang.png" height=70 align=right>
	</td>

	<td width=1400 align=left>
		<FONT FACE="Geneva, Arial" SIZE=6><b>장학꿈</b></FONT>
	</td>

	</tr>
</table>

<table bgcolor=#57575B ALIGN="CENTER" width="1500" height="45">
<tr>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Main.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 메인 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 센터소개 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학재단 </FONT></td>
  <td ALIGN="CENTER"style="cursor:pointer" onClick = "javascript:location.replace('Search.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학금검색 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 장학금기부 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 공지사항 </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> 고객센터 </FONT></td>
</tr>
</table>

<%
float gpa;
int scholarmoney;
int studentstatus;
String area;
String schoolname;
String major;

//만약에 gpa 가 없으면 5를 주고 studentStatus 가 없으면 10을 주고, dday가 없으면 100을 준다 (나중에 그 밑에 있는 값을 조건으로 삼을 것임)

gpa = Float.parseFloat(request.getParameter("gpa"));
scholarmoney = Integer.parseInt(request.getParameter("scholarmoney"));
studentstatus = Integer.parseInt(request.getParameter("studentstatus"));
if(request.getParameter("area")==null){area ="";}else{area = request.getParameter("area");}
if(request.getParameter("schoolname")==null){schoolname ="";}else{schoolname = request.getParameter("schoolname");}
if(request.getParameter("major")==null){major ="";}else{major = request.getParameter("major");}


%>


<%
ScholarDAO sdao = ScholarDAO.getInstance();

int pagenum;

if(request.getParameter("pagenum")==null){
	pagenum =1;
}else{
	pagenum = Integer.parseInt(request.getParameter("pagenum"));
}


List<ScholarVO> list = sdao.searchBoard(gpa, scholarmoney, studentstatus, area, schoolname, major, pagenum);
pagenum++;


int num = 0;

for(int i=0; i<list.size(); i++){

	ScholarVO vo = list.get(i);
	num = vo.getRcdno();
	String realFolder="";
	realFolder = "../upload_files";
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
	
	
%>

	
	
	
%>

<table bgcolor ="#F0F0F0" ALIGN="CENTER" width="1500" height="450">
<tr>
<td>
<table bgcolor ="#E6E6E6" border ="1" ALIGN="CENTER" width="1400" height="300">
<tr>
<%if(vo.getDday()<7){%>
     <td width = "200" ALIGN="CENTER"><FONT COLOR=red FACE="Geneva, Arial" SIZE=10>
     <table>
     <tr>
     <td height = "150">
     <img style="display:block;" width="100%" height="100%" src = "../images/dday1.jpg"></td>
     </tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr align = "center">
     <td align = "center">
      <b> <%=vo.getDday() %></b> </FONT></td>
     </tr>
     </table>
     
<%}
else{%> 
	<td width = "200" ALIGN="CENTER">
	<table>
     <tr>
     <td height = "150">
     <img style="display:block;" width="100%" height="100%" src = "../images/dday1.jpg"></td>
     </tr>
    <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr align = "center" >
     <td align = "center">
      <b> <FONT COLOR=black FACE="Geneva, Arial" SIZE=10> <%=vo.getDday() %></FONT></b></td>
     </tr>
     </table>
<%}%>
	
	<td width = "600" height ="300" ALIGN="CENTER">
	<A HREF ="Content.jsp?rcdno=<%=vo.getRcdno()%>"><img style="display:block;" height="100%" width="100%" src ="<%=image%>"></A></td>
	
	<td width = "600" height = "300" style="color:black"  align = "center">
	<table>
		<tr>
			<td width = "600" ALIGN="CENTER"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10><b><h2><%=vo.getScholarname() %></h2></b> </FONT></td>
		</tr>
		<tr>
			<td width = "600" ALIGN="left"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>&nbsp <b>지원 금액 : <%=scholarmoneyscreen %><br></b> </FONT></td>
		</tr>
		<tr>
	 		<td width = "600" ALIGN="left"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>&nbsp <b>직전 학기 평점 <%= gpascreen %> 이상 </b></FONT></td>
		</tr>
	</table>
	</td>
	
</tr>

</table>
</td>
</tr>
</table>
<%
}

%>

<table bgcolor ="#F0F0F0" ALIGN="CENTER" width="1500" height="100">
<tr>

<td align = center> <IMG src ="../images/more.png"    onClick = "javascript:location.replace('SearchPro.jsp?pagenum=<%=pagenum%>&gpa=<%=gpa%>&scholarmoney=<%=scholarmoney%>&studentstatus=<%=studentstatus%>&area=<%=area%>&schoolname=<%=schoolname%>&major=<%=major%>')">  </td>

</tr>
</table>

</body>
</html>