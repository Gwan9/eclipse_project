<%@page import="dao.EmpDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectEmp.jsp</title>
<style>
table, td, th{
border : 1px solid black;
border-collapse: collapse;
}
table{
text=align:center;
width=:600px;
margin:0 auto;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>급여</th>
			<th>입사일</th>
			<th>부서번호</th>
		</tr>

		<%
		EmpDAO dao = new EmpDAO();
		
		ArrayList<EmpVO> list = dao.selectAll();
		for (EmpVO vo : list) {
		%>

		<tr>
			<td><%=vo.getEmpno() %></td>
			<td><%=vo.getEname() %></td>
			<td><%=vo.getSal() %></td>
			<td><%=vo.getHiredate() %></td>
			<td><%=vo.getDeptno() %></td>
		</tr>
		<%} %>
	</table>
	<% 
	dao.closed();
	%>
	
</body>
</html>