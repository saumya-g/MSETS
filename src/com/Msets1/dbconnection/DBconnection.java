package com.Msets1.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;

 
public class DBconnection {
  
	static Connection con=null;
	static PreparedStatement ps=null;
	public static Connection getConnection() throws ClassNotFoundException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/msets1", "root", "root");
			if(con!=null)
				System.out.println("con..esta..");
			else
				System.out.println("not esta..");
			
            
        } catch (SQLException ex) {
            System.out.println("An error occurred. Maybe user/password is invalid");
            ex.printStackTrace();
        }
        return con;
    }
}
        