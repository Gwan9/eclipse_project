<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>
<style>
#container {
	margin: 0 auto;
}
#box1 {
position : absolute;
top : 90px;
left : 700px;
width : 500px;
height : 500px;
border : 1px solid red;
float : left;
padding : 20px;
margin :2px;
}
img {
	width : 600px;
	height :600px;
}

.pname {
	
	border :1px solid red;
	width : 500px;
	height : 70px;
	font-weight: bold;
	font-size: 25px;
}

.price {
	border :1px solid red;
	width : 200px;
	height : 50px;
	font-weight: bold;
	font-size: 25px;
}

.dis {
	border :1px solid red;
	width : 200px;
	height : 50px;
	font-weight: bold;
	font-size: 25px;
}

.del {
	width : 200px;
	height : 50px;
	
	border :1px solid red;
	font-weight: bold;
	font-size: 25px;
	text-decoration: line-through;
}
}
img{
	width: 500px;
	height: 500px;
}

</style>
</head>
<body>
	
	<!-- 상품의 상세정보 출력 -->

	<%
	String p = request.getParameter("pno");
	int pno = Integer.parseInt(p);
	ProductDAO dao = new ProductDAO();
	ProductVO vo = dao.getOne(pno);
	//out.println("<h2> 상품명" + vo.getPname() + "</h2>");
	%>
	<div id="container">

		<div class="img">
			<img src="<%=vo.getBigfile()%>" alt="" />
		</div>
		
		<div id="box1">
		
		<p class="pname"><%=vo.getPname()%></p>
		<p class="dis"><%=vo.getDcratio()%>% 할인</p>
		<p class="del"><%=vo.getPrice()%></p>
		<p class="price">
			<%=Math.round(vo.getPrice() * (1 - vo.getDcratio() * 0.01))%>원
		</p>
		</div>




	</div>
</body>
</html>