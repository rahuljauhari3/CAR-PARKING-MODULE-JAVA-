<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
Statement st = conn.createStatement();
String a     = request.getParameter("workername");
String b    = request.getParameter("dutyhours");
String c    = request.getParameter("salary");
String d     = request.getParameter("entrytime");
String e     = request.getParameter("exittime");
String f     = request.getParameter("workeremail");
	Statement st1 = conn.createStatement();
		int i1 = st.executeUpdate(
				"Insert into workers (workername , dutyhours , salary, entrytime , exittime,workeremail ) values( " + "'" + 
		a + "',"  + "'" + b + "', " + "'" + c + "'," + "'" + d + "'," + "'"+e+ "'," + "'"+f+"'"  + ")" );
		
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = adminboard.jsp\" /><body><b>" + "Inserted</b></body></html>");

	
%>