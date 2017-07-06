<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.ScholarDAO" %>

<%@ page import = "dto.ScholarVO" %>

<%@ page import = "java.sql.*" %>

<%@ page import = "java.net.URLEncoder"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장학꿈</title>




<SCRIPT type="text/javascript">

function CheckForm(form){

		form.submit();

	

}







</SCRIPT>




</head>

<body>

out.println("테스트중");


<%

int num = Integer.parseInt(request.getParameter("rcdno"));




	

	ScholarDAO sdao = ScholarDAO.getInstance();

	ScholarVO vo = sdao.selectOneBoard(num);

%>



<!-- 장학 금액 정보 입력시에는, 선택안함 1 / 전액장학금 2 / ~100 3 순으로 나가야 한다.  -->



<!--  소득 분위정보 입력시에는, 1분위 2/2분위 3/ ... / 8분위 9 / 선택안함 10으로 입력해야한다. -->



<FORM NAME="Modify" METHOD=POST ACTION="ModifyPro.jsp?rcdno=<%=num%>" ENCTYPE="multipart/form-data">


<table border = "1" width = 1000 align = center>


<form method = post action = "WritePro.jsp" name = "Write" ENCTYPE="multipart/form-data">
<table>

<tr>

<td width =200 align = center>게시글 번호(사용금지)</td>

<td><%= vo.getRcdno() %></td>

</tr>

<tr>
<td>scholarname 입력 (스트링)</td><td><input type = text name = "scholarname" value =<%=vo.getScholarname() %>></td>
</tr>

<tr>
<td>foundationname 입력(스트링)</td><td><input type = text name = "foundationname" value = <%=vo.getFoundationname() %>></td>
</tr>


<!-- 평점 정보 입력 시에는, 선택안함 1/ 2.5이상 2 / 3.0이상 3 순으로 나가야 한다 .  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>지난 학기 평점(4.5 기준)</FONT></td>
<td width = 700>
<%
//기존의 정보에서 라디오 버튼을 체크하기 위해서
String checkgpa1="unchecked";
String checkgpa2="unchecked";
String checkgpa3="unchecked";
String checkgpa4="unchecked";
String checkgpa5="unchecked";

if(vo.getGpa()==1){checkgpa1="checked";}
if(vo.getGpa()==2){checkgpa2="checked";}
if(vo.getGpa()==3){checkgpa3="checked";}
if(vo.getGpa()==4){checkgpa4="checked";}
if(vo.getGpa()==5){checkgpa5="checked";}

 %>

<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="1" checked = <%=checkgpa1%>> 선택안함 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="2" checked = <%=checkgpa2%>> 2.5 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="3" checked = <%=checkgpa3%>> 3.0 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="4" checked = <%=checkgpa4%>> 3.5 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="5" checked = <%=checkgpa5%>> 4.0 이상 </FONT>

</td>
</tr>


<!-- 장학 금액 정보 입력시에는, 선택안함 1 / 전액장학금 2 / ~100 3 순으로 나가야 한다.  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>장학 금액</FONT></td>
<td width = 700>

<%
//기존의 정보에서 라디오 버튼을 체크하기 위해서
String checkscholarmoney3="unchecked";
String checkscholarmoney4="unchecked";
String checkscholarmoney5="unchecked";
String checkscholarmoney6="unchecked";
String checkscholarmoney7="unchecked";
String checkscholarmoney8="unchecked";

if(vo.getScholarmoney()==3){checkscholarmoney3="checked";}
if(vo.getScholarmoney()==4){checkscholarmoney4="checked";}
if(vo.getScholarmoney()==5){checkscholarmoney5="checked";}
if(vo.getScholarmoney()==6){checkscholarmoney6="checked";}
if(vo.getScholarmoney()==7){checkscholarmoney7="checked";}
if(vo.getScholarmoney()==8){checkscholarmoney8="checked";}


 %>


