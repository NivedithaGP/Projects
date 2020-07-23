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

String userid=request.getParameter("uid");
session.putValue("uid",userid);
String user=request.getParameter("uname");
String psw=request.getParameter("psw");
String email=request.getParameter("email");
String address=request.getParameter("address");
String phone=request.getParameter("phno");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into users values('"+userid+"','"+user+"','"+psw+"','"+email+"','"+address+"','"+phone+"')");
response.sendRedirect("home.jsp");

%>
<a href="login.html">Login</a>
<a href="home.jsp">Home</a>

</body>
</html>