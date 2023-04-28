<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="writeOk.jsp" method="get">
		<table>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" id="" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" id="" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="contents" id="" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="목록" /> 
				<input type="submit" value="작성" /> <input type="reset" value="다시쓰기" /></td>
					
			</tr>



		</table>
	</form>
</body>
</html>