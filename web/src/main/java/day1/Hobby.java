package day1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/hobby.do")
public class Hobby extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 파라미터 값 가져오기
		String h =req.getParameter("hobby");
		
		// 2. PrintWriter 객체 얻어오기
		PrintWriter out = resp.getWriter();
		
		resp.setCharacterEncoding("UTF-8");
		// 3. 브라우저 출력
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>hobby</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>당신의 취미는 " +h +"입니다. </h2>");
		out.println("</body>");
		out.println("</html>");
		
		
	}
}
