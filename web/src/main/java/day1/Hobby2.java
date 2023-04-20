package day1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/hobby2.do")
public class Hobby2 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 한글
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		// 2. 파라미터
		
		String[] hList = req.getParameterValues("hobby");
		
		// 3. 쓰기
		
		PrintWriter out = resp.getWriter();
		
		// 4. 출력
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		for(String x:hList) {
			out.println("<h1>당신의 취미는 "+ x +" </h1>");
		}
		out.println("</body>");
		
		
		out.println("</html>");
	}
}
