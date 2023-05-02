<%@page import="dao.BoardMysqlDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail.jsp</title>
<style>
table{
width : 900px;
margin : auto;
border-bottom : 1px solid black;}
table, th, td {
border-top: 1px solid black;
border-collapse: collapse;
text-align : center;}

</style>
</head>
<body>
	<h1>detail.jsp</h1>
	<%
	// 1. 전달받은 파라미터의 값 가져오기
	String b = request.getParameter("bno");
	// 2. bno null 이 아니면
	if(b != null){
	// 3. 숫자로 형변환
		int bno = Integer.parseInt(b);
	// 4. dao 객체
	
	BoardMysqlDAO dao = new BoardMysqlDAO();
	// 5. dao를 통해서 지지정한 게시물 가져오기 (vo) : dao.selectOne(bno)
	BoardVO vo = dao.selectOne(bno);
		
	if(vo != null){
		
	
	
	
	// 6. 화면에 출력
	// 7. 자원반남 dao.close()
	%>
	<table>
		<tr>
			<th>작성자</th>
			<td><%= vo.getWriter() %></td>
			<th>조회수</th>
			<td><%= vo.getHits() %></td>
			<th>작성일시</th>
			<td><%= vo.getRegdate() %></td>
			<td></td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><%= vo.getTitle() %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><%= vo.getContents() %></td>
		</tr>
		<tr>
			<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a> 
				<a href="modifyForm.jsp?bno=<%=vo.getBno() %>"><input type="button" value="수정" /></a>
				<a href="deleteOk.jsp?bno=<%=vo.getBno() %>"><input type="button" value="삭제" /></a></td>
			<td></td>

					</tr>

	</table>
	<%
	} 
	dao.close();
	}
	%>
</body>
</html>