<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
include 전 파라미터 값:<%=request.getParameter("name") %>
<hr />
	<jsp:include page="(211230-04)body_sub.jsp">
		<jsp:param value="최범균" name="name"/>
	</jsp:include>
<hr />
include 후 파라미터 값:<%=request.getParameter("name") %>

</body>
</html>