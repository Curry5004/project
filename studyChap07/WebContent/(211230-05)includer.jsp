<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 디렉티브</title>
</head>
<body>
<%
	 int number= 10;
%>

includer.jsp 에서 지정한 번호 <%= number%> <p>     </p>
<%@ include file = "/(211230-05)includer.jspf" %>
공통 변수 DATAFOLDER = "<%= dataFolder %>"

</body>
</html>