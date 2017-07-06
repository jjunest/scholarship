<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.awt.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<SCRIPT type="text/javascript">

function Submit(form){
	form.submit();
}
</SCRIPT>

<head>


<style>

@media only screen and (max-width : 799px) {
	body{
		zoom:30%
	}
	#content { width:600px; }
	#title:after{content : "SHPSDFDSF";}
}

@media only screen and (min-width : 800px) and (max-width : 1023px) {
  #content { width:600px; }
}

@media only screen and (min-width : 1024px}

}

table.type04 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
  margin : 20px 10px;
 
}
table.type04 th {
	width: 100px;
	padding: 10px;
	font-size: 15px;
	font-weight: bold;
	vertical-align: center;
	color: crimson;
	border-bottom: 1px solid #ccc;
}


table.type04 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장학꿈</title>
</head>
<body>

<table ALIGN="CENTER" width=1500>
	<tr>
	<td width=100>
		<IMG SRC="../images/jang.png" height=70 align=right>
	</td>

	<td width=600 align=left>
		<FONT FACE="Geneva, Arial" SIZE=6><b>통합장학금센터</b></FONT>
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

<table align=center width="1500">
<tr>
<td>
	<IMG SRC="../images/scholarship.png" width="1500" height=500>
</td>
</tr>
</table>
<br>

<%

%>


<%
int pagenum = 1;

if(request.getParameter("pagenum")==null){
	pagenum =1;
}else{
	pagenum = Integer.parseInt(request.getParameter("pagenum"));
}


ScholarDAO sdao = ScholarDAO.getInstance();

List<ScholarVO> list = sdao.selectAllBoard(pagenum);
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


<table bgcolor ="#FFFFFF" ALIGN="CENTER" width="1500">
<tr>
<td>
<table bgcolor ="#FFFFFF" border ="1" ALIGN="CENTER" width="1500" height=450>
<tr>

<!-- 디데이가 7일 이하이면, 빨간색으로 출력하게 하자! -->
<%if(vo.getDday()<7){%>
     <td width = "300" ALIGN="CENTER">
     <table>
     <tr>
     <td height = "350">
     <img style="display:block;" width=300 height=350 src = "../images/dday1.jpg"></td>
     </tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
     <tr align = "center">
     <td align = "center" height=100>
      <FONT COLOR=red FACE="Geneva, Arial" SIZE=10><b> <%=vo.getDday() %></b> </FONT></td>
     </tr>
     </table>
     </td>
     
<%}
else{%> 
	<td width = "300" ALIGN="CENTER">
	<table>
     <tr>
     <td height = "350">
     <img style="display:block;" width=300 height=350 src = "../images/dday1.jpg"></td>
     </tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
     <tr align = "center">
     <td align = "center" height=100>
     <FONT COLOR=black FACE="Geneva, Arial" SIZE=10>  <b> <%=vo.getDday() %></b> </FONT></td>
     </tr>
     </table>
     </td>
<%}%>
	
	<td width = "600" height = "450" ALIGN="CENTER">
	<table>
	<tr>
	<td><A HREF ="Content.jsp?rcdno=<%=vo.getRcdno()%>"><img style="display:block;"  width = "600" height = "350"src ="<%=image%>"></A></td>
	</tr>
	<tr>
	<td align=center width = "600" height = "100" onClick = "javascript:location.replace('Content.jsp?rcdno=<%=vo.getRcdno()%>')"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>상세보기</FONT></td>
	</tr>
	</table>
	</td>
	
	<td width = "800" style="color:black"  align = "center">
	<table>
		<tr>
			<td ALIGN="CENTER"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10><b><h2><%=vo.getScholarname() %></h2></b> </FONT></td>
		</tr>
		<tr>
			<td ALIGN="CENTER"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=7><b>지원 금액 <%=scholarmoneyscreen %></b> </FONT></td>
		</tr>
		<tr>
	 		<td ALIGN="CENTER"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=7><b>직전 학기 평점</b></FONT></td>
		</tr>
		<tr>
	 		<td ALIGN="CENTER"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=7><b><%= gpascreen %> 이상 </b></FONT></td>
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
<%
}

%>

<table bgcolor ="#F0F0F0" ALIGN="CENTER" width="1000" height="100" border=1>
<tr>
<td align = center onClick = "javascript:location.replace('Write.jsp')"><FONT FACE="Geneva, Arial" SIZE=8>글쓰기</FONT></td>
<td align = center onClick = "javascript:location.replace('Main.jsp?pagenum=<%=pagenum%>')"><FONT FACE="Geneva, Arial" SIZE=8>결과더보기</FONT></td>

</tr>
</table>

</body>
</html>