package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.EmpVO;

public class EmpDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	Connection conn ;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();
	
	public EmpDAO() {
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
	
	public ArrayList<EmpVO> selectAll(){
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		
		sb.setLength(0);
		sb.append("select * from emp");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				int no = rs.getInt("empno");
				String ename = rs.getString("ename");
				int mgr = rs.getInt("mgr");
				String hiredate = rs.getString("hiredate");
				int sal = rs.getInt("sal");
				int comm = rs.getInt("comm");
				int deptno = rs.getInt("deptno");
				EmpVO vo = new EmpVO(no,ename,hiredate, mgr,hiredate,sal,comm,deptno);
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}
public EmpVO getOne(int empno) {
		
		
		// 4. SQL 문장
		sb.setLength(0);
		sb.append("select ename from emp where empno = ?");
		// 5. 문장객체
		EmpVO vo = new EmpVO();
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, empno);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				vo.setEname(rs.getString("ename")); 
			}
		} catch (SQLException e) {			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;

	}
	
	
	public void closed() {
		// 자원반납
		// 8. 자원반납
		
			try {
				if(rs != null)rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
