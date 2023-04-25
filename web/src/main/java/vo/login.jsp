<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<script>
	window.onload= function(){
		var btn = document.getElementById("btn1");
		btn.onclick=function(){
			console.log("하하하");
			var frm = document.frm;
			// 입력값 유효성 검사
			frm.action = "loginOk.jsp";
			frm.mehod = "get";
			frm.submit();
		}
	})
</script>
</head>
<body>
<%
	Object obj = session.getAttribute("vo");

	if(obj != null){
		MemberVO vo = (MemberVO)obj;
		out.println("<h3><a href='logout.jsp'>"+vo.getName()+"</a>님 환영합니다.</h3>");
	}else {
%>
	
<form action="loginOk.jsp" name="frm" method="post">
	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" name="id" id="id" /></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="password" name="pwd" id="" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="로그인" id="btn1" />
				<a href="register.jsp">
				<input type="button" value="회원가입" id="btn2" />
				</a>
			</td>
		</tr>
	</table>
</form>
<%
	}
%>
</body>
</html>