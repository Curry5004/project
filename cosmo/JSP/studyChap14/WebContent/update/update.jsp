<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	
	int updateCount=0;
	
	//1 번 JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;
	Statement stmt = null;
	
	try{
		
		String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?"+
			"useUnicode=true&characterEncoding=utf8";
		String dbUser = "jspexam";
		String dbPass = "jsppw";
		String query = "update MEMBER set NAME ='"+name+"'"+"where memberid ='"+memberID+"'";
	
		//2.데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		//3. Statement 생성
		stmt = conn.createStatement();
		updateCount = stmt.executeUpdate(query);
		}catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally{
			//6. 사용한 statement 종료
			if(stmt != null) try{stmt.close();} catch(SQLException ex){}
			if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름변경</title>
</head>
<body>
	<%
		if(updateCount>0){
	%>
		<%= memberID%>의 이름으로 <%= name %>(으)로 변경
	<%					
		} else {
	%>
		<%= memberID%>가 존재하지 않습니다.
	<%		
		}
	%>
</body>
</html>