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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script>
// 중복확인 버튼을 누르면 콘솔에 메세지 출력

$(function(){
	$("#중복확인").on("click", function(){
		
		
		
		
		
		
		$.ajax({
			type : "GET",
			async : true,
			url : "idCheckup.jsp",
			dataType : "html",
			data : {"id":$("#id").val()},
			success : 
				function(response, status, request){
				
				if( response.trim() == 'true' ){ 
					console.log(response)
					$("#msg").html("<h3>사용가능합니다.</h3>");
				}else {
					console.log(response)
					$("#msg").html("<h3>아이디가 존재합니다.</h3>");
				}
				
			}
			
			

		})
		
	})
})

	function callback(){
			//console.log("test");
			// 통신완료 && 정상페이지 라면
			if(xhr.readyState == 4 && xhr.status == 200){
				var msg = xhr.responseText.trim();
				console.log(msg);
				// 만약 응답이 true라면 div에 사용가능합니다. <h3>라는 메세지 출력
				// false 라면 아이디가 존재합니다. <h3> 로 출력
				
				if( msg == 'true' ){ 
					$("#msg").html("<h3>사용가능합니다.</h3>");
				}else {
					$("#msg").html("<h3>아이디가 존재합니다.</h3>");
				}
			}
		}


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
				<td><input type="text" name="id" id='id' /></td>
				<td><input type="button" value="중복확인" id="중복확인" /></td>
				<td><div id=msg></div></td>
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