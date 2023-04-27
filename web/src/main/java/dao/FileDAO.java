package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.FileVO;

public class FileDAO {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();

	public FileDAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		}

	}
	
	public void addOne(String title, String writer, String contents, String filename) {
		
		sb.setLength(0);
		sb.append("insert into fileuploadtest values (FILE_NO_SEQ.nextval, ?, ?, ?, ?) ");
	
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, title);
			pstmt.setString(2, writer);
			pstmt.setString(3, contents);
			pstmt.setString(4, filename);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
