
<%@page import="java.util.ArrayList"%>
<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<%
		String p = request.getParameter("pno");
		
		// 현재 세션에서 cart 라는 이름의 속성 객체를 얻어오기
		
		//session.setAttrubute("", ""); ("속성명", "값")
		//session.setAttrubute(""); ("속성명")
		
		Object obj = session.getAttribute("cart");
		
		if( obj == null ){
			// ArrayList 생성
			ArrayList<Integer> cart = new ArrayList<Integer>();
			
			// 세션에 속성으로 지정
			session.setAttribute("cart", cart);
			
			// 세션에서 속성 가져오기
			obj = session.getAttribute("cart");

		}
		// ArrayList 로 형변환
		ArrayList<Integer> cart = (ArrayList<Integer>)obj;
		if (p != null) {
			int pno = Integer.parseInt(p);
			// cart(ArrayList에 추가)
			cart.add(pno);
			System.out.println(" cart : " + cart);
			
			response.sendRedirect("productDetail.jsp?pno="+pno);
			/* int pno = Integer.parseInt(p);
			ProductDAO dao = new ProductDAO(); 
			ProductVO vo = dao.getOne(pno);
			out.println("<h2>"+vo.getPname()+"</h2>"); */
		}else{ // p가 널이라면 처음으로 돌아가
			response.sendRedirect("productList.jsp");
		}
		%>
