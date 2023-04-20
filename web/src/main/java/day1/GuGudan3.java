package day1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8080/web/gugudan.do : 구구단 3단 출력

// servlet 어노테이션
@WebServlet("/gugudan.do")
public class GuGudan3 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GuGuDan3() 서블릿 실행중");
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>구구단</title>");
		out.println("</head>");
		out.println("<body>");
		for(int i=0;i<=9;i++) {
			out.println("<h2>3 * " + i + " = " + 3*i + "</h2>");
		}
		
		out.println("</body>");
		out.println("</html>");
		
		
	}
}
