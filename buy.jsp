<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
CallableStatement stc = null;
Statement st = null;
ResultSet rs = null;
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
stc = conn.prepareCall("call getOrders()");
rs= stc.executeQuery();
%>

<h2 align="center"><font><strong>ORDER DETAILS</strong></font></h2>
<table align ="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th><b>order number</b></th>
<th><b>customer Id</b></th>
<th><b>product Id</b></th>
<th><b>ordered date</b></th>
<th><b>delivery by</b></th>
<th><b>salesman id</b></th>
</tr>

<%
while(rs.next())
{%>


<tr bgcolor="#DEB887">

<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
</tr>


<%} 
%>
</table>
<a href="adminact.html"><input type="button" value="Back" style="margin-top:30%;margin-left:50%;heigth:50px;"></a>
</body>
</html>