<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.footer{
background:#303036;
color:#d3d3d3;
height:200px;
position:relative;
}

.footer .footer-content{
text-align:center;
padding-top:5px;}


.footer .footer-bottom{
background:#343a40;
color:#686868;
width:100%;
height:25px;
text-align:center;
position:absolute;
bottom:0px;
left:0px;
padding-top:20px;}

.footer .set1{
padding-left:100%;}

.footer .set1{
padding-left:2%;}


.footer .set4{
padding-right:42%;}



.logo{
height:75px;
width:175px;}
.img img{

}

</style>
</head>
<body bgcolor="#f1f3f6">
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>



<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
Statement st = null;
ResultSet rs = null;
Blob image = null;
byte[] imgData = null;

%>
<table border="0"  width="100%" bgcolor="#808080">
<tr>
<td align="left"><img src="C:\Users\NIVEDITHA\OneDrive\Desktop\project images/logo1.jpg" class="logo"></td>
<th align="left" style="color:white;font-family:sans-serif;"><h2>Look Spectacular With Eyewears</h2></th>
<th><a href="log.html">LogOut</a></th>
<th><a href="about.html">About us</a></th>
<th><a href="privacy.html">Privacy</a></th>
</tr>
</table>

<br><br>
<img src="C:\Users\NIVEDITHA\OneDrive\Desktop\project images/banner.jpg" width="100%" height="76%"><br><br>

<table align ="center" cellpadding="5" cellspacing="5" border="1" width="70%">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Product</b></td>
<td><b>Product ID</b></td>
<td><b>Name</b></td>
<td><b>Price</b></td>
<td><b>Color</b></td>
<td><b>Shape</b></td>
</tr>
</table>


<%

conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
st=conn.createStatement();
String sql= "select * from product";
rs = st.executeQuery(sql);

while(rs.next())
{

%><center>


<table align ="center" cellpadding="5" cellspacing="5" border="1" width="70%">
<tr>
</tr>

<tr bgcolor="#DEB887">

<td> <center><img src="<%=rs.getString("p_img") %>"width="200px" height="200px"></center></td>
<td><%=rs.getString("p_id") %></td>
<td><%=rs.getString("p_name") %></td>
<td><%=rs.getString("p_amt") %></td>
<td><%=rs.getString("p_color") %></td>
<td><%=rs.getString("p_shape") %></td>
</tr>
</table>

<br>
<a href="buy.html"><input type="button" value="Buy Now" style="margin:auto;display:block;"></a>
<br>

<%
}

 
conn.close();
%>
</body>
</html>