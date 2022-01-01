<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.addCookie(Cookies.createCookie("name", "최범균"));
	response.addCookie(Cookies.createCookie("id", "madvirus", "studyChap09", -1));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>java를 사용한 cookie 사용 예씨 </title>
</head>
<body>
	JAVA의 Cookies를 사용하여 쿠키를 생성


</body>
</html>