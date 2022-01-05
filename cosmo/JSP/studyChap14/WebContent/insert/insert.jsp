<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	
	int updateCount=0;
	
	//1 번 JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	PreparedStatement pstmt = null;
	
	try{
		
		String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?"+
			"useUnicode=true&characterEncoding=utf8";
		String dbUser = "jspexam";
		String dbPass = "jsppw";
		
	
		//2.데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		//3. Statement 생성
		pstmt = conn.prepareStatement(
				"insert into member value(?,?,?,?)"
				);
		pstmt.setString(1,memberID);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,email);
		
		pstmt.executeUpdate();
		
		}catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally{
			//6. 사용한 statement 종료
			if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
			if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록</title>
</head>
<body>
	Member 테이블에 새로운 레코드를 등록했습니다.
</body>
</html>