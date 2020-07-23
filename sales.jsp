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
<%@ page import="javax.sql.*" %>
<%

String sales_id=request.getParameter("s_id");
session.putValue("uid",sales_id);
String sales_name=request.getParameter("s_name");
String s_psw=request.getParameter("s_psw");
String s_email=request.getParameter("s_email");
String s_address=request.getParameter("s_address");
String s_phone=request.getParameter("s_phno");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into salesman values('"+sales_id+"','"+sales_name+"','"+s_psw+"','"+s_email+"','"+s_address+"','"+s_phone+"')");
out.println("salesman added");
response.sendRedirect("adminact.html");

%>
<a href="login.html">Login</a>
<a href="home.jsp">Home</a>

</body>
</html>