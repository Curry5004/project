package jdbc;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class MySQLDriverLoader extends HttpServlet {
	@Override
	public void init(ServletConfig config)  throws ServletException {
		try {
			//1. jdbc 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
		} catch(Exception ex) {
			throw new ServletException(ex);
		}
	}
}
