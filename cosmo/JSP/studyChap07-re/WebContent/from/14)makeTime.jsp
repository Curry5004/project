<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal);
	String path1 = "/to/15)viewTime.jsp"; //절대경로
	String path2 = "../to/15)viewTime.jsp"; //상대경로
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="<%= path2%>"></jsp:forward>
</body>
</html>