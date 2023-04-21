package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/day2/rndPoster.do")
public class RandomPoster extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>랜덤포스터</title>");
	
		out.println("<script>");
		
		out.println("window.onload = function(){");
		out.println("alert('어때요 힘들죠');");
		out.println("}");
		
		out.println("</script>");
		
		out.println("</head>");
		out.println("<body>");
		
		int rnd = (int)(Math.random()*10)+1;
		
		
		out.println("<img src='../images/movie_image"+ rnd + ".jpg'>");
		
		
		out.println("</body>");
		out.println("</html>");
		
		
	}
}
