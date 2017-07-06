
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>장학꿈</title>

<SCRIPT TYPE="text/javascript">
function CheckForm(form){
	
	form.submit();
	
}
</script>

<style>

body{
	background-image: url(../images/background5.jpg);           
	background-size: 100%;
	background-origin: content;
	background-repeat: repeat;
}
.big{ width: 3em; height: 3em; }
</style>
</head>
<body bgcolor=#5C844A>

<table ALIGN="CENTER" width=1500>
	<tr>
	<td width=100>
		<IMG SRC="/WebContent/images/jang.png" height=70 align=right>
	</td>

	<td width=1400 align=left>
		<FONT FACE="Geneva, Arial" SIZE=6><b>장학꿈</b></FONT>
	</td>
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

<table bgcolor=#E6E6E6 align=center width=1500 cellpadding=50>
<tr>
<td>

<table bgcolor=#E6E6E6 width=1400 align=center border=1>
<tr>
<td width=600 height=400 align=center>
	<IMG SRC="/WebContent/images/scholarship_banner.jpg" width=1400 height=600>
</td>
</tr>

<tr>
<td>
<!-- 학생이 성적 검색시에는 , 2.5학점 2 3.0학점 3....4.0학점 5/ 상관없음 6으로 한 후 , 그 이하의 장학금을 검색해야 한다. -->
<FORM NAME ="Search" METHOD = POST ACTION = "SearchPro.jsp">
<table bgcolor=#E6E6E6 border=1 width =1400 cellpadding=30 align = center>
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>지난 학기 평점(4.5 기준)</b></FONT></td>
<td width = 700>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa" checked="checked" value="6"> 선택안함 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="2"> 2.5 이상 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="3"> 3.0 이상 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="4"> 3.5 이상 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="5"> 4.0 이상</FONT>

</td>
</tr>

<!-- 학생이 장학금액 검색시에는 선택없음 1/ 전액 2/ ~100 3 / 100~200 4 / 순으로 나가야 한다. 그 후 그 이상의 장학금을 검색해야 한다.-->
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>장학 금액</b></FONT></td>
<td width = 700>

<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney" checked="checked" value="1"> 선택안함 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="2"> 전액장학금 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="3"> ~100만원 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="4"> 100 만원이상 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="5"> 200 만원이상 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="6"> 300 만원이상 </FONT>

</td>
</tr>

<!-- 학생이 소득분위 검색 시에는 선택 없음 1/ 1분위 2/ 2분위 3 순으로 검색 후 , 그 이상의 조건을 검색해야 한다.  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>현재 소득 분위</b></FONT></td>
<td width = 700>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" checked="checked" value="1"> 선택안함 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="2"> 1분위</FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="3"> 2분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" value="4"> 3분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="5"> 4분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="6"> 5분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" value="7"> 6분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="8"> 7분위 </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="9"> 8분위 </FONT>

</td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>출신지역</b></FONT> </td>
<td width = 700 > <input type = "text" name = "area"> </td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>학교이름</b></FONT> </td>
<td width = 700 > <input type = "text" name = "schoolname"> </td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>전공</b></FONT></td>
<td width = 700 > <input type = "text" name = "major"><button onclick="javascript:CheckForm(Search)">나의 조건에 맞는 장학금 찾기</button></td>
</tr>
</table>

</FORM>
</td>
</tr>
</table>
</td>
</tr>
</table>

<br>
<br>
<br>
<br>

</body>
</html>