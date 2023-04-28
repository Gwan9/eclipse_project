package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
		public ArrayList<FileVO> selectAll(){
			ArrayList<FileVO> list = new ArrayList<FileVO>();
			sb.setLength(0);
			sb.append("select * from fileuploadtest");
			
			try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String contents = rs.getString("contents");
				String filename = rs.getString("filename");
				
				FileVO vo = new FileVO(no, title, writer,contents, filename);
				list.add(vo);
				
			}
		}catch(SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
