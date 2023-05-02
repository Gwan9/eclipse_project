<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/httpRequest.js"></script>
<script>
	function prt(){
		console.log("prt() 호출중");
		var txt = document.getElementById("txt").value;
		var params = "txt=" + txt;
		
		sendRequest("search.jsp", params, callback, "GET");
		// search.jsp?txt ==> 김말이 이미지경로 출력
				
	}
	function callback(){
		if( xhr.readyState == 4 && xhr.status == 200){ // 통신이 완료되면
			 // 정상 페이지라면
				console.dir(xhr);
				document.getElementById( "img" ).src = xhr.responseText;
				
		}
	}
</script>
</head>
<body>
<input type="text" name="txt" id="txt" />
<input type="button" value="출력" onclick ="prt();" />

<div id="myconsole">
	<img alt="뽀로로" src="../images/before.PNG" id="img" name="txt">
</div>
</body>
</html>