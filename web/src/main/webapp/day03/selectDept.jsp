<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type = "text/css">
	table, td, th {
		border : 1px solid black;
		border-collapse: collapse;
	}
	table{
		text-align:center;
		width:600px;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<table>
	<tr>
		<th>부서번호</th>
		<th>부서명</th>
		<th>부서위치</th>
	</tr>
	<!-- 8가지 순서 
	1. 환경변수
	2. 드라이버로딩
	3. Connection
	4. sql
	5. 문장객체
	6. 실행
	7. 레코드별 로직처리
	8. 자원반납
	-->
	<%
	/* 1. 환경변수 */
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String password = "tiger";
		Connection conn ;
		PreparedStatement pstmt;
		ResultSet rs;
		StringBuffer sb = new StringBuffer();
	/* 2. 드라이버로딩 */
		Class.forName(driver);
	/* 3. Connection */
	
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("conn : " + conn);

	/* 4. sql */
		sb.append("SELECT * FROM DEPT");
		
	/* 5. 문장객체 */
		pstmt = conn.prepareStatement(sb.toString());
	
	/* 6. 실행 */
		rs = pstmt.executeQuery();
		
	
	/* 7. 레코드별 로직처리 */
		while(rs.next()){
			int deptno = rs.getInt("deptno");
			String dname = rs.getString("dname");
			String loc = rs.getString("loc");
		
	%>
	<tr>
		<td><%=deptno %></td>
		<td><%=dname %></td>
		<td><%=loc %></td>
	</tr>
	<%
		}
	
	/* 8. 자원반납 */
		if(rs != null)rs.close();
		if(pstmt != null)pstmt.close();
		if(conn != null)conn.close();
	%>
	</table>
</body>
</html>