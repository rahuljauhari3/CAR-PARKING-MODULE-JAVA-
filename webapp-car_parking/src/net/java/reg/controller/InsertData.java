package net.java.reg.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import code.DatabaseConnection;
@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


   public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      try {
    	  Connection con = DatabaseConnection.initializeDatabase();
    	  PreparedStatement stmt = con
                  .prepareStatement("insert into member values(?, ?,?, ?,?, ?)");
 
         // STEP 2: Register JDBC driver
    	  
         stmt.setString(1, request.getParameter("username"));
         stmt.setString(2, request.getParameter("password"));
         stmt.setString(3, request.getParameter("name"));
         stmt.setString(4, request.getParameter("lastname"));
         stmt.setString(5, request.getParameter("mobilenumber"));
         stmt.setString(6, request.getParameter("email"));
         stmt.executeUpdate();
         stmt.close();
         con.close();
         PrintWriter out = response.getWriter();
         out.println("<html><body><b>Successfully Inserted"
                     + "</b></body></html>");
      }  catch (Exception e) {
         e.printStackTrace();
      } 
   }
   
}