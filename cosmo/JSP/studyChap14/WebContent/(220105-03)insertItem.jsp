<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%
	//의도적으로 에러를 발생시켰을 때 
	String idValue = request.getParameter("id");
	
	Connection conn=null;
	PreparedStatement pstmtItem = null;
	PreparedStatement pstmtDetail = null;
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?"+
			"useUnicode=true&characterEncoding=utf8";
	String dbUser = "jspexam";
	String dbPass = "jsppw";
	
	Throwable occuredException = null;
	
	try{
		int id = Integer.parseInt(idValue);
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		//커밋 설정
		conn.setAutoCommit(false);
		
		
		pstmtItem = conn.prepareStatement("insert into ITEM values(?, ?)");
		pstmtItem.setInt(1, id);
		pstmtItem.setString(2, "상품이름"+id);
		pstmtItem.executeUpdate();
		
		//error 파라미터가 존제할 경우 Exception을 발생시킨다.
		if(request.getParameter("error")!=null){
			throw new Exception("의도적 익셉션 발생");
		}
		
		pstmtDetail = conn.prepareStatement("insert into ITEM_DETAIL values(?, ?)");
		pstmtDetail.setInt(1, id);
		pstmtDetail.setString(2, "상세 설명"+id);
		pstmtDetail.executeUpdate();
		
		conn.commit();
	} catch(Throwable e){
		if(conn!=null){
			try{
				conn.rollback();
			} catch(SQLException ex){}
		}
		occuredException = e;
	} finally{
		if(pstmtItem!=null) try{pstmtItem.close();}catch(SQLException ex){}
		if(pstmtDetail!=null) try{pstmtDetail.close();}catch(SQLException ex){}
		if(conn!=null) try{conn.close();}catch(SQLException ex){}
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ITEM ITEM_DETAIL등록</title>
</head>
<body>
	<%
		if(occuredException != null){
	%>
		에러가 발생하였음. <%=occuredException.getMessage() %>
	<%		
		} else {
	%>
		데이터가 성공적으로 등록되었습니다.
	<%
		}
	%>
</body>
</html>