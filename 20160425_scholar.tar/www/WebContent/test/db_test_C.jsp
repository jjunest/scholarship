<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "test.db_test" %> 
  <%@ page import = "dto.ScholarVO" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
test C//

<% db_test dt = new db_test();
String result;
result = dt.insertDB();%>

입력 결과는 <%=result %> 이다!!
</body>
</html>