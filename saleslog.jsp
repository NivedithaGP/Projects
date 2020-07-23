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
 String sales=request.getParameter("s_id") ;
 session.putValue("s_id",sales);
 String pwd=request.getParameter("s_psw");
 Class.forName("com.mysql.jdbc.Driver");
 java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from salesman where s_id='"+sales+"'");
 if(rs.next())
 {
	 if(rs.getString(3).equals(pwd))
	 
	 {
	out.println("Logged In!..");
	 response.setHeader("Refresh","1.5;url=ordersdetail.jsp");
		 
	 }
	 
 }
 else
 {
		out.println("Incorrect Password or ID");
		 response.setHeader("Refresh","1.5;url=saleslog.html");
 }
  
 %>
</body>
</html>