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

String productid=request.getParameter("p_id");
session.putValue("p_id",productid);
String product_path=request.getParameter("p_img");
String product_name=request.getParameter("p_name");
String product_amt=request.getParameter("p_amt");
String product_color=request.getParameter("p_color");
String product_shape=request.getParameter("p_shape");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into product values('"+productid+"','"+product_path+"','"+product_name+"','"+product_amt+"','"+product_color+"','"+product_shape+"')");
response.sendRedirect("adminact.html");

%>
<a href="login.html">Login</a>
<a href="home.jsp">Home</a>

</body>
</html>