package simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
	
	}
	@Override
	protected void doPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
	
	}
	private void processRequest(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException{
		String type = req.getParameter("type");
		
		Object resultObject = null;
		if(type==null||type.equals("greeting")) {
			resultObject = "안녕하세요";
		} else if (type.equals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject ="Invalid Type";
		}
		req.setAttribute("reslt", resultObject);
		
		RequestDispatcher dispatcher =
				req.getRequestDispatcher("/simpleView.jsp");
		dispatcher.forward(req, resp);
		
	}
}
