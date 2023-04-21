package day2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/day2/bigchance.do")
public class BigChance extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Hello 로또 </title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h1> 로또 </h1>");
//		http://localhost:8080/web/day2/bigchance.do
//					      /webapp/images/ball1.png
//			 //localhost:8080/web/images/ball1.png
		
//		out.println("<img src ='http://localhost:8080/web/images/ball1.png'>"); //절대경로
//		out.println("<img src ='../images/ball1.png'>"); //상대경로
		Lotto lt = new Lotto();
		int[] m = lt.getM();
//		System.out.println(Arrays.toString(m));
//		System.out.println(" m[0] : " + m[0]);
		for(int i=0;i<m.length;i++) {
			out.println("<img src ='../images/ball"+m[i]+".png'>");
		}
		out.println("</body>");
		out.println("</html>");
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	
	
}
