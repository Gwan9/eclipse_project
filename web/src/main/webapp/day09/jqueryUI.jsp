<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jqueryUI.jsp</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
</head>
<body>
	<div class="container">
		<table class="table table-hover">
			<caption>CATALOG</caption>
			<tr>
				<th>NO</th>
				<th>제품명</th>
				<th>가격</th>
			</tr>

			<tr>
				<td>1</td>
				<td>김말이</td>
				<td>5480</td>
			</tr>

			<tr>
				<td>2</td>
				<td>햇반</td>
				<td>25757</td>
			</tr>

		</table>


	</div>

	<div id="accordion">
		<h3>Section 1</h3>
		<div>
			<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget,
				quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida
				in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam
				mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a
				velit eu ante scelerisque vulputate.</p>
		</div>


	<h3>Section 2</h3>
	<div>
		<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget,
			quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in,
			condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi.
			Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu
			ante scelerisque vulputate.</p>

	</div>

	<h3>Section 3</h3>
	<div>
		<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget,
			quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in,
			condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi.
			Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu
			ante scelerisque vulputate.</p>
	</div>
	</div>

</body>
</html>