<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="7" checked = <%=checkscholarmoney7 %>> 선택안함 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="8" checked = <%=checkscholarmoney8 %>> 전액장학금 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="3" checked = <%=checkscholarmoney3 %>> ~100 만원 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="4" checked = <%=checkscholarmoney4 %>> 100만원 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="5" checked = <%=checkscholarmoney5 %>> 200만원 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="6" checked = <%=checkscholarmoney6 %>> 300만원 이상 </FONT>

</td>
</tr>



<!--  소득 분위정보 입력시에는, 1분위 2/2분위 3/ ... / 8분위 9 / 선택안함 10으로 입력해야한다. -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>현재 소득 분위</FONT></td>
<td width = 700>
<%
//기존의 정보에서 라디오 버튼을 체크하기 위해서
String checkstudentstatus2="unchecked";
String checkstudentstatus3="unchecked";
String checkstudentstatus4="unchecked";
String checkstudentstatus5="unchecked";
String checkstudentstatus6="unchecked";
String checkstudentstatus7="unchecked";
String checkstudentstatus8="unchecked";
String checkstudentstatus9="unchecked";
String checkstudentstatus10="unchecked";


if(vo.getStudentstatus()==2){checkstudentstatus2="checked";}
if(vo.getStudentstatus()==3){checkstudentstatus3="checked";}
if(vo.getStudentstatus()==4){checkstudentstatus4="checked";}
if(vo.getStudentstatus()==5){checkstudentstatus5="checked";}
if(vo.getStudentstatus()==6){checkstudentstatus6="checked";}
if(vo.getStudentstatus()==7){checkstudentstatus7="checked";}
if(vo.getStudentstatus()==8){checkstudentstatus8="checked";}
if(vo.getStudentstatus()==9){checkstudentstatus9="checked";}
if(vo.getStudentstatus()==10){checkstudentstatus10="checked";}

%>


<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="2" checked =<%=checkstudentstatus2 %>> 1분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="3" checked =<%=checkstudentstatus2 %>> 2분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="4" checked =<%=checkstudentstatus2 %>> 3분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="5" checked =<%=checkstudentstatus2 %>> 4분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="6" checked =<%=checkstudentstatus2 %>> 5분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="7" checked =<%=checkstudentstatus2 %>> 6분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="8" checked =<%=checkstudentstatus2 %>> 7분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="9" checked =<%=checkstudentstatus2 %>> 8분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="10" checked =<%=checkstudentstatus2 %>> 선택안함 </FONT>
</td>
</tr>

<tr>
<td>schoolname 입력(스트링) </td><td><input type = text size = 100 name ="schoolname" value = <%=vo.getSchoolname() %>></td>
</tr>

<tr>
<td>major 입력(스트링)</td><td><input type = text name ="major" value = <%=vo.getMajor() %>></td>
</tr>

<tr>
<td>area 입력(스트링)</td><td><input type = text name ="area" value = <%=vo.getArea()%>></td>
</tr>

<tr>
<td>startday 입력(숫자)(필수입력!! ex) 20150302</td><td><input type = text name ="startday" value = <%=vo.getStartday() %>></td>
</tr>

<tr>
<td>endday 입력(숫자) (필수입력!! ex) 20150506</td><td><input type = text name ="endday" value = <%=vo.getEndday() %>></td>
</tr>

<tr>
<td>imagename 입력(스트링)</td><td><input type = FILE name ="imagename" ></td>
</tr>

<tr>
<td>etc 입력(스트링)</td><td><textarea rows="25" cols="125" name="etc" value = <%=vo.getEtc() %> ></textarea></td>
</tr>

<tr>

<td width =100 align = center><input type = submit> 수정 확인 </td> 

<td width =100 align = center> <A HREF ="Content.jsp?rcdno=<%=num%>"> 수정 취소   </A></td>

</tr>
</table>
</form>


 



</table>

</FORM>







</body>

</html>
