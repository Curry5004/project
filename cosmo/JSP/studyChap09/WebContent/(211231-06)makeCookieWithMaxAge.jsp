<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Cookie cookie = new Cookie("onem", "1min");
	cookie.setMaxAge(60); //60초 * 60분 = 1시간
	response.addCookie(cookie);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키 유효시간 설정</title>
</head>
<body>
	
	유효시간이 1분인 onem 쿠키 생성
</body>
</html>