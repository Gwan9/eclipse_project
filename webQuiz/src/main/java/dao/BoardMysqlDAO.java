package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.BoardVO;

public class BoardMysqlDAO {

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://database-1.cncq0y7vi9iu.ap-northeast-2.rds.amazonaws.com:3306/orcl";
	String user = "scott";
	String password = "tigertiger12";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();

	public BoardMysqlDAO() {
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
	public ArrayList<BoardVO> selectAll(int startNo, int recordPerPage){
	ArrayList<BoardVO> list = new ArrayList<BoardVO>();
	
	sb.setLength(0);
	sb.append("select * ");
	sb.append("from BOARD ");
	sb.append("order by bno desc ");
	sb.append("limit ? , ? ");
	try {
		pstmt = conn.prepareStatement(sb.toString());
		pstmt.setInt(1, startNo-1);
		pstmt.setInt(2, recordPerPage);	
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			int bno = rs.getInt("bno");
			String writer = rs.getString("writer");
			String title = rs.getString("title");
			String contents = rs.getString("contents");
			String regdate = rs.getString("regdate");
			int hits = rs.getInt("hits");
			String ip = rs.getString("ip");
			int status = rs.getInt("status");
			
			BoardVO vo = new BoardVO(bno, writer, title, contents, regdate, hits, ip, status);
			list.add(vo);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return list;
	
	}
	
//	public void addOne(String writer,String title,String contents,String regdate,int hits,String ip,int status ) {
//		
//		sb.setLength(0);
//		sb.append("insert into BOARD values (BOARD_bno_seq.nextval, ?, ?, ?,sysdate,0,?,1)");
//		
//		try {
//			pstmt = conn.prepareStatement(sb.toString());
//			
//			pstmt.setString(1, writer);
//			pstmt.setString(2, title);
//			pstmt.setString(3, contents);
//			pstmt.setString(4, ip);
//			// 상태 정보 :  1 정상글
//			// 		 	 2 블라인드처리
//			//			 3 경찰요청
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	
//	
//	
//	}
	public void addOne(BoardVO vo) {
		sb.setLength(0);
		sb.append("insert into BOARD (writer, title, contents,regdate, hits, ip, status )");
		sb.append("values (?, ?, ?, now(),0,?,1)");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, vo.getWriter());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContents());
//			pstmt.setString(4, vo.getRegdate());
//			pstmt.setInt(5, vo.getHits());
			pstmt.setString(4, vo.getIp());
//			pstmt.setInt(7, vo.getStatus());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public BoardVO selectOne(int bno) {
		BoardVO vo = null;
		sb.setLength(0);
		sb.append("select * from BOARD where bno = ?");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				String regdate = rs.getString("regdate");
				int hits = rs.getInt("hits");
				String ip = rs.getString("ip");
				int status = rs.getInt("status");
				vo = new BoardVO(bno, writer, title, contents, regdate, hits, ip, status);
				
			}
					
		

		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return vo;

}
	
	
	public void updateOne(BoardVO vo) {
		sb.setLength(0);
		sb.append("update BOARD set title = ? , contents = ? where bno=? ");
//		sb.append("set title = ? , contents = ?  , regdate=sysdate ");
//		sb.append("where bno=? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContents());
			pstmt.setInt(3, vo.getBno());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void deleteOne(int vo) {
		
		sb.setLength(0);
		sb.append("delete from BOARD where bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, vo);
			
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int getTotalCount(){
		sb.setLength(0);
		sb.append("select count(*) cnt from BOARD ");
		int cnt = 0;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			rs.next();
			
			cnt = rs.getInt("cnt");
			
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return cnt;

}
	
	
	public void close() {
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
