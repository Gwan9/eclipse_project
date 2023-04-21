package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet ("/myServlet.do")
public class MyServlet01 extends GenericServlet{
	// GenericServlet => 추상클래스 (미완성)
	// web => 사용자 요청이 와야함, tomcat 항상 대기중 
	//(첫호출)init() -> service() -> service() -> 반복... -> (서버종료시, 메모리 부족시, 이전 servlet 제거필요할 때,)destroy()
	// init() :초기화 메서드
	// service() : 사용자에게 화면을 제공
	// destroy() : 서블릿 제거
	
	@Override
	public void init() throws ServletException {
		
		System.out.println("초기화 메서드 호출중");
	}
	@Override
	public void destroy() {
		
		System.out.println("서블릿 제거중");
	}
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("Service() 호출중");
		

		PrintWriter out = res.getWriter();	// 쓰기객체
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Service() 호출중 </h1>");
		out.println("</body>");
		out.println("</html>");
		
	}
}
