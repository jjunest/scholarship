<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>장학꿈</title>
<%String addressContent="..";%>
<link rel="stylesheet" type="text/css" href="<%=addressContent%>/css/content.css">
</head>

<jsp:include page="manager_Header.jsp"></jsp:include>
<body>
<%
String rcdno = request.getParameter("rcdno");


ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateScholarInfoView(rcdno);
ScholarVO detailSVO = sdao.selectDetailInfo(rcdno);

%>

<div class ="wrapper">

<div><h2>장학금 정보 수정 (관리자 페이지)</h2></div>


<form method = post action = "manager_mConetnt_detailInfo_Modify_C.jsp?rcdno=<%=rcdno %>" name = "Write" ENCTYPE="multipart/form-data">
<table name = "infotable" >
<tr></tr>
<tr>
<td >scholarname 입력 (스트링)-------</td><td><input type = text size = 120 placeholder = "장학금 이름 입력하세요" value = '<%=detailSVO.getScholarname() %>' name = "scholarname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>foundationname 입력(스트링)-------</td><td><input type = text  size = 120 placeholder = "장학 재단 명을 입력하세요" value = '<%=detailSVO.getFoundationname() %>' name = "foundationname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>scholarmoney 입력(스트링)------</td><td><input type = text size = 120 placeholder = "장학 금액을 입력하세요" value = '<%=detailSVO.getScholarmoney() %>' name = "scholarmoney"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>gpa 입력(스트링)------</td><td><input type = text size = 120 placeholder = "학점 기준을 입력하세요" value = '<%=detailSVO.getGpa() %>' name = "gpa"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>studentstatus 입력(스트링)------</td><td><input type = text size = 120 placeholder = "소득 분위 기준을 입력하세요" value = '<%=detailSVO.getStudentstatus() %>' name = "studentstatus"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>schoolname 입력(스트링)------ </td><td><input type = text size = 120 placeholder = "장학금 대상 학교를 입력하세요" value = '<%=detailSVO.getSchoolname() %>' name ="schoolname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>major 입력(스트링)------------</td><td><input type = text size = 120 placeholder = "전공을 입력하세요 " value = '<%=detailSVO.getMajor() %>' name ="major"></td>
</tr>
<%System.out.println("-------Modyfy 부분 MAJOR " + detailSVO.getMajor()); %>
<tr><td> ===================================</td></tr>
<tr>
<td>area 입력(스트링)------------</td><td><input type = text size = 120 placeholder = "장학금 지역을 입력하세요" value = '<%=detailSVO.getMajor() %>' name ="area"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>startday 입력(20120405 혹은 글자도 가능)</td><td><input type = text size = 120 placeholder = "시작날자를 입력하세요(20150503 또는 문자 가능)" value = '<%=detailSVO.getStartday() %>'  name = "startday"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>endday 입력(20120405 혹은 문자도 가능)</td><td><input type = text size = 120 placeholder = "마감날자를 입력하세요(20150503 또는 문자 가능)" value = '<%=detailSVO.getEndday() %>' name = "endday"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>url (해당 정보를 얻어온 곳)------ </td><td><input type = text size = 120 placeholder = "해당 정보를 얻어온 url을 입력하세요 " value = '<%=detailSVO.getUrl() %>' name = "url"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>link 입력(정보가 있는 곳)------</td><td><input type = text size = 120 placeholder = "장학 재단의 link를 입력하세요 " value = '<%=detailSVO.getLink() %>' name ="link"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>현재 첨부파일 이름 </td><td><%if(detailSVO.getFilename()==""){%>첨부파일 없음<%}else{%><%=detailSVO.getFilename()%><% }%></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>새 첨부파일 이름------</td><td><input type = text size = 120 placeholder = "장학 재단의 link를 입력하세요 " value = '<%=detailSVO.getFilename() %>' name ="filename"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>첨부파일 url ------</td><td><input type = text size = 120 placeholder = "장학 재단의 link를 입력하세요 " value = '<%=detailSVO.getFileurl() %>'  name ="fileurl"></td>
</tr>
<tr><td> ===================================</td></tr>

<tr>
<tr><td> ===================================</td></tr>

<tr>
<td>etc 입력(스트링)</td><td><textarea rows="70" cols="125" name="etc"><%=detailSVO.getEtc()%> </textarea></td>
</tr>
<tr><td> ===================================</td></tr>

</table>
<input type = "submit" value ="장학금 정보 수정 완료 ">

</form>

</div>


</body>
</html>