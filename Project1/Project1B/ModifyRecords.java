package project1b;

import java.sql.*;
import java.util.ArrayList;


public class ModifyRecords 
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
			
			stmt.executeUpdate("UPDATE students SET name = 'Scott' WHERE ssn = 746897816");

			ResultSet snumQ = stmt.executeQuery("SELECT  snum FROM students WHERE ssn = 746897816");
			
			int snum = 0;
			
			if (snumQ.next()) 
			{
				snum = snumQ.getInt(1);
			}

			stmt.executeUpdate("UPDATE major SET name = 'Computer Science', level = 'MS' WHERE snum ="+snum);
			 
			stmt.execute("DELETE FROM register WHERE regtime ='Spring2021'");
			
			
			System.out.println("Modfication of records is now completed!");

	
			connect.close();
			
		} 
		
		catch (Exception e)
		{
			System.out.println(e.toString());
}
	}
}
