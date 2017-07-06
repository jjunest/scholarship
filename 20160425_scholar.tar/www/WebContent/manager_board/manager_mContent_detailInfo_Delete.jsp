<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Delete Process 창입니다. -----------------
<%String rcdno = request.getParameter("rcdno");

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.deleteDetailScholarInfo(rcdno);

System.out.println("삭제 완료");

out.print("<SCRIPT LANGUAGE='JavaScript'>");
out.print("alert('삭제가 완료 되었습니다');");
out.print("</SCRIPT>");

response.sendRedirect("manager_mScholarship_AllList.jsp");


%>




</body>
</html>