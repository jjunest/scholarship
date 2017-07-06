<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.awt.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@media only screen and (max-width : 799px) {
body{
	zoom:30%
}
#content { width:600px; }
}

@media only screen and (min-width : 800px) and (max-width : 1023px) {
body{
	zoom:60%
}
 #content { width:600px; }
}

@media only screen and (min-width : 1024px}

}

</style>
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
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mMain.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>장학금 목록</b></FONT></td>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mSearch.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=15><b>장학금 검색</b></FONT></td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table align=center width="1500">
<tr>
<td>
	<IMG SRC="/WebContent/images/scholarship.png" width="1500" height="600">
</td>
</tr>
</table>



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
%>



<!-- 데이터 총 개수 구하기 -->
<table bgcolor ="#FFFFFF" ALIGN ="CENTER" width ="1500">
<tr>
<td> <font size = 20>현재 진행중인 장학금 총 목록 : <%=sdao.selectAllBoardNum() %> 개 </font></td>
</tr>
</table>

<%

List<ScholarVO> list = sdao.selectAllBoard(pagenum);
pagenum++;

int num = 0;

for(int i=0; i<list.size(); i++){

	ScholarVO vo = list.get(i);
	num = vo.getRcdno();
	
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




<table bgcolor ="#FFFFFF" ALIGN="CENTER" width="1500">
<tr>
<td>
<table bgcolor ="#FFFFFF" border ="1" ALIGN="CENTER" width="1500" height=450>
<tr>
<%if(d_day<0){%>
     <td width = "300" ALIGN="CENTER">
     <table>
     <tr>
     <td height = "350">
     <img style="display:block;" width=300 height=350 src = "/WebContent/images/dday1.jpg"></td>
     </tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
     <tr align = "center">
     <td align = "center" height=100>
      <FONT COLOR=red FACE="Geneva, Arial" SIZE=10><b> 마감 </b> </FONT></td>
     </tr>
     </table>
     </td>
     
<%}else if(d_day<7 && d_day>=0){%>
     <td width = "300" ALIGN="CENTER">
     <table>
     <tr>
     <td height = "350">
     <img style="display:block;" width=300 height=350 src = "/WebContent/images/dday1.jpg"></td>
     </tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
     <tr align = "center">
     <td align = "center" height=100>
      <FONT COLOR=red FACE="Geneva, Arial" SIZE=10><b> <%=d_day%>일전</b> </FONT></td>
     </tr>
     </table>
     </td>
     
<%}
else if(d_day>=7){%> 
	<td width = "300" ALIGN="CENTER">
	<table>
     <tr>
     <td height = "350">
     <img style="display:block;" width=300 height=350 src = "/WebContent/images/dday1.jpg"></td>
     </tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
	<tr><td> </td></tr>
     <tr align = "center">
     <td align = "center" height=100>
     <FONT COLOR=black FACE="Geneva, Arial" SIZE=10>  <b> <%=d_day%> 일전</b> </FONT></td>
     </tr>
     </table>
     </td>
<%}%>
	
	<td width = "600" height = "450" ALIGN="CENTER">
	<table>
	<tr>
	<td><A HREF ="mContent.jsp?rcdno=<%=vo.getRcdno()%>"><img style="display:block;"  width = "600" height = "350"src ="<%=image%>"></A></td>
	</tr>
	<tr>
	<td align=center width = "600" height = "100" onClick = "javascript:location.replace('mContent.jsp?rcdno=<%=vo.getRcdno()%>')"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>상세보기</FONT></td>
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
<%
}

%>
</td>
</tr>
</table>



<br>
<br>


<br>
<br>
<br>
</body>
</html>