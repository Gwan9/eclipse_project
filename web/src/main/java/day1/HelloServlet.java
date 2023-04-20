package day1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Servlet
// 웹에서 동작하는 작은 자바 프로그램
	
// 만드는 순서
// 1. HttpServlet 상속
// 2. doGet() @override
// 3. 내가 만든 서블릿을 등록

// webservlet 어노테이션
@WebServlet("/hello2.do")
public class HelloServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet() method");
		
		// 응답객체로 부터 PrintWriter 개체를 얻어오기
		PrintWriter out =resp.getWriter();
		// reg : request 사용자의 요청 객체
		// resp : 서버의 응답을 객체로 만든 것
		
		// 사용자 브라우저에 이 내용을 전달
		out.println("<html>");
		out.println("<head><title>My Servlet</title></head>");
		out.println("<body>");
		for(int i=0;i<100;i++) {
		out.println("<h2>Hello Servelet World</h2>");
		}
		out.println("</body>");
		
		out.println("</html>");
	}
}
