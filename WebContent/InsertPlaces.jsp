<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
Statement st = conn.createStatement();
String a = request.getParameter("placename");
String b= request.getParameter("cityname");
String c= request.getParameter("pincode");
String d= request.getParameter("adress");
String e= request.getParameter("spaces");


	int i1 = st.executeUpdate(
			"Insert into parkingslots (placename,cityname,pincode,address,spaces ) values( " + "'" + 
	a + "',"  + "'" + b + "', " + "'" + c + "'," + "'" + d + "'," + "'"+e+ "'"  + ")" );
		
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = adminboard.jsp\" /><body><b>Done" + "</b></body></html>");


%>