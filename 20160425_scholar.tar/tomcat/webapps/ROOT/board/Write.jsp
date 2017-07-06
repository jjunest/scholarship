<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>장학금 재단 정보 입력 (관리자 페이지)</h2>

<form method = post action = "WritePro.jsp" name = "Write" ENCTYPE="multipart/form-data">
<table>

<tr>
<td>scholarname 입력 (스트링)</td><td><input type = text name = "scholarname"></td>
</tr>

<tr>
<td>foundationname 입력(스트링)</td><td><input type = text name = "foundationname"></td>
</tr>


<!-- 평점 정보 입력 시에는, 선택안함 1/ 2.5이상 2 / 3.0이상 3 순으로 나가야 한다 .  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>지난 학기 평점(4.5 기준)</FONT></td>
<td width = 700>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="1"> 선택안함 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="2"> 2.5 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="3"> 3.0 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="4"> 3.5 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="gpa"  value="5"> 4.0 이상 </FONT>

</td>
</tr>


<!-- 장학 금액 정보 입력시에는, 선택안함 1 / 전액장학금 2 / ~100 3 순으로 나가야 한다.  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>장학 금액</FONT></td>
<td width = 700>

<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="7"> 선택안함 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="8"> 전액장학금 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="3"> ~100 만원 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="4"> 100만원 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="5"> 200만원 이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="scholarmoney"  value="6"> 300만원 이상 </FONT>

</td>
</tr>



<!--  소득 분위정보 입력시에는, 1분위 2/2분위 3/ ... / 8분위 9 / 선택안함 10으로 입력해야한다. -->
<tr height="45">
<td width = 300 align = center><FONT FACE="Geneva, Arial" SIZE=4>현재 소득 분위</FONT></td>
<td width = 700>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="2"> 1분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="3"> 2분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus" value="4"> 3분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="5"> 4분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="6"> 5분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus" value="7"> 6분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="8"> 7분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus"  value="9"> 8분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=4><input type="radio" name="studentstatus" value="10"> 선택안함 </FONT>
</td>
</tr>

<tr>
<td>schoolname 입력(스트링) </td><td><input type = text name ="schoolname"></td>
</tr>

<tr>
<td>major 입력(스트링)</td><td><input type = text name ="major"></td>
</tr>

<tr>
<td>area 입력(스트링)</td><td><input type = text name ="area"></td>
</tr>

<tr>
<td>startday 입력(숫자)(필수입력!! ex) 20150302</td><td><input type = text name ="startday"></td>
</tr>

<tr>
<td>endday 입력(숫자) (필수입력!! ex) 20150506</td><td><input type = text name ="endday"></td>
</tr>

<tr>
<td>imagename 입력(스트링)</td><td><input type = FILE name ="imagename"></td>
</tr>

<tr>
<td>etc 입력(스트링)</td><td><textarea rows="25" cols="125" name="etc"><a href="" target="_blank"> </a></textarea></td>
</tr>


</table>
<input type = "submit" value ="새 장학금 등록 완료">

</form>

</body>


</body>
</html>
