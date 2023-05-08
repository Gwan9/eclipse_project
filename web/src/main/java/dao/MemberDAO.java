package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MemberVO;

public class MemberDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	Connection conn ;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();
	
	public MemberDAO() {
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

	} // 기본생성자 end
	
	// id와 pw 입력하면 vo객체를 리턴하는 메서드
	public MemberVO getOne(String id, String pwd) {
		
		sb.setLength(0);
		// 4. SQL 문장
		sb.append("select * from member where id = ? and pw = ?");
		// 5. 문장객체
		MemberVO vo = null;
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1,id);
			pstmt.setString(2,pwd);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int no = rs.getInt("no");
				String name = rs.getString("name");
				String gender = rs.getString("gender");
				String motive = rs.getString("motive");
				vo = new MemberVO(no, id, pwd, name, gender, motive);
			}
		} catch (SQLException e) {			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
public MemberVO getOne(String id) {
		
		
		// 4. SQL 문장
		sb.setLength(0);
		sb.append("select * from member where id = ?");
		// 5. 문장객체
		MemberVO vo = null;
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("no");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String gender = rs.getString("gender");
				String motive = rs.getString("motive");
				vo = new MemberVO(no, id, pw, name, gender, motive);
			}
		} catch (SQLException e) {			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;

	}
	
		public ArrayList<MemberVO> selectAll(){
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		
		sb.setLength(0);// 길이를 0으로 : (이전 데이터 지워서 초기화)
		sb.append("select * from member");
//		System.out.println("sb : " + sb);
		
		
		// 5. 문장객체
		try {
		pstmt = conn.prepareStatement(sb.toString());
		
		rs = pstmt.executeQuery();
		while(rs.next()) {
			int no = rs.getInt("no");
			String id = rs.getString("id");
			String pwd = rs.getString("pw");
			String name = rs.getString("name");
			String gender = rs.getString("gender");
			String motive = rs.getString("motive");
			MemberVO vo = new MemberVO(no, id, pwd, name, gender, motive);
			list.add(vo);
		}
		}catch (SQLException e) {			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		}
	
	
	public void addOne(MemberVO vo) {
		
		// 4. SQL 문장
		sb.setLength(0);
		sb.append("Insert into member values(mem_no_seq.nextval,?,?,?,?,?)");
		// 5. 문장객체
		try {
		pstmt = conn.prepareStatement(sb.toString());
//		pstmt.setInt(1, vo.getNo());
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPw());
		pstmt.setString(3, vo.getName());
		pstmt.setString(4, vo.getGender());
		pstmt.setString(5, vo.getMotive());
		// 6. 실행
		
		pstmt.executeUpdate();
		}catch (SQLException e) {			
			e.printStackTrace();
		}
	}
	
	public void updateOne(MemberVO vo) {
		sb.setLength(0);
		sb.append("update member ");
		sb.append("set motive = ? ");
		sb.append("Where id = ? ");
		try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, vo.getMotive());
				pstmt.setString(2, vo.getId());
				pstmt.executeUpdate();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
			
	
	public void deleteOne(String id) {
		sb.setLength(0);
		sb.append("delete from member ");
		sb.append("where id = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
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
	

