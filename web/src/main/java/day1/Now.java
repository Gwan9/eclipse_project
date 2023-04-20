package day1;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/now.do")
public class Now extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doPro(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPro(req, resp);
	}

	private void doPro(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException, IOException {
		// 1. 한글처리
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		// 2. PrintWriter 객체 얻어오기
		
		// 3. 오늘날짜 현재시간을 계산
		PrintWriter Out = resp.getWriter();
		
		
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd:hh:mm:ss");
		String time = sdf.format(d);
		
		// 4. 브라우저 출력
		Out.println("<html>");
		Out.println("<head>");
		Out.println("<title>"+time+"</title>");
		
		Out.println("<meta charset='UTF-8'>");
		Out.println("</head>");
		Out.println("<body>");
		
		
		Out.println("<h2> 현재시간 " + time + " 입니다.</h2>");
	
		Out.println("</body>");
		
		Out.println("</html>");
	}
}
