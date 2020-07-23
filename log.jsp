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
 String usr=request.getParameter("uid") ;
 session.putValue("uid",usr);
 String pwd=request.getParameter("psw");
 Class.forName("com.mysql.jdbc.Driver");
 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from users where uid='"+usr+"'");
 if(rs.next())
 {
	 if(rs.getString(1).equals(usr))
	 {
		 if(rs.getString(3).equals(pwd))
		 {
		  out.println("Logged In!..");
		 response.setHeader("Refresh","1.5;url=home.jsp");
		 }
	 }
 
 } 
     else
	 {
    	 out.println("Incorrect password or ID");
    	 response.setHeader("Refresh","1.5;url=log.html");
	 }
 
  
  
 %>
</body>
</html>