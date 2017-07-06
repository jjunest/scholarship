<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


StatusChange_C.jsp 페이지입니다.


<%String rcdno = request.getParameter("rcdno");

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateInfoStatus(rcdno);

System.out.println("장학금 정보 마감 상태 변경 완료");

out.print("<SCRIPT LANGUAGE='JavaScript'>");
out.print("alert('장학금 정보 상태가 마감으로 변경되었습니다');");
out.print("</SCRIPT>");

 response.sendRedirect("manager_mScholarship_CrawleringCheckList.jsp");


%>


</body>
</html>