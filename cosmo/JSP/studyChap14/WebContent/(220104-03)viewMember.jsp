<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%
	String memberID=request.getParameter("memberID");	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 상세 정보</title>
</head>
<body>
	
	<%
			//1 번 JDBC 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection conn=null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try{
				
				String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?"+
					"useUnicode=true&characterEncoding=utf8";
				String dbUser = "jspexam";
				String dbPass = "jsppw";
				String query = "select * from MEMBER where memberid='"+memberID+"'";
				
				//2.데이터베이스 커넥션 생성
				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				//3. Statement 생성
				stmt = conn.createStatement();
				//4. 쿼리 실행
				rs = stmt.executeQuery(query);
				//5. 쿼리 실행 결과 출력
				if(rs.next()){	
		%>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><%=memberID%></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><%= rs.getString("PASSWORD") %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= rs.getString("NAME") %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= rs.getString("EMAIL") %></td>
			</tr>
		</table>
			<%} else { %>
			<%= memberID %>에 해당하는 정보가 존재하지 않습니다.
		<% 	} 
		}  catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally{
			//6. 사용한 statement 종료
			if(rs != null) try{rs.close();} catch(SQLException ex){}
			if(stmt != null) try{stmt.close();} catch(SQLException ex){}
			if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
		%>
</body>
</html>