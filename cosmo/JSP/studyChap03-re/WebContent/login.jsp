<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	if(id!=null&&id.equals("hong")){
		response.sendRedirect("/studyChap03-re/index.jsp");
		//response.sendRedirect("https://naver.com");
		
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디를 입력해주세요</title>
</head>
<body>
	올바르지 않은 아이디입니다.
</body>
</html>