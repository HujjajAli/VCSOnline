package com.vcs.dbhandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseHandler {
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Statement getStatment(){
		Statement stm;
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vetdb","root","");
			System.out.println("Connection Created");
			stm =  con.createStatement();
			return stm;
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
}
