<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Calendar cal = (Calendar)request.getAttribute("time");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=cal.get(Calendar.HOUR) %>시 <br />
<%=cal.get(Calendar.MINUTE) %>분 <br />
<%=cal.get(Calendar.SECOND) %>초 <br />
</body>
</html>