<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
Statement st = conn.createStatement();
String a = request.getParameter("user");
String b = request.getParameter("pass");
String c = request.getParameter("name");
String d = request.getParameter("lastname");
String e = request.getParameter("mobile");
String f = request.getParameter("email");
String g = request.getParameter("LicensePlate");
int i1 = st.executeUpdate(
"Insert into member(username,password,name,lastname,mobilenumber,email,LicensePlate) values(" + "'"
		+ a + "'," + "'" + b + "'," + "'" + c + "'," + "'" + d + "'," + "'" + e
		+ "'," + "'" + f + "'," + "'" + g + "'" + ")");
out.println("<html><meta http-equiv=\"refresh\" \r\n"
		+ "        content=\"5; url = dashboard.jsp\" /><body><b>" + "Inserted</b></body></html>");


%>