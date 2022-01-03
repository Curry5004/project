<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setAttribute("price", 12345);

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 함수 호출</title>
</head>
<body>
	오늘은 <b>${elfunc:formatNumber(price,"#.##0")}</b>
</body>
</html>