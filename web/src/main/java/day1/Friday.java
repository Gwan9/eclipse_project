package day1;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/friday.do")
public class Friday extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doProcess(req, resp);
	}
	private void doProcess(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException, IOException {
		// 1. 한글처리
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		// 2. 파라미터 값 가져오기
		String msg = req.getParameter("msg");
		// 3. PrintWriter 객체 얻어오기
		PrintWriter out = resp.getWriter();
		
		// 4. 브라우저 출력
		
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h2>오늘은 금요일같은 목요일 입니다 : "+ msg + "</h2>");
		
		
		out.println("</bod>");
		
		out.println("</html>");
	}
	
	
	
}

	
	

