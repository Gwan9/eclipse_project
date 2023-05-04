<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap.jsp</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<style>
div {
	border: 1px solid red;
}
</style>
</head>
<body>
	<div class="container">
		<!-- 기본 격자 시스템(12칸까지 ) -->
		<!-- 행 ==>row 열 ==> col -->
		<div class="row">
			<div class="col">1</div>
			<div class="col">2</div>
			<div class="col">3</div>
		</div>
		
		<div class="row">
			<!-- div.col{$}*4 -->
			<div class="col">1</div>
			<div class="col">2</div>
			<div class="col">3</div>
			<div class="col">4</div>
		</div>
		
		<div class="row">
			<div class="col">5</div>
			<div class="col">6</div>
			<div class="col">7</div>
			<div class="col">8</div>
			<div class="col">9</div>
		</div>
		
	</div>
</body>
</html>