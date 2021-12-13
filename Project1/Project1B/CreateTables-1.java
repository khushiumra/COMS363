package project1b;

import java.sql.*;
import java.util.ArrayList;

public class CreateTables 
{
	
	@SuppressWarnings("unused")
	
	public static void main(String[] args)
	
	{
		Connection connect = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String userName = "coms363";
			String password = "password";
			String dbServer = "jdbc:mysql://localhost:3306/project";
			connect = DriverManager.getConnection(dbServer, userName, password);

			Statement stmt = connect.createStatement();
			
			String CreateStuTab = "create table students (" + "" + "  snum integer NOT NULL UNIQUE,"
					+ "  ssn integer," + "  name varchar(10)," + "  gender varchar(10)," + "  dob datetime,"
					+ "  c_addr varchar(20)," + "  c_phone varchar(10)," + "  p_addr varchar(20),"
					+ "  p_phone varchar(10)," + "  primary key(ssn)" + "  " + "  );";
			
			stmt.executeUpdate(CreateStuTab);
			
			String CreateDeptTab = "create table departments (" +

					"  code integer," + "  name varchar(50) NOT NULL UNIQUE," + "  phone varchar(10),"
					+ "  college varchar(20)," + "  primary key(code)" + "  " + "  );";
			
			
			stmt.executeUpdate(CreateDeptTab);

			String CreateDegTab = "create table degrees (" + "" + "  name varchar(50) ," + "  level varchar(5),"
					+ "  department_code integer," + "  primary key(name,level),"
					+ "  foreign key(department_code) references departments(code)" + "  " + "  );";
			
			
			stmt.executeUpdate(CreateDegTab);

			String CreateCoursesTab = "create table courses (" + "  number integer,"
					+ "  name varchar(50) NOT NULL UNIQUE," + "  description varchar(50)," + "  credithours integer,"
					+ "  level varchar(20)," + "  department_code integer," + "  primary key(number),"
					+ "  foreign key(department_code) references departments(code)" + "  " + "  );";
			
			
			stmt.executeUpdate(CreateCoursesTab);

			String CreateRegTab = " create table register (" + "  snum integer," + "  course_number integer,"
					+ "  regtime varchar(20)," + "  grade integer," + "  primary key(snum, course_number),"
					+ "  foreign key(snum) references students(snum),"
					+ "  foreign key(course_number) references courses(number)" + "  " + "  );";

			stmt.executeUpdate(CreateRegTab);

			String CreateMajTab = "create table major (" + "  snum integer," + "  name varchar(50),"
					+ "  level varchar(5)," + "  primary key(snum, name,level),"
					+ "  foreign key(name,level) references degrees(name,level),"
					+ "  foreign key(snum) references students(snum)" + "  " + "  " + "  );";
			
			stmt.executeUpdate(CreateMajTab);
			
			
			String CreateMinTab = "create table minor (" + "  snum integer," + "  name varchar(50),"
					+ "  level varchar(5)," + "  primary key(snum, name,level),"
					+ "  foreign key(snum) references students(snum),"
					+ "  foreign key(name,level) references degrees(name,level)" + "  " + "  );";
			
			stmt.executeUpdate(CreateMinTab);
			
			System.out.println("Created table in given database...");


			connect.close();
			
		} catch (Exception e)
		
		{
			System.out.println(e.toString());

		}
	}
	
}
