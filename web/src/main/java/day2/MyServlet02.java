package day2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/myServlet2.do")
public class MyServlet02 extends HttpServlet {


	@Override
	public void init() throws ServletException {
		System.out.println("init() 호출중");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy() 호출중");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service() 호출중");
	}
	
}
