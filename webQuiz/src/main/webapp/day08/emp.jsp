<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>

<script>
$(function(){
	$("#btn").on("click", function(){
		
		//console.log("test");
		
		$.ajax({
			type : "GET",
			async : true,
			url : "search2.jsp",
			dataType : "html",
			data : {"empno":$("#empno").val()},
			success :
				function(response, status, request){
				console.log(response);
				$("#info").html("<h6>"+response+"</h6>")
				
			}
			
			
			
		})
		
		
	})
})
</script>
</head>
<body>
<!-- 비동기 방식  -->

<input type="text" name="empno" id="empno" />
<input type="button" value="empno" id="btn" />

<div id="info">
<h6>사원명</h6>
</div>
</body>
</html>