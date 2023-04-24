<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOK.jsp</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	out.println("<h3> id : "+id +"</h3>");
	out.println("<h3> pw : "+pwd +"</h3>");
	// db에 가서 존재하는지 확인
	// WEB-INF lib 에 ojdbc6.jar 카피
	
	// JDBC 연결 8가지 순서
	// 1. 환경변수
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	Connection conn ;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();
	// 2. JDBC드라이버 로딩여부 확인
	Class.forName(driver);
	// 3. Connection
	conn = DriverManager.getConnection(url, user, password);
	System.out.println("conn : " + conn);
	// 4. SQL 문장
	sb.append("select * from member where id = ? and pw = ?");
	// 5. 문장객체
	pstmt = conn.prepareStatement(sb.toString());
	pstmt.setString(1,id);
	pstmt.setString(2,pwd);
	// 6. 실행 (select ->ResultSet)
	rs = pstmt.executeQuery();
	// 7. 레코드별 로직처리
	boolean isExists = rs.next();
	String name = rs.getString("name");
	// 8. 자원반납
	if(rs != null)rs.close();
	if(pstmt != null)pstmt.close();
	if(conn != null)conn.close();
	%>
	
	<%
	if(isExists){
		out.println("<h1>" + name + "님 환영합니다.</h1>");
	}else{
		out.println("<h1> 로그인 실패 </h1>");
	}
	%>
	
	
</body>
</html>