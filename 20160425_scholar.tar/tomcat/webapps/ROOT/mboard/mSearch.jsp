<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<SCRIPT type = "text/javascript">
function CheckForm(form){
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
}

@media only screen and (min-width : 800px) and (max-width : 1023px) {
body{
	zoom:63%
}
#content { width:800px; }
}

@media only screen and (min-width : 1024px} {

}
.big{ width: 3em; height: 3em; }
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장학꿈</title>

</head>
<body bgcolor=#F2F2F2>
<table align=center width=1500>
<tr>
<td>
<table ALIGN="CENTER" width=1500 height=150>
	<tr>
	<td width=100  height=100 align=CENTER>
		<IMG SRC="../images/jang.png" height=150>
	</td>

	<td width=1400 align=left>
		<FONT FACE="Geneva, Arial" SIZE=8><b>장학꿈</b></FONT>
	</td>
	</tr>
</table>
</td>
</tr>

<tr>
<td>
<table bgcolor=#575656 ALIGN="CENTER" width=1500 height="100" border=1>
<tr>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('mMain.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=7><b>메인</b></FONT></td>
  <td ALIGN="CENTER"style="cursor:pointer" onClick = "javascript:location.replace('mSearch.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=7><b>장학금검색</b></FONT></td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table bgcolor=#d1bac2 ALIGN="CENTER" width=1500 height=300 align = center>
	<tr>
	<td align=center>
		<FONT FACE="Geneva, Arial" SIZE=8><b> 나의 장학꿈 검색 </b></FONT>
	</td>
	</tr>
</table>
</td>
</tr>

<tr>
<td>


<!-- 학생이 성적 검색시에는 , 2.5학점 2 3.0학점 3....4.0학점 5/ 상관없음 6으로 한 후 , 그 이하의 장학금을 검색해야 한다. -->
<form name = "SearchBoard" method = "post" action = "mSearchPro.jsp">
<table bgcolor=#F2F2F2 border=1 width =1500 cellpadding=20 align = center>
<tr>
<td align = center bgcolor = #BDBDBD height = 80><FONT FACE="Geneva, Arial" SIZE=8><b>직전 학기 평점</b></FONT></td>
</tr>

<tr>
<td bgcolor=#FFFFFF height = 100>
<FONT FACE="Geneva, Arial" SIZE=8><input name = "gpa" class="big" type="radio" value="6" checked="checked"> 선택안함</FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input name = "gpa" class="big" type="radio" value="2"><label for="radio2"> 2.5 이상 </label></FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input name = "gpa" class="big" type="radio" value="3"><label for="radio3"> 3.0 이상 </label></FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input name = "gpa" class="big" type="radio" value="4"><label for="radio4"> 3.5 이상 </label></FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input name = "gpa" class="big" type="radio" value="5"><label for="radio5"> 4.0 이상 </label></FONT>
</td>
</tr>

<!-- 학생이 장학금액 검색시에는 선택없음 1/ 전액 2/ ~100 3 / 100~200 4 / 순으로 나가야 한다. 그 후 그 이상의 장학금을 검색해야 한다.-->
<tr>
<td align = center bgcolor = #BDBDBD><FONT FACE="Geneva, Arial" SIZE=8><b>지원 장학 금액</b></FONT></td>
</tr>
<tr  bgcolor=#FFFFFF height = 200>
<td>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" checked="checked" value="1"> 선택안함 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" value="2"> 전액장학금 </FONT><br>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" value="3"> ~100만원 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" value="4"> 100만원이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" value="5"> 200만원이상 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="scholarmoney" value="6"> 300 만원이상 </FONT>
</td>
</tr>

<!-- 학생이 소득분위 검색 시에는 선택 없음 1/ 1분위 2/ 2분위 3 순으로 검색 후 , 그 이상의 조건을 검색해야 한다.  -->
<tr>
<td align = center  bgcolor = #BDBDBD ><FONT FACE="Geneva, Arial" SIZE=8><b>가계 소득 분위</b></FONT></td>

</tr>
<tr>
<td bgcolor = #FFFFFF height=200>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="2"> 1분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="3"> 2분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="4"> 3분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="5"> 4분위 </FONT><br>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="6"> 5분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="7"> 6분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="8"> 7분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" value="9"> 8분위 </FONT>
<FONT FACE="Geneva, Arial" SIZE=8><input type="radio" class="big" name="studentstatus" checked="checked" value="1"> 선택안함 </FONT>
</td>
</tr>

<tr>
<td align = center bgcolor = #BDBDBD><FONT FACE="Geneva, Arial" SIZE=8><b>주민등록상 주소</b></FONT></td>
</tr>

<tr>
<td align = center bgcolor = #FFFFFF><input type = "text" size = "62" style="height:80px; font-size:30pt;" name = "area"> </td>
</tr>

<tr>
<td align = center bgcolor = #BDBDBD><FONT FACE="Geneva, Arial" SIZE=8><b>학교 이름 (ex)"한동대","서울대"로 검색하세요)</b></FONT></td>
</tr>

<tr> 
<td align = center bgcolor = #FFFFFF><input type = "text" size = "62" style="height:80px; font-size:30pt;" name = "schoolname"> </td>
</tr>

<tr>
<td align = center bgcolor = #BDBDBD><FONT FACE="Geneva, Arial" SIZE=8><b>전공을 입력하세요. ex)"컴퓨터공학""경영학"</b></FONT></td>
</tr>

<tr>
<td align = center bgcolor = #FFFFFF><input type = "text" size = "62" style="height:80px; font-size:30pt;" name = "major"></td>
</tr>
</table>
</form>

</td>
</tr>
</table>


<br>
<br>

<table bgcolor=#F2F2F2 border=1 width =500 height=100 align = center>
<tr>
<td  bgcolor = #BDBDBD  align=center onClick = "javascript:CheckForm(SearchBoard)"><FONT FACE="Geneva, Arial" SIZE=8>검색</FONT></td>
</tr>
</table>
<br>
<br>
<br>
</body>
</html>