package com.rajput;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class setConnection {

	public boolean Validation(String uname, String pwd) throws SQLException, ClassNotFoundException {
		Connection con = null;
		Statement st = null;
		ResultSet rs =null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MySQL","root","rajputvishal");
			st = con.createStatement();
			rs = st.executeQuery("select * from jdbc_demo.details where username = '"+uname+"' and password = '"+pwd+"'");
			if(rs.next()){
				System.out.println("Login Validated!");
				return true;
			}
		} 
		finally {
			if(rs!=null){
				rs.close();
			}
			if(st!=null){
				st.close();
			}
			if(con!=null){
				con.close();
			}
		}
		return false;
	}

}
