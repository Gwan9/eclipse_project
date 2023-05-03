<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="loginOk2.jsp" name="frm" method="post">
	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" name="id" id="id" />
			</td>
			
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="password" name="pwd" id="" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" id="btn1" />
				<a href="register.jsp">
				<input type="button" value="회원가입" id="btn2" />
				</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>