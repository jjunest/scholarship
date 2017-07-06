<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.lang.*"%>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.util.List" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���в�</title>
<style>
	body{
		background-image: url(/WebContent/images/background5.jpg);           
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
		<IMG SRC="/WebContent/images/jang.png" height=70 align=right>
	</td>

	<td width=1400 align=left>
		<FONT FACE="Geneva, Arial" SIZE=6><b>���в�</b></FONT>
	</td>

	</tr>
</table>

<table bgcolor=#57575B ALIGN="CENTER" width="1500" height="45">
<tr>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Main.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���ͼҰ� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ������� </FONT></td>
  <td ALIGN="CENTER"style="cursor:pointer" onClick = "javascript:location.replace('Search.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���бݰ˻� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���бݱ�� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> �������� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ������ </FONT></td>
</tr>
</table>

<%
float gpa;
int scholarmoney;
int studentstatus;
String area;
String schoolname;
String major;

//���࿡ gpa �� ������ 5�� �ְ� studentStatus �� ������ 10�� �ְ�, dday�� ������ 100�� �ش� (���߿� �� �ؿ� �ִ� ���� �������� ���� ����)

request.setCharacterEncoding("EUC-KR");
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
	realFolder = "/WebContent/upload_files";
	String image = realFolder + "/" + vo.getImagename();
	
	//gpa ��ȯ// 1�̸� ���þ��� / 2�̸� 2.5�̻� /3�̸� 3.0�̻� /4�̸� 3.5�̻� /5�̸� 4.0�̻� 
	String gpascreen="";
	String scholarmoneyscreen="";
	String studentstatusscreen="";
	
	if(vo.getGpa()==1){
		
		gpascreen = "���� ����";
	}else if(vo.getGpa()==2){
		gpascreen = "2.5 �̻�";
	}else if(vo.getGpa()==3){
		gpascreen = "3.0 �̻�";
	}else if(vo.getGpa()==4){
		gpascreen = "3.5 �̻�";
	}else if(vo.getGpa()==5){
		gpascreen = "4.0�̻�";
	}
	
	
	//scholarmoney ��ȯ //3�̸� ~100���� / 4�̸� 100~200���� / 5�̸� 200~300���� / 6�̸� 300�̻� / 
	
	
	if(vo.getScholarmoney()==3){
		scholarmoneyscreen = "100���� ����";
		
	}else if (vo.getScholarmoney()==4){
		scholarmoneyscreen = "100~200����";
	}else if (vo.getScholarmoney()==5){
		scholarmoneyscreen = "200~300����";
	}
	else if (vo.getScholarmoney()==6){
		scholarmoneyscreen = "300���� �̻�";
	}
	else if (vo.getScholarmoney()==7){
		scholarmoneyscreen = "��Ÿ";
	}
	else if (vo.getScholarmoney()==8){
		scholarmoneyscreen = "���� ���б�";
	}
	
	//student status ��ȯ
	
	if(vo.getStudentstatus()==2){
		studentstatusscreen = "1���� ����";
	}else if (vo.getStudentstatus()==3){
		studentstatusscreen = "2���� ����";
	}else if (vo.getStudentstatus()==4){
		studentstatusscreen = "3���� ����";
	}else if (vo.getStudentstatus()==5){
		studentstatusscreen = "4���� ����";
	}
	else if (vo.getStudentstatus()==6){
		studentstatusscreen = "5���� ����";
	}
	else if (vo.getStudentstatus()==7){
		studentstatusscreen = "6���� ����";
	}
	else if (vo.getStudentstatus()==8){
		studentstatusscreen = "7���� ����";
	}
	else if (vo.getStudentstatus()==9){
		studentstatusscreen = "8���� ����";
	}
	else if (vo.getStudentstatus()==10){
		studentstatusscreen = "���� ����";
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



<table bgcolor ="#F0F0F0" ALIGN="CENTER" width="1500" height="450">
<tr>
<td>
<table bgcolor ="#E6E6E6" border ="1" ALIGN="CENTER" width="1400" height="300">
<tr>
<%if(d_day<0){%>
     <td width = "200" ALIGN="CENTER"><FONT COLOR=red FACE="Geneva, Arial" SIZE=10>
     <table>
     <tr>
     <td height = "150">
     <img style="display:block;" width="100%" height="100%" src = "/WebContent/images/dday1.jpg"></td>
     </tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr align = "center">
     <td align = "center">
      <b> ���� </b> </FONT></td>
     </tr>
     </table>
     
<%} else if(d_day<7 && d_day>=0){%>
     <td width = "200" ALIGN="CENTER"><FONT COLOR=red FACE="Geneva, Arial" SIZE=10>
     <table>
     <tr>
     <td height = "150">
     <img style="display:block;" width="100%" height="100%" src = "/WebContent/images/dday1.jpg"></td>
     </tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr align = "center">
     <td align = "center">
      <b> <%=d_day%></b> </FONT></td>
     </tr>
     </table>
     
<%}
else if(d_day>=7){%> 
	<td width = "200" ALIGN="CENTER">
	<table>
     <tr>
     <td height = "150">
     <img style="display:block;" width="100%" height="100%" src = "/WebContent/images/dday1.jpg"></td>
     </tr>
    <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr><td> </td></tr>
     <tr align = "center" >
     <td align = "center">
      <b> <FONT COLOR=black FACE="Geneva, Arial" SIZE=10> <%=d_day%></FONT></b></td>
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
			<td width = "600" ALIGN="left"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>&nbsp <b>���� �ݾ� : <%=scholarmoneyscreen %><br></b> </FONT></td>
		</tr>
		<tr>
	 		<td width = "600" ALIGN="left"><FONT COLOR=BLACK FACE="Geneva, Arial" SIZE=10>&nbsp <b>���� �б� ���� <%= gpascreen %> �̻� </b></FONT></td>
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



</body>
</html>