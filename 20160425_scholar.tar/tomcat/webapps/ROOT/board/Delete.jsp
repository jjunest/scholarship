<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

int num = Integer.parseInt(request.getParameter("rcdno"));

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.deleteBoard(num);

response.sendRedirect("Main.jsp");
%>



</body>
</html>