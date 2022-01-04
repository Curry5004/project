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
include 전 name 파라미터의 값 = <%=request.getParameter("name") %> <br />

<jsp:include page="08)body_sub.jsp" flush="false">
	<jsp:param name="name" value="제왑삐"></jsp:param>
</jsp:include>

include 전 name 파라미터의 값 = <%=request.getParameter("name") %> <br />

</body>
</html>