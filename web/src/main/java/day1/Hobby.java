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
		
		String h =req.getParameter("hobby");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
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
