package com.bloodbank;
import java.sql.*;
public class SqlCon implements SqlConnection{
	private static Connection con;
	
	public static Connection connection() throws Exception{
		try{
		Class.forName(DRIVER);
		con = DriverManager.getConnection(CON,USERNAME,PASSWORD);
		
		}
		catch(Exception e){
				e.printStackTrace();
		}
		return con;
	}
}
