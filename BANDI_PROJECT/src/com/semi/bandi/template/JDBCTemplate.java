package com.semi.bandi.template;
import java.io.FileReader;
import java.sql.*;
import java.util.Properties;

public class JDBCTemplate 
{
	public static Connection getInstance()
	{
		Connection con = null;
		Properties prop = new Properties();
		
		String fileName = JDBCTemplate.class.getResource("/config/driver/driver.properties").getPath();
		
		try{
			prop.load(new FileReader(fileName));
			String driver = prop.getProperty("driver");
			String url  = prop.getProperty("url");
			String driverName = prop.getProperty("drivername");
			String password = prop.getProperty("driverpwd");
			
//			System.out.println(driver + ", " + url + ", " + driverName + ", " + password);
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, driverName, password);
			
			con.setAutoCommit(false);
			
		}catch(Exception e)
		{
			e.printStackTrace();
			con = null;
		}
			
		return con;
	}
	
	public static void close(Connection con)
	{
		try {
			if(con != null && !con.isClosed())
			{
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstmt)
	{
		try{
			if(pstmt != null && !pstmt.isClosed())
			{
				pstmt.close();
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rSet)
	{
		try {
			if(rSet != null && rSet.isClosed())
			{
				rSet.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con)
	{
		try {
			if(con != null && !con.isClosed())
			{
				con.commit();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con)
	{
		try {
			if(con != null && !con.isClosed())
			{
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
