<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int number = 10;
%>
<%--  여기선 page라 하지 않고 file라고 한다. --%>
<%@ include file="/10)include.jspf" %>
<%-- 그리고 디렉티브 include file에 들어갈 jsp 관습적ㅈ으로 확장자명을 jspf로 해준다 --%>

<%= alpha%>

</body>
</html>