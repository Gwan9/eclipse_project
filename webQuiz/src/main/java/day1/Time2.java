package day1;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/time2.do")
public class Time2 extends HttpServlet{
//	1. SimpleDateFormat   2. Date 클래스에 있는 메서드
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
		String time = sdf.format(d);
		
		int y = d.getYear();
		int M = d.getMonth();
		int D = d.getDate();
		int h = d.getHours();
		int m = d.getMinutes();
		int s = d.getSeconds();
		
		String time2 = (1900+y)+"년 "+M+"월 "+D+"일 "+h+"시 "+m+"분 "+s+"초 ";
		
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h2>"+ time +"</h2>");
		out.println("<h2>"+ time2 +"</h2>");
			
		out.println("</body>");
		out.println("</html>");
 
	}
	
	
	
}
