<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forTokens</title>
</head>
<body>
콤마와 점을 구분자로 사용: <br />
<hr />
<%--delims을 기준으로 하여 문자열을 하나씩하나씩 끊어줌. --%>
<c:forTokens var="token" items="빨강색, 주황색. 노란색. 초록색, 파랑색, 남색. 보라색" delims=",.">
	${token }
</c:forTokens>

</body>
</html>