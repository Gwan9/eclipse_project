<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
<style>
table {
	margin: auto;
}
</style>
<script>
var mail = document.getElementById('mail')
$(function(){
	$(#mail).chage(function(){
		$("#email2").attr("value",mail);
	})
})

</script>
</head>
<body>
	<form action="registerOk.jsp" name="frm" method="post">

		<%
		Object obj = session.getAttribute("vo");
		if (obj != null) {

		}
		%>

		<table>
			<caption>
				<h1>
					가입신청서
				<h1>
			</caption>
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
				<td></td>
				<td></td>
			</tr>

			<tr>
				<td>NAME:</td>
				<td><input type="text" name="name" /></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>주민등록번호:</td>
				<td><input type=text name="jumin1" /> -</td>
				<td><input type="password" name="jumin2" /></td>
				<td></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="pwd" /></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>전화번호:</td>
				<td><input type="tel" name="tel1" /> -</td>
				<td><input type="tel" name="tel2" /> -</td>
				<td><input type="tel" name="tel3" /></td>
			</tr>
			<tr>
				<td>주소:</td>
				<td><input type="text" name="addrs"/></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>EMAIL:</td>
				<td><input type="text" name="" id="email1" /> @</td>
				<td><input type="text" name="" id="email2" /></td>
				<td><select>
						<option value="" selected>직접입력</option>
						<option value="gmail" name="mail" >gmail.com</option>
						<option value="naver" name="mail">naver.com</option>
						<option value="daum" name="mail">daum.net</option>
				</select></td>
			</tr>
			<tr>
				<td>성별:</td>
				<td colspan="3">
				<input type="radio" name="gender" id="gender" value="남" />남 
				<input type="radio" name="gender" id="gender" value="여" />여</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>취미:</td>
				<td colspan="3"><input type="checkbox" id="music" />음악감상 <input
					type="checkbox" id="book" />독서 <input type="checkbox" id="workout" />운동
				</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td colspan="2"><input type="submit" value="가입하기" /> <input
					type="button" value="취소하기" /></td>
				<td></td>

			</tr>
		</table>
	</form>
</body>
</html>