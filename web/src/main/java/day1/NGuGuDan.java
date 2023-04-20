package day1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:8080/web/gugudan2.do

@WebServlet("/gugudan2.do")
public class NGuGuDan extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 사용자 ==> 서버 : req (request)
		String dan = req.getParameter("dan");
		// dan 을 숫자로 형변환
		int d = Integer.parseInt(dan);
		System.out.println("입력받은 구구단 : " + d);
		// 서버 ==> 사용자 : resp
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>구구단</title>");
		out.println("</head>");
		out.println("<body>");
		for(int i=0;i<=9;i++) {
			out.println("<h3>"+ d + " * " + i + " = " + d*i + "</h3>");
		}
		out.println("</body>");
		out.println("</html>");
		
		
	}
}
