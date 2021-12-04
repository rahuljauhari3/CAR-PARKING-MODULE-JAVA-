<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
Statement st = conn.createStatement();
String a = request.getParameter("car");
String b = request.getParameter("entryDate");
String c = request.getParameter("name");
String d = request.getParameter("lastname");
String e = request.getParameter("mobile");
String f = request.getParameter("email");
String g = request.getParameter("LicensePlate");
String h = request.getParameter("exitDate");
String i = request.getParameter("entrytime");
String j = request.getParameter("exittime");

int i1 = st.executeUpdate(
"Insert into cars(car,entryDate,name,lastname,mobilenumber,email,LicensePlate,exitDate,entrytime,exittime) values(" + "'"
		+ a + "'," + "'" + b + "'," + "'" + c + "'," + "'" + d + "'," + "'" + e
		+ "'," + "'" + f + "'," + "'" + g + "'," + "'" +h
		+ "'," + "'" + i + "'," + "'" + j + "'"  + ")");
out.println("<html><meta http-equiv=\"refresh\" \r\n"
		+ "        content=\"5; url = adminboard.jsp\" /><body><b>" + "Inserted</b></body></html>");


%>e