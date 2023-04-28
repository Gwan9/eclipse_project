<%@page import="vo.FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.FileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
<style>
table,tr,th,td{
border : 1px solid gray;
border-collapse : collapse;
}
img{
width : 50px;
height : 50px;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>파일번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>첨부파일</th>
		</tr>
		<%
		FileDAO dao = new FileDAO();
		ArrayList<FileVO> list = dao.selectAll();
		for(FileVO vo : list){
		%>
		
		<tr>
			<td><%= vo.getNo() %></td>
			<td><%= vo.getTitle() %></td>
			<td><%= vo.getWriter() %></td>
			<td><%= vo.getContents() %></td>
			<td><img src="../upload/<%=vo.getFilename() %>" alt="" ></td>
		</tr>
		
		<%} %>
	</table>
</body>
</html>