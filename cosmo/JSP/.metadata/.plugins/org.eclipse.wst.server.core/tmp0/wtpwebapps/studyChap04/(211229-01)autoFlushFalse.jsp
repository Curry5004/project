<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>autoFlush 속성값 FALSE 예제</title>
</head>
<body>
<%
	for(int i=0; i<1000; i++){
		
%>
	1234
<%		
	}
%>
<%--해당 코드를 진행 시 java.io.IOException: 오류: JSP 버퍼 오버플로우 가 발생하며 진행이 되지 않는다 --%>
</body>
</html>