package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class NowServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("현재시간은");
		out.println(new Date());
		out.println("입니다.");
		out.println("");
		out.println("</body></html>");
		
	}
	
}
