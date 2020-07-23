package com;
 
import java.sql.*;
import java.io.*;
 
public class DatabaseImageExample {
	public static void main(String args[]){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/lens","root","familygn");
			
			File file=new File("C:\Users\NIVEDITHA\OneDrive\Desktop\project images/h1.jpg");
			FileInputStream fis=new FileInputStream(file);
			
			PreparedStatement ps=con.prepareStatement("insert into product (p_img) values(?)"); 
			ps.setString("image 1");
			ps.setBinaryStream(1,fis,(int)file.length());
			ps.executeUpdate();
 
			ps.close();
			fis.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}