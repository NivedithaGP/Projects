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

<h2 align="center"><font><strong>PRODUCT AVAILABILITY</strong></font></h2>
<table align ="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>product Id</b></td>
<td><b>No of products</b></td>
</tr>
<%
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
st=conn.createStatement();
String sql= "select pro_id,p_avail from availability";
rs = st.executeQuery(sql);

while(rs.next())
{
%>

<tr bgcolor="#DEB887">

<td><%=rs.getString("pro_id") %></td>
<td><%=rs.getString("p_avail") %></td>
</tr>
<%
}
conn.close();
%>
</table>

<a href="adminact.html"><input type="button" value="Back" style="margin-top:30%;margin-left:50%;heigth:50px;"></a>
</body>
</html>