<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.lang.*"%>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Calendar" %>


<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String filename = null;
int filesize = 0;


String saveFolder = "upload_files";

ServletContext context = getServletContext();
String realFolder = context.getRealPath(saveFolder);
System.out.println("WritePro: " + realFolder);

int sizeLimit = 10*1024*1024;
String encType = "UTF-8";
DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();


Connection conn = null;
Statement stmt = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/scholarshipcenter?characterEncoding=UTF-8";
	String id = "center";
	String pw = "center";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, sizeLimit, encType, policy);
	filename = multi.getFilesystemName("imagename");

	if(filename!=null){
		Enumeration files = multi.getFileNames();
		String fname = (String)files.nextElement();
		File file = multi.getFile(fname);
		filesize = (int)file.length();
	}


String scholarname;
if(multi.getParameter("scholarname")==null){scholarname = "";}
else{scholarname = multi.getParameter("scholarname");}

String foundationname;
if(multi.getParameter("foundationname")==null){foundationname = "";}
else{foundationname = multi.getParameter("foundationname");}


int scholarmoney;
if(multi.getParameter("scholarMoney")==""){scholarmoney = 100000;}
else{scholarmoney= Integer.parseInt(multi.getParameter("scholarmoney"));}

float gpa;
if(multi.getParameter("gpa")==null){gpa = 0;}
else{gpa= Float.parseFloat(multi.getParameter("gpa"));}


int studentstatus;
if(multi.getParameter("studentstatus")==null){studentstatus = 10;}
else{studentstatus= Integer.parseInt(multi.getParameter("studentstatus"));}

String schoolname;
if(multi.getParameter("schoolname")==null){schoolname = "";}
else{schoolname = multi.getParameter("schoolname");}

String major;
if(multi.getParameter("major")==null){major = "";}
else{major =multi.getParameter("major");}

String area;
if(multi.getParameter("area")==null){area = "";}
else{area = multi.getParameter("area");}

int startday;
if(multi.getParameter("startday")==null){startday = 0;}
else{startday= Integer.parseInt(multi.getParameter("startday"));}

int endday;
if(multi.getParameter("endday")==null){endday = 0;}
else{endday= Integer.parseInt(multi.getParameter("endday"));}

String imagename;
if(multi.getFilesystemName("imagename")==null){imagename = "";}
else{imagename = multi.getParameter("imagename");}


String etc;
if(multi.getParameter("etc")==null){etc = "";}
else{etc = multi.getParameter("etc");}

//dday구하기
Calendar cal = Calendar.getInstance();
int year = endday/10000;
int month = (endday%10000)/100;
int day = (endday%100);
long now_day = cal.getTimeInMillis();
cal.set(year, month-1, day);
  
long event_day = cal.getTimeInMillis();
long d_day = (event_day - now_day)/(60*60*24*1000);
%>

<%
ScholarVO svo = new ScholarVO();

svo.setScholarname(scholarname);
svo.setFoundationname(foundationname);
svo.setScholarmoney(scholarmoney);
svo.setGpa(gpa);
svo.setStudentstatus(studentstatus);
svo.setSchoolname(schoolname);
svo.setMajor(major);
svo.setArea(area);
svo.setStartday(startday);
svo.setEndday(endday);
svo.setImagename(multi.getFilesystemName("imagename"));
svo.setImagesize(0);
svo.setEtc(etc);
svo.setDday((int)d_day);

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.insertBoard(svo);
response.sendRedirect("Main.jsp");

%>


</body>
</html>





