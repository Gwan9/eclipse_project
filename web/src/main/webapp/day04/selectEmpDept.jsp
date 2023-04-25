<%@page import="vo.EmpDeptVO"%>
<%@page import="dao.EmpDeptDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectEmpDept.jsp</title>
<style>
table, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

table {
	text =align: center;
	width =: 600px;
	margin: 0 auto;
}
</style>
</head>
<body>
<!-- 사번 이름 급여 부서번호 부서명 위치 정보 hint : join -->

	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>급여</th>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>

		<%
		
		EmpDeptDAO dao = new EmpDeptDAO();
		
		ArrayList<EmpDeptVO> list = dao.selectAll();
		
		for (EmpDeptVO vo : list) {
		%>
		<tr>
			<td><%=vo.getEmpno() %></td>
			<td><%=vo.getEname() %></td>
			<td><%=vo.getSal() %></td>
			<td><%=vo.getDeptno() %></td>
			<td><%=vo.getDname() %></td>
			<td><%=vo.getLoc() %></td>
		</tr>
		<%}%>
	</table>
	<% 
	dao.closed();
	%>
	
</body>
</html>