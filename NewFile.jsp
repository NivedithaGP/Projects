<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Quick Shop</title>        
    </head>
    <body>
        <table border="2px solid" width="65%" align="center">
            <thead>
            <tr>
                <th>Product-Id</th>
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Total Price</th>
                <th>Product Amount</th>
            </tr>
            </thead>
<%
    try{
        Blob image = null;
        byte[ ] imgData = null ;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lens","root","familygn");
        String Query="select * from product";
        Statement stm=con.createStatement();
        Statement stmt=con.createStatement();
        ResultSet rs=stm.executeQuery(Query);
        ResultSet rs1=stmt.executeQuery("select p_img from product where p_id='peye1'");
        if(rs.next()|| rs1.next()){
        	
            image = rs1.getBlob(1);
            imgData= image.getBytes(1,(int)image.length());
            response.setContentType("image/jpg");
            OutputStream o = response.getOutputStream();    
        %>      
        <tbody>
        <tr>
        <br>
        <div>
        <td><%=rs.getString("p_id")%></td>
        </div>
        <div>
            <td>o.write(imgData);</td>             
        </div>
        <div>
        <td><%=rs.getString("p_name") %></td>
        </div>
        <div>
        <td><%=rs.getString("p_amt") %></td>
        </div>
        <div>
        <td><%=rs.getString("p_color") %></td>
        </div>
        </br>
</tr>
        </tbody>
<%
        }
    } catch(Exception ex)
    {
    out.println("Exception:"+ex.getMessage());
    ex.printStackTrace();
    }
    %>
    </table>
    </body>
</html>
