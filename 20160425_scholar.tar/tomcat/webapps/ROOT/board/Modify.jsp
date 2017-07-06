<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.ScholarDAO" %>

<%@ page import = "dto.ScholarVO" %>

<%@ page import = "java.sql.*" %>

<%@ page import = "java.net.URLEncoder"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>




<SCRIPT type="text/javascript">

function CheckForm(form){

		form.submit();

	

}







</SCRIPT>




</head>

<body>




<%

int num = Integer.parseInt(request.getParameter("rcdno"));




	

	ScholarDAO sdao = ScholarDAO.getInstance();

	ScholarVO vo = sdao.selectOneBoard(num);

%>




<FORM NAME="Modify" METHOD=POST ACTION="ModifyPro.jsp?rcdno=<%=num%>" ENCTYPE="multipart/form-data">


<table border = "1" width = 1000 align = center>

<tr>

<td width =200 align = center>게시글 번호(사용금지)</td>

<td><INPUT TYPE=TEXT NAME ="rcdno" SIZE=10 VALUE='<%= vo.getRcdno() %>'></td>

</tr>

<tr>

<td width =200 align = center>장학금 이름(사용금지)</td>

<td><INPUT TYPE=TEXT NAME ="scholarname" SIZE=10 VALUE='<%=vo.getScholarname()%>'></td>

</tr>

<tr>

<td width =200 align = center>장학 재단(사용금지)</td>

<td><INPUT TYPE=TEXT NAME="foundationname" SIZE=10 VALUE='<%= vo.getFoundationname() %>'></td>

</tr>

<tr>

<td width =200 align = center>장학 금액(사용금지)</td>

<td><INPUT TYPE=TEXT NAME="scholarmoney" SIZE=10 VALUE='<%= vo.getScholarmoney() %>'></td>

</tr>

<tr>

<td width =200 align = center>GPA기준(이상)(사용금지)</td>

<td><INPUT TYPE=TEXT NAME="gpa" SIZE=10 VALUE='<%= vo.getGpa() %>'></td>

</tr>

<tr>

<td width =200 align = center>소득 분위 기준(이하)</td>

<td><INPUT TYPE=TEXT NAME="studentstatus" SIZE=10 VALUE='<%= vo.getStudentstatus() %>'></td>

</tr>




<tr>

<td width =200 align = center>대학교 명</td>

<td><INPUT TYPE=TEXT NAME="schoolname" SIZE=10 VALUE='<%= vo.getSchoolname() %>'></td>

</tr>

<tr>

<td width =200 align = center> 전공   </td>

<td><INPUT TYPE=TEXT NAME ="major" SIZE=10 VALUE='<%= vo.getMajor() %>'></td>

</tr>

<tr>

<td width =200 align = center>주민등록상 지역</td>

<td><INPUT TYPE=TEXT NAME="area" SIZE=10 VALUE='<%= vo.getArea() %>'></td>

</tr>

<tr>

<td width =200 align = center>시작 날짜</td>

<td><INPUT TYPE=TEXT NAME ="startday" SIZE=10 VALUE='<%= vo.getStartday() %>'></td>

</tr>

<tr>

<td width =200 align = center>마감 날짜</td>

<td><INPUT TYPE=TEXT NAME ="endday" SIZE=10 VALUE='<%= vo.getEndday() %>'></td>

</tr>

<tr>

<td width =200 align = center>D-Day</td>

<td><INPUT TYPE=TEXT NAME ="dday" SIZE=10 VALUE='<%= vo.getDday() %>'></td>

</tr>

<tr>

<td width =200 align = center>imageName</td>

<td><input type = FILE name ="imagename"></td>

</tr>

<tr>

<td width =200 align = center>기타 </td>

<td><INPUT TYPE=TEXT NAME="etc" SIZE=10 VALUE='<%= vo.getEtc() %>'></td>

</tr>

 

<tr>

<td width =100 align = center><input type = submit> 수정 확인 </td> 

<td width =100 align = center> <A HREF ="Content.jsp?rcdno=<%=num%>"> 수정 취소   </A></td>

</tr>

</table>

</FORM>







</body>

</html>
