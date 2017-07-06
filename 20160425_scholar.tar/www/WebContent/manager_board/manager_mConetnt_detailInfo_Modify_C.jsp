<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.util.*" %>
<%@ page import ="java.io.*" %>    
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import = "dao.ScholarDAO"%>
<%@ page import = "dto.ScholarVO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
manager_modify C 입니다. 

<%
String rcdno = request.getParameter("rcdno");
out.println(rcdno);
 ScholarVO newSVO = new ScholarVO();

String in_scholarname="";
String in_foundationname="";
String in_scholarmoney="";
String in_gpa="";
String in_studentstatus="";
String in_schoolname="";
String in_major="";
String in_area="";
String in_startday=null;
String in_endday=null;
String in_dday="";
String in_url="";
String in_link="";
String in_imagename="";
String in_imageurl="";
String in_filename="";
String in_fileurl="";
String in_etc="";
int in_view=1;
int in_manager_check=1;							//직접 입력했으니 1


request.setCharacterEncoding("UTF-8");

String savePath = "attachedFiles";
int uploadFileSizeLimit = 10* 1024 * 1024;
String encType = "UTF-8";

ServletContext context = getServletContext();
String uploadFilePath = context.getRealPath(savePath);

System.out.println("실제 저장 경로 : "+ uploadFilePath);                        //to save files = get saving path 

MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSizeLimit, encType, new DefaultFileRenamePolicy());
String fileName = multi.getFilesystemName("file");


if(fileName ==null){
	System.out.println("파일이 업로드 되지 않았습니다.");
}else{
	out.println("파일명 : " + fileName);
}

in_scholarname = multi.getParameter("scholarname");
in_foundationname = multi.getParameter("foundationname");
in_scholarmoney = multi.getParameter("scholarmoney");
in_gpa = multi.getParameter("gpa");
in_studentstatus = multi.getParameter("studentstatus");
in_schoolname = multi.getParameter("schoolname");
in_major = multi.getParameter("major");
in_area = multi.getParameter("area");
in_startday = multi.getParameter("startday");
in_endday = multi.getParameter("endday");
in_filename = multi.getParameter("filename");
in_fileurl = multi.getParameter("fileurl");

String match = "[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]";


System.out.println("in_startday 의값은 "+in_startday);

if(in_startday.matches(match)){
	System.out.println("startday가 형식에 맞음");
	String year = in_startday.substring(0,4);
	String month = in_startday.substring(4,6);
	String day = in_startday.substring(6,8);
	in_startday = year+"-"+month+"-"+day;
}else{
	in_startday = multi.getParameter("startday");
}

if(in_endday.matches(match)){
	System.out.println("endday가 형식에 맞음");
	String year = in_endday.substring(0,4);
	String month = in_endday.substring(4,6);
	String day = in_endday.substring(6,8);
	in_endday = year+"-"+ month +"-"+ day;
	
	int endday_year = Integer.parseInt(in_endday.substring(0,4)); // calculate DDAY ==================
	int endday_month = Integer.parseInt(in_endday.substring(5,7));
	int endday_day = Integer.parseInt(in_endday.substring(8,10));
	Calendar cal = Calendar.getInstance();
	long now_day = cal.getTimeInMillis();
	cal.set(endday_year, endday_month-1, endday_day);
	long event_day = cal.getTimeInMillis();
	long d_day = (event_day - now_day)/(60*60*24*1000);
	
	in_dday = String.valueOf((int)d_day); 							//in_dday -> save like "5"

}else{
	in_startday = multi.getParameter("startday");
	
}






in_url = multi.getParameter("url");
in_link = multi.getParameter("link");
/* in_filename = fileName; */
in_etc = multi.getParameter("etc");

in_etc = in_etc.replaceAll(" ","&nbsp");

newSVO.setScholarname(in_scholarname);
newSVO.setFoundationname(in_foundationname);
newSVO.setScholarmoney(in_scholarmoney);
newSVO.setGpa(in_gpa);
newSVO.setStudentstatus(in_studentstatus);
newSVO.setSchoolname(in_schoolname);
newSVO.setMajor(in_major);
newSVO.setArea(in_area);
newSVO.setStartday(in_startday);
newSVO.setEndday(in_endday);
newSVO.setDday(in_dday);
newSVO.setUrl(in_url);
newSVO.setLink(in_link);
newSVO.setFilename(in_filename);
newSVO.setFileurl(in_fileurl);
newSVO.setEtc(in_etc);
newSVO.setManager_check(1);


ScholarDAO sdao = ScholarDAO.getInstance();
ScholarVO modifySVO = sdao.modifyDetailScholarInfo(rcdno, newSVO);

response.sendRedirect("manager_mContent_detailInfo.jsp?rcdno="+rcdno);

%>
</body>
</html>