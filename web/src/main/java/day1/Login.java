package day1;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet ("/login.do")
public class Login extends HttpServlet{
	// 200 : 정상처리
	// 404 : 자원을 못 찾음
	// 405 : 방식을 지원하지 않음
	// 500 : 서버쪽 프로그램 에러
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPro(req, resp);
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 한글처리
		doPro(req, resp);
		
	}
	private void doPro(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		// 2. 파라미터 값 가져오기
		String id = req.getParameter("id"); // html에서의 name값
		String pwd = req.getParameter("pwd"); 
		
		// 3. PrintWriter 객체 얻어오기 
		PrintWriter out = resp.getWriter();
		
		// 4. 브라우저 출력
		out.println("<html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("</head>");
		out.println("<body>");
		
		
		out.println("<h2>ID : " + id +  "</h2>");
		out.println("<h2>PW : " + pwd + "</h2>");
		
		
		out.println("</body>");
		out.println("</html>");
	}
}
