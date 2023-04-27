<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload=function(){
	var btn = document.getElementById("btn");
	btn.onclick=openKakaoPostCode;
	
}
function openKakaoPostCode(){
	console.log("openKakaoPostCode 함수 호출중");
	new daum.Postcode({
		oncomplete: function(data){
			// 팝업에서 검색 결과 항목을 클릭했을 때
			//실행 할 코드를 작성하는 부분
			console.dir(data);
			//data.zonecode;  우편번호
			document.getElementById("post1").value=data.zonecode;
			document.getElementById("addrs").value=data.roadAddress;
			document.getElementById("addrs2 ").value=data.jibunAddress;
		}
		
	}).open();
	
}
</script>
</head>
<body>
	<h1>우편번호</h1>
	 <!-- API(Application Programming Interface) -->
	<input type="text" name="" id="post1" />
	<input type="button" value="우편번호찾기" id="btn" /> <br />
	도로명 : <input type="text" name="" id="addrs"  size="100" /> <br />
	지번 : <input type="text" name="" id="addrs2" size="70" /> <br />
</body>
</html>