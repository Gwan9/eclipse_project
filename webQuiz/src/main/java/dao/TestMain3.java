package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestMain3 {

	public static void main(String[] args) {
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://database-1.cncq0y7vi9iu.ap-northeast-2.rds.amazonaws.com:3306/orcl";

//		String url = "jdbc:mysql://database-1.cr28jdajz5jl.ap-northeast-2.rds.amazonaws.com:3306/orcl";
//		String url = "jdbc:mysql://database-1.clyzevk0mzww.ap-northeast-2.rds.amazonaws.com:3306/orcl";
		String user = "scott";
		String password = "tigertiger12";
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		StringBuffer sb = new StringBuffer();
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		
		
		
	}

}
