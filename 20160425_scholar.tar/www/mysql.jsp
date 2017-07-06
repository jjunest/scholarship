<%@ page import="java.sql.*" contentType="text/html;charset=euc-kr"%>
<%
        String DB_URL = "jdbc:mysql://127.0.0.1:3306/test";
        String DB_USER = "test";
        String DB_PASSWORD= "test123";
        Connection conn;
        Statement stmt;
        try
        {
                Class.forName("org.gjt.mm.mysql.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER,DB_PASSWORD);
                stmt = conn.createStatement();
                conn.close();
                out.println("MySQL 연결 성공");
        }
        catch(Exception e)
        {
                out.println(e);
        }
%>

