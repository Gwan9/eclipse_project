package day1;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/cumvalue.do")
public class CumValue extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPro(req, resp);
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPro(req, resp);
		
	}

	private void doPro(HttpServletRequest req, HttpServletResponse resp)
			throws UnsupportedEncodingException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String sum = req.getParameter("sum");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		
		int a = Integer.parseInt(sum);
		int s = 0;
		for(int i=0;i<=a;i++) {
			s+=i;
		}
		out.println("sum :" + s);
		
		out.println("</body>");
		out.println("</html>");
	}
}
