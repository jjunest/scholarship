<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type ="text/css">
div.wrapper {
border : 10px solid #005DBC;
width : 90%;
height : 2000px;
padding : 10px;
align : center;
font-family : Arial, Vendana, sans-serif;
background-color : #fdf5e6;
margin : 10px auto 10px auto;
}

div.wrapper div {
background-color : #00FF40;
margin : 10px auto 10px auto;

}

td{
background-color : #F4FA58;

margin : 10px auto 10px auto;
padding : 10px 0px;
}

</style>


<title>Insert title here</title>
</head>
<body>
<jsp:include page="manager_Header.jsp"></jsp:include>

<div class ="wrapper">

<div><h2>장학금 재단 정보 입력 (관리자 페이지)</h2></div>


<form method = post action = "manager_ScholarInfo_Write_C.jsp" name = "Write" ENCTYPE="multipart/form-data">
<table name = "infotable" >
<tr></tr>
<tr>
<td >scholarname 입력 (스트링)-------</td><td><input type = text size = 120 placeholder = "장학금 이름 입력하세요" name = "scholarname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>foundationname 입력(스트링)-------</td><td><input type = text  size = 120 placeholder = "장학 재단 명을 입력하세요" name = "foundationname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>scholarmoney 입력(스트링)------</td><td><input type = text size = 120 placeholder = "장학 금액을 입력하세요" name = "scholarmoney"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>gpa 입력(스트링)------</td><td><input type = text size = 120 placeholder = "학점 기준을 입력하세요" name = "gpa"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>studentstatus 입력(스트링)------</td><td><input type = text size = 120 placeholder = "소득 분위 기준을 입력하세요" name = "studentstatus"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>schoolname 입력(스트링)------ </td><td><input type = text size = 120 placeholder = "장학금 대상 학교를 입력하세요" name ="schoolname"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>major 입력(스트링)------------</td><td><input type = text size = 120 placeholder = "전공을 입력하세요 " name ="major"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>area 입력(스트링)------------</td><td><input type = text size = 120 placeholder = "장학금 지역을 입력하세요" name ="area"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>startday 입력(20120405 혹은 글자도 가능)</td><td><input type = text size = 120 placeholder = "시작날자를 입력하세요(20150503 또는 문자 가능)" name = "startday"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>endday 입력(20120405 혹은 문자도 가능)</td><td><input type = text size = 120 placeholder = "마감날자를 입력하세요(20150503 또는 문자 가능)" name = "endday"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>url (해당 정보를 얻어온 곳)------ </td><td><input type = text size = 120 placeholder = "해당 정보를 얻어온 url을 입력하세요 " name = "url"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>link 입력(정보가 있는 곳)------</td><td><input type = text size = 120 placeholder = "장학 재단의 link를 입력하세요 " name ="link"></td>
</tr>
<tr><td> ===================================</td></tr>
<tr>
<td>첨부파일 추가 1------</td><td><input type = FILE size = 120 name ="file"></td>
</tr>
<tr>

<tr><td> ===================================</td></tr>

<tr>
<td>etc 입력(스트링)</td><td><textarea rows="70" cols="125" name="etc"></textarea></td>
</tr>
<tr><td> ===================================</td></tr>

</table>
<input type = "submit" value ="새 장학금 등록 완료">

</form>

</div>


</body>
</html>