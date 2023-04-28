<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
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
	<h1>modifyForm.jsp</h1>
	<%
	// 1. 전달받은 파라미터의 값 가져오기
	String b = request.getParameter("bno");
	// 2. bno null 이 아니면
	if(b != null){
	// 3. 숫자로 형변환
		int bno = Integer.parseInt(b);
	// 4. dao 객체
	
	BoardDAO dao = new BoardDAO();
	// 5. dao를 통해서 지지정한 게시물 가져오기 (vo) : dao.selectOne(bno)
	BoardVO vo = dao.selectOne(bno);
		
	if(vo != null){
		
	
	
	
	// 6. 화면에 출력
	// 7. 자원반남 dao.close()
	%>
	<form action="modifyOk.jsp">
	<table>
		<tr>
			<th>작성자</th>
			<td><%= vo.getWriter() %></td>
			<th>조회수</th>
			<td><%= vo.getHits() %></td>
			<th>작성일시</th>
			<td><%= vo.getRegdate() %>
			<input type="hidden" name="bno" value="<%=vo.getBno() %>" />
			</td>
			
			<td></td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><input type="text" name="title"  value="<%= vo.getTitle() %>" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><input type="text" name="contents" value="<%= vo.getContents() %>" /></td>
		</tr>
		<tr>
			<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a> 
				<input type="submit" value="수정" /></td>
			<td></td>

		</tr>

	</table>
	</form>
	<%
	} 
	dao.close();
	}
	%>
</body>
</html>