<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>check.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script type="text/javascript">

$("#date1").change(function (){
	var date1 = $("#date1").val();
})
$("#date2").change(function (){
	var date2 = $("#date2").val();
})
</script>
</head>
<body>

	<input type="radio" name="대상" id="student"> 학생
	<input type="radio" name="대상" id="teacher"> 교사
	
	
	<div class="form-floating">
  		<select class="form-select" id="floatingSelect" aria-label="Floating label select example">
    		<option selected>반 선택</option>
    		<option value="1">A 반</option>
    		<option value="2">B 반</option>
    		<option value="3">C 반</option>
 		</select>
	</div>
	
	<input type="text" name="textClass" id="textClass">
	<input type="button" name="btnClass" id="btnClass" value="강의명">
	<input type="text" name="textSearch" id="textSearch">
	<input type="button" name="btnSearch" id="btnSearch" value="조회">
	
	<input type="text" name="textSend" id="textSend">
	<input type="button" name="btnSend" id="btnSend" value="발송">
	
	<input type="date" name="date1" id="date1" value=""> 부터 
	<input type="date" name="date2" id="date2" value=""> 까지
	
	<div><h5>총 학생 수 : </h5></div>
	
	<ul class="nav justify-content-end">
	  <li class="nav-item">
	    <a class="nav-link active" aria-current="page" href="#">10개씩</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">20개씩</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">30개씩</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">50개씩</a>
	  </li>
	</ul>
	
	<table class="table table-dark table-striped">
	<tr>
	<th>학생번호</th>
	<th>학생명</th>
	<th>반</th>
	<th>학교이름</th>
	<th>학교이름</th>
	<th>전화번호</th>
	<th>학부모전화번호</th>
	<th>등교</th>
	<th>지각</th>
	<th>결석</th>
	<th>조퇴</th>
	<th>편집</th>
	<th>비고</th>
	</tr>
	
	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><input type="radio" name="출석상태" id="attendance"></td>
	<td><input type="radio" name="출석상태" id="late"></td>
	<td><input type="radio" name="출석상태" id="absent"></td>
	<td><input type="radio" name="출석상태" id="earlyDismissal"></td>
	<td><input type="radio" name="출석상태" id="edit"></td>
	<td><input type="text" name="note" id="note"></td>
	</tr>
	
	</table>
</body>
</html>