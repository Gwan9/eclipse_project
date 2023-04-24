<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
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

<%
	DeptDAO dao = new DeptDAO();

	ArrayList<DeptVO> list = dao.selectAll();
	for(DeptVO vo : list){
		
	
%>
	<tr>
		<td><%=vo.getDeptno()%></td>
		<td><%=vo.getDname()%></td>
		<td><%=vo.getLoc()%></td>
	</tr>
	<%
		}
	%>

	</table>
</body>
</html>