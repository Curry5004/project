<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%--page 디렉티브를 사용하여 에러가 발생 시 원하는 jsp로 이동하도록 해줌 --%>
<%@ page errorPage="/error/errorMessage.jsp"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
name 파라미터 값 <%=request.getParameter("name").toUpperCase() %>
</body>
</html>