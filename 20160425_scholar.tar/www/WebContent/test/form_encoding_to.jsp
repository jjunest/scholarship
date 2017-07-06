<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
System.out.println(request.getCharacterEncoding());


String request1 = request.getParameter("sc_word");
out.println("입력받은 값: "+request1);%>
encoding_to.jsp
<form name = "searchForm" class = "searchForm" method = "post" action = "form_encoding_to_to.jsp">
			<input type = "hidden" name = "sc_area" value = "A">
			<input type = "text" name = "sc_word" class = "keyword">
			<button  class = "button_3 searchButton">검색</button>		
		</form>	
		
		
</body>
</html>