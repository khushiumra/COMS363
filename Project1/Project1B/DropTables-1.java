package project1b;

import java.sql.*;
import java.util.ArrayList;

public class DropTables

{
	@SuppressWarnings("unused")
	public static void main(String[] args) 
	{
		
	Connection connect = null;
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String userName = "root";
		String password = "present18*";
		String dbServer = "jdbc:mysql://localhost:3306/project";
		connect = DriverManager.getConnection(dbServer, userName, password);

		Statement stmt = connect.createStatement();
		
		stmt.executeUpdate("DROP TABLE register");
		stmt.executeUpdate("DROP TABLE major");
		stmt.executeUpdate("DROP TABLE courses");
		stmt.executeUpdate("DROP TABLE minor");
		stmt.executeUpdate("DROP TABLE degrees");
		stmt.executeUpdate("DROP TABLE departments");
		stmt.executeUpdate("DROP TABLE students");
		
		System.out.println("All tables have been dropped.");

		connect.close();
		
	} 
	
	catch (Exception e) 
	
	{
		System.out.println(e.toString());
  }
 }
}
