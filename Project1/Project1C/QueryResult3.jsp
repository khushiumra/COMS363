<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%!

public void test(JspWriter out)
			throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {

		String userName = "root";
		String password = "present18*";
		String dbServer = "jdbc:mysql://localhost:3306/demo";
		Connection connection = null;
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();

		connection = DriverManager.getConnection(dbServer, userName, password);
		
		Statement stmt = connection.createStatement();
		
		ResultSet ms = stmt.executeQuery("SELECT code FROM departments where code = 401 AND 404");
		
		int code = 0;
		
		if(ms.next())
		{
			code = ms.getInt(1);
		}
		
		ms = stmt.executeQuery("SELECT number, name FROM courses where department_code = " +code);
		
		out.println("Number and Name:");
		
		while (ms.next())
		{
			out.println("" + ms.getString(1) + " " + ms.getString(2));
		}

};

%>

<body>

<%


	test(out);
	
%>
	<form  method="post">
   
    
</form>

</body>
</html>