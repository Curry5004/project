<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>use_eaxmple1</title>
</head>
<body>
	<c:set var="x" value="1" />
	jsp에서 x는 =${x} <br />
	<my:example1>
		tagbody, x=${x} <br />
		<%-- 사용 페이지에서 x를 바꿔도 태그 파일에는 대입이 안됨 --%>
		<c:set var="x" value="3"/>
		jsp에서 x를 3으로 변경		
	</my:example1>
	
	jsp, x=${x} <br />
</body>
</html>