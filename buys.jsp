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

String ord_no=request.getParameter("ord_no");
session.putValue("ord_no",ord_no);
String cu_id=request.getParameter("cu_id");
String pr_id=request.getParameter("pr_id");
String ord_date=request.getParameter("o_date");
String del_date=request.getParameter("delivery_by");
String sal_id=request.getParameter("sal_id");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into orders values('"+ord_no+"','"+cu_id+"','"+pr_id+"','"+ord_date+"','"+del_date+"','"+sal_id+"')");
response.sendRedirect("home.jsp");

%>
<a href="login.html">Login</a>
<a href="home.jsp">Home</a>

</body>
</html>