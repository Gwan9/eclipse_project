<%@page import="dao.BoardMysqlDAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
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
<%
	// 전체 게시물 건수 를 출력 ?
	BoardMysqlDAO dao = new BoardMysqlDAO();
	int totalcount = dao.getTotalCount();
	

	// 한 페이지당 게시물 건수 : 20 
	int recordPerPage = 20;
	
	// 총 페이지 수 : 
	
	
	
	int totalPage = (totalcount%recordPerPage == 0)?totalcount/recordPerPage:totalcount/	recordPerPage+1; //(게시글%페이지당게시글갯수 == 0 이면 그대로 아니면 나눈값 +1)
	String cp = request.getParameter("cp");
	int currentPage = 0;
	
	if(cp != null){
		
	currentPage = Integer.parseInt(cp);
	}else{
		currentPage = 1;
	}
	
	
	// 1페이지 : 시작번호 1: 끝번호 : 20
	// 2페이지 : 시작번호 21 : 끝번호 : 41
	// 3페이지 : 시작번호 41 : 끝번호 60
	
	int startNo = (currentPage -1)*recordPerPage +1;
	// 1 	(1-1)*20+1 => 1
	// 2 	(2-1)*20+1 => 21
	// 3 	(3-1)*20+1 => 41
	
	
	int endNo = currentPage*recordPerPage;
	
	int startPage = 1;
	
	int endPage = totalPage;
	
	if(currentPage<=5){
		startPage = 1;
		
	}else if (currentPage >= 6){
		startPage = currentPage-4;
	}
	
	if(totalPage - currentPage <= 5){
		endPage = totalPage;
		
	}else if(totalPage - currentPage <=5){
		if(currentPage<=5 ){
			endPage = 10;
			
		}else{
			endPage = totalPage;
		}
	}else{
		endPage = currentPage+4;
	}
		
	out.println("<h5> 총 게시물의 수 : " + totalcount + " </h5>");
	out.println("<h5> 한 페이지당 게시물 건수 : " + recordPerPage + " </h5>");
	out.println("<h5> 총 페이지 수 : " + totalPage + " </h5>");
	out.println("<h5> 현재 페이지 번호 : " + totalPage + " </h5>");
	out.println("<h5> 시작 번호 : " + startNo + " </h5>");
	out.println("<h5> 끝 번호 : " + endNo + " </h5>");
	
	
%>
	<table>
		<tr>
			<th>게시물번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<%
		ArrayList<BoardVO> list = dao.selectAll(startNo, recordPerPage);
		for(BoardVO vo : list){
		%>
		<tr>
			<td><%= vo.getBno() %></td>
			<td><a href="detail.jsp?bno=<%=vo.getBno() %>"><%= vo.getTitle() %></a></td>
			<td><%= vo.getWriter() %></td>
			<td><%= vo.getHits() %></td>
		</tr>
		<%}%>
		
		<tr>
		<td colspan="4">
			<a href="write.jsp"><input type="button" value="글쓰기" /></a>
		</td>
		</tr>
		<tr>
		<td colspan = "4">
		<% for (int i = startPage; i<= endPage ;i++) {
		%>
		<a href="list.jsp?cp=<%=i%>">[<%=i%>]</a>
		<%
			}
		%>
		</td>
		</tr>
	</table>
</body>				
</html>