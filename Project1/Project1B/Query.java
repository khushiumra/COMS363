package project1b;

import java.sql.*;
import java.util.ArrayList;

public class Query 
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
			
                  //QUERY 1
			
					ResultSet rs = stmt.executeQuery("SELECT snum, ssn FROM students WHERE name = 'Becky'");
					
					while (rs.next())
					{
						System.out.println("Becky's SNum and SSN: "+rs.getInt(1) + "\n" + rs.getInt(2));
					}
					
					//QUERY 2

					ResultSet ms = stmt.executeQuery("SELECT snum FROM students WHERE ssn = 123097834");
					
					int snum = 0;
					
					if (ms.next()) 
					{
						snum = ms.getInt(1);
					}

					ms = stmt.executeQuery("SELECT name,level FROM major WHERE snum= " + snum);

					while (ms.next()) 
					{
						System.out.println("The Major name and the Major level is: "+ ms.getString(1) + " " + ms.getString(2));
					}

	               //QUERY 3
					
					ms = stmt.executeQuery("SELECT code FROM departments WHERE name = 'Computer Science'");
				
					int code = 0;

					while (ms.next()) 
					{
						code = ms.getInt(1);
					}

					ms = stmt.executeQuery("SELECT name FROM courses WHERE department_code=" + code);

					while (ms.next())
					{
						System.out.println("Course offered by the Department Computer Science: " + ms.getString(1));
					}
	
                  // QUERY 4
					ms = stmt.executeQuery("SELECT name,level FROM degrees WHERE department_code=" + code);

					while (ms.next()) {
						System.out.println("Degree offered by the department Computer Science: " +ms.getString(1) + " " + ms.getString(2));
					}

					// QUERY 5
					
					
					ms = stmt.executeQuery("SELECT  snum FROM minor");
					
					ArrayList<Integer> studentsSnum = new ArrayList<Integer>(); 
					
					while (ms.next())
					{
						studentsSnum.add(ms.getInt(1));
					}

					for (int i = 0; i < studentsSnum.size(); i++) 
					{
						ms = stmt.executeQuery("SELECT name From students Where snum ="+studentsSnum.get(i));
						
						if (ms.next()) 
						{
							System.out.println( "The student who has a minor is: "+ms.getString(1));
						}
						
					}
					
					System.out.println("All queries have been completed.");


					connect.close();
					
				} 
		
		catch (Exception e) 
		{
					System.out.println(e.toString());
        }
	}
}
