<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 어디에서 접속하던 영어로 뽑으라는  명령어<fmt:setLocale value="en"/>--%>
<fmt:setBundle var="message" basename="resource.message"/>
<fmt:message bundle="${message}" key="TITLE" var="title"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title}</title>
</head>
<body>

<fmt:message bundle="${message}" key="GREETING"/>
<br />
<c:if test="${! empty param.id }">
	<fmt:message bundle="${message}" key="VISITOR">
		<fmt:param value="${param.id }"/>
	</fmt:message>
</c:if>
</body>
</html>