package com.bongda.dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class DAO {
	public static Connection con;
	public String dbUrl="jdbc:mysql://localhost:3306/bongda?autoReconnect=true&useSSL=false";
	public String dbClass="com.mysql.jdbc.Driver";
	public DAO() {
		if(con==null) {
			try {
				Class.forName(dbClass);
				con= DriverManager.getConnection(dbUrl,"root","huy123456789");
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
