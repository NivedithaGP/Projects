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
Statement st = null;
ResultSet rs = null;
%>

<h2 align="center"><font><strong>ORDER DETAILS</strong></font></h2>
<table align ="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>order number</b></td>
<td><b>customer Id</b></td>
<td><b>product Id</b></td>
<td><b>ordered date</b></td>
<td><b>delivery by</b></td>
</tr>
<%
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
st=conn.createStatement();
String sql= "select * from orders ";
rs = st.executeQuery(sql);

while(rs.next())
{
%>

<tr bgcolor="#DEB887">

<td><%=rs.getString("ord_no") %></td>
<td><%=rs.getString("cu_id") %></td>
<td><%=rs.getString("pr_id") %></td>
<td><%=rs.getString("o_date") %></td>
<td><%=rs.getString("delivery_by") %></td>
</tr>
<%
}
conn.close();
%>
</table>

<a href="log.html"><input type="button" value="Logout" style="margin-top:30%;margin-left:50%;heigth:50px;"></a>
</body>
</html>