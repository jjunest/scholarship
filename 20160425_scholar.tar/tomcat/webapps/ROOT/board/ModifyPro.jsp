<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import = "java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.lang.*"%>
<%@ page import = "dao.ScholarDAO" %>
<%@ page import = "dto.ScholarVO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%





out.println("여기");

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

	String url = "jdbc:mysql://localhost:3306/scholarshipcenter";
	String id = "center";
	String pw = "center";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, sizeLimit, encType, policy);
	filename = multi.getFilesystemName("imagename");
	System.out.println("WritePro - filename: " + filename);
	if(filename!=null){
		Enumeration files = multi.getFileNames();
		String fname = (String)files.nextElement();
		File file = multi.getFile(fname);
		filesize = (int)file.length();
	}
	
int rcdno;
if(multi.getParameter("rcdno")==null){rcdno = 100000;}
else{rcdno= Integer.parseInt(multi.getParameter("rcdno"));}

String scholarname;
if(multi.getParameter("scholarname")==""){scholarname = "";}
else{scholarname = multi.getParameter("scholarname");}

String foundationname;
if(multi.getParameter("foundationname")==""){foundationname = "";}
else{foundationname = multi.getParameter("foundationname");}


int scholarmoney;
if(multi.getParameter("scholarMoney")==null){scholarmoney = 100000;}
else{scholarmoney= Integer.parseInt(multi.getParameter("scholarmoney"));}

float gpa;
if(multi.getParameter("gpa")==null){gpa = 0;}
else{gpa= Float.parseFloat(multi.getParameter("gpa"));}


int studentstatus;
if(multi.getParameter("studentstatus")==null){studentstatus = 10;}
else{studentstatus= Integer.parseInt(multi.getParameter("studentstatus"));}

String schoolname;
if(multi.getParameter("schoolname")==""){schoolname = "";}
else{schoolname = multi.getParameter("schoolname");}

String major;
if(multi.getParameter("major")==""){major = "";}
else{major = multi.getParameter("major");}

String area;
if(multi.getParameter("area")==""){area = "";}
else{area = multi.getParameter("area");}

int startday;
if(multi.getParameter("startday")==null){startday = 0;}
else{startday= Integer.parseInt(multi.getParameter("startday"));}

int endday ;
if(multi.getParameter("endday")==null){endday = 0;}
else{endday= Integer.parseInt(multi.getParameter("endday"));}




String imagename;
if(multi.getParameter("imagename")==""){imagename = "";}
else{imagename = multi.getParameter("imagename");}


String etc;
if(multi.getParameter("etc")==""){etc = "33";}
else{etc = multi.getParameter("etc");}




//dday 날짜 구하기 
Calendar cal = Calendar.getInstance();
int year = endday/10000;
int month = (endday%10000)/100;
int date = (endday%100);
System.out.println("year: "+year+", month: "+month+", date: "+date);
long now_day = cal.getTimeInMillis();
cal.set(year, month-1, date);

long event_day = cal.getTimeInMillis();
long d_day = (event_day - now_day)/(60*60*24*1000);
System.out.println((d_day));




%>

<%


ScholarVO svo = new ScholarVO();

svo.setRcdno(rcdno);
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
svo.setImagename(imagename);
svo.setEtc(etc);
svo.setDday((int)d_day);

ScholarDAO sdao = ScholarDAO.getInstance();
sdao.updateBoard(svo);

response.sendRedirect("Main.jsp");
%>


</body>
</html>