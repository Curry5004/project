<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page 객체를 생성한 뒤 윔포트 하여 해당 객체 선택 및 ㅅㅇ서 ㅂ앟양 -->
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar 클래스 이용</title>
</head>
<body>
	<%
	Calendar cal=Calendar.getInstance();	
	%>
오늘은
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH)+1 %>월
	<%= cal.get(Calendar.DATE) %>일 입니다.
	
</body>
</html>