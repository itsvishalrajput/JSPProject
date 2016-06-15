package com.rajput;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class setConnection {

	public boolean Validation(String uname, String pwd) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MySQL","root","rajputvishal");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from jdbc_demo.details where username = '"+uname+"' and password = '"+pwd+"'");
			if(rs.next()){
				System.out.println("Login Validated!");
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}

}
