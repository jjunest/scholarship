
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���в�</title>

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
		<FONT FACE="Geneva, Arial" SIZE=6><b>���в�</b></FONT>
	</td>
</table>

<table bgcolor=#57575B ALIGN="CENTER" width="1500" height="45">
<tr>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('Main.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���� </FONT></td>
  <td ALIGN="CENTER" style="cursor:pointer" onClick = "javascript:location.replace('MainDday.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> Dday�����κ��� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ������� </FONT></td>
  <td ALIGN="CENTER"style="cursor:pointer" onClick = "javascript:location.replace('Search.jsp')"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���бݰ˻� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ���бݱ�� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> �������� </FONT></td>
  <td ALIGN="CENTER"><FONT COLOR=WHITE FACE="Geneva, Arial" SIZE=4> ������ </FONT></td>
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
<!-- �л��� ���� �˻��ÿ��� , 2.5���� 2 3.0���� 3....4.0���� 5/ ������� 6���� �� �� , �� ������ ���б��� �˻��ؾ� �Ѵ�. -->
<FORM NAME ="Search" METHOD = POST ACTION = "SearchPro.jsp">
<table bgcolor=#E6E6E6 border=1 width =1400 cellpadding=30 align = center>
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>���� �б� ����(4.5 ����)</b></FONT></td>
<td width = 700>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa" checked="checked" value="6"> ���þ��� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="2"> 2.5 �̻� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="3"> 3.0 �̻� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="4"> 3.5 �̻� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="gpa"  value="5"> 4.0 �̻�</FONT>

</td>
</tr>

<!-- �л��� ���бݾ� �˻��ÿ��� ���þ��� 1/ ���� 2/ ~100 3 / 100~200 4 / ������ ������ �Ѵ�. �� �� �� �̻��� ���б��� �˻��ؾ� �Ѵ�.-->
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>���� �ݾ�</b></FONT></td>
<td width = 700>

<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney" checked="checked" value="1"> ���þ��� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="2"> �������б� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="3"> ~100���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="4"> 100 �����̻� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="5"> 200 �����̻� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="scholarmoney"  value="6"> 300 �����̻� </FONT>

</td>
</tr>

<!-- �л��� �ҵ���� �˻� �ÿ��� ���� ���� 1/ 1���� 2/ 2���� 3 ������ �˻� �� , �� �̻��� ������ �˻��ؾ� �Ѵ�.  -->
<tr height="45">
<td width = 300 align = center><FONT FACE="KoreanTJM" SIZE=6><b>���� �ҵ� ����</b></FONT></td>
<td width = 700>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" checked="checked" value="1"> ���þ��� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="2"> 1����</FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="3"> 2���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" value="4"> 3���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="5"> 4���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="6"> 5���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus" value="7"> 6���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="8"> 7���� </FONT>
<FONT FACE="KoreanTJM" SIZE=5><input type="radio" class="big" name="studentstatus"  value="9"> 8���� </FONT>

</td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>�������</b></FONT> </td>
<td width = 700 > <input type = "text" name = "area"> </td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>�б��̸�</b></FONT> </td>
<td width = 700 > <input type = "text" name = "schoolname"> </td>
</tr>

<tr height="45">
<td width = 300 align = center> <FONT FACE="KoreanTJM" SIZE=6><b>����</b></FONT></td>
<td width = 700 > <input type = "text" name = "major"><button onclick="javascript:CheckForm(Search)">���� ���ǿ� �´� ���б� ã��</button></td>
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