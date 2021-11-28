<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");

	if((username.equals("admin")&&password.equals("admin")))
	{
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = adminboard.jsp\" /><body><b>" + "Admin</b></body></html>");
	}
	else 
	{
		out.println("<html><meta http-equiv=\"refresh\" \r\n"
				+ "        content=\"5; url = Signup.html\" /><body><b>" + "Failed</b></body></html>");
	}
%>
</body>
</html>