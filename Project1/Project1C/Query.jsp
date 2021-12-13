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
<body>

<%

String Q1button = request.getParameter("q1");
String Q2button = request.getParameter("q2");
String Q3button = request.getParameter("q3");


if("q1".equals(Q1button)){
	
	String redirectURL = "QueryResult1.jsp";
    response.sendRedirect(redirectURL);
}
if("q2".equals(Q2button)){
	
	String redirectURL = "QueryResult2.jsp";
    response.sendRedirect(redirectURL);
}

if("q3".equals(Q3button)){
	
	String redirectURL = "QueryResult3.jsp";
    response.sendRedirect(redirectURL);
}

%>

<form  method="post">
	
	
	<h3>Click "Q1" to see result of query 1</h3>
    <input type="submit" name="q1" value="q1" />
    
   <h3>Click "Q2" to see result of query 2</h3>
    <input type="submit" name="q2" value="q2" />
    
    <h3>Click "Q3" to see result of query 3</h3>
    <input type="submit" name="q3" value="q3" />
    
</form>

</body>
</html>