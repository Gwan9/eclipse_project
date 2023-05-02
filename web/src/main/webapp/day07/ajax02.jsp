
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax02.jsp</title>
<script src="../js/httpRequest.js"></script>
<script>
	function hellToServer(){
		console.log("test");
		
		var txt = document.getElementById("txt").value;
		
		var params = "txt=" + txt;
		
		// sendRequest(url, 전달파라미터, 콜백함수명 , 통신방식);
		sendRequest("hello.jsp", params, callback, "GET");
		
		// 통신객체가 hello.jsp?txt=aaa 요청을한다.
				
				
		
	}
	function callback(){
		//console.log("콜백함수 호출중");
		if( xhr.readyState == 4 ){ // 통신이 완료되면
			if( xhr.status == 200 ){ // 정상 페이지라면
				console.dir(xhr);
				document.getElementById( "div1" ).innerHTML = xhr.responseText;
				
			}
		}
	}
</script>

</head>
<body>
<!-- 입력된 파일명을 탐색해서 내용을 화면에 출력
		hello.jsp?txt=aaa 
		
-->
<!-- ajax02.jsp?txt=aaa -->
<input type="text" name="txt" id="txt" />
<input type="button" value="입력" onclick ="hellToServer();" />
<!-- <input type="submit" value="입력" /> -->



<!-- id 가 aaa인 사용자의 이름을 아래 div에 출력 -->
<div id="div1"></div>

</body>
</html>