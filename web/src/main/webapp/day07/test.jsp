<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
// 버튼을 클릭하면 show 함수를 실행
	$(function(){
		$("#btn").on("click", show())
	})
// show() 에서는 웹브라우저 콘솔에 메세지 출력
	function show(){
	var w = 300;
	var h = 300;
	var x = 100;
	var y = 100;
	var spec = "width="+w+", height="+h+", left="+x+", top="+y
	+",menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0";
	/* console.log("show() 출력"); */
	window.open("newPage.jsp", "_blank", spec);
}

</script>

</head>
<body>

<input type="text" name="txt2" id="txt2" />
<input type="button" value="버튼" id="btn" />
</body>
</html>