<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
 <%@page import="javax.sql.*" %>
 <%
 String admin=request.getParameter("aid") ;
 
 session.putValue("aid",admin);
 String psw=request.getParameter("pswd");
 Class.forName("com.mysql.jdbc.Driver");
 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","familygn");
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from admin_log where aid='"+admin+"'");
 if(rs.next())
 {
	 if(rs.getString(1).equals(admin))
	 {
		 if(rs.getString(2).equals(psw))
		 {
			 out.println("Logged in");
		      response.setHeader("Refresh","1.5;url=adminact.html");
		 }
	 }
 }
	 else
	 { out.println("Access Denied,Incorrect ID or Password");
		 response.setHeader("Refresh","1.5;url=admin.html");
	 }
 

  
 %>
</body>
</html>