<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML 문서의 재목</title>
</head>
<body>
 <%
 	String bookTitle = "JSP 프로그래밍";
 	String author = "최범균";
%>
<!-- %>스크립트 릿-->
<b><%=bookTitle %></b>(<%= author %>)입니다.
</body>
</html>