package net.java.reg.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.java.reg.model.employee;

public class employeedao {

	public int registeremployee(employee userdb) throws ClassNotFoundException{
		String INSERT_USERS_SQL="INSERT INTO userdb"+
	"(username,password,name,lastname,mobilenumber,email) VALUES"+
		"(?,?,?,?,?,?);";
		int result=0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection =
				DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root" , "root");
				PreparedStatement preparedStatement=connection.prepareStatement(INSERT_USERS_SQL)){
					preparedStatement.setString(1,userdb.getUsername());
					preparedStatement.setString(2,userdb.getPassword());
					preparedStatement.setString(3,userdb.getName());
					preparedStatement.setString(4,userdb.getLastname());
					preparedStatement.setString(5,userdb.getMobilenumber());
					preparedStatement.setString(6,userdb.getEmail());
					
					System.out.println(preparedStatement);
					result=preparedStatement.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
				
	}
}
