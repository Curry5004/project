<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page 객체를 생성한 뒤 윔포트 하여 해당 객체 선택 및 ㅅㅇ서 ㅂ앟양 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar 클래스 이용</title>
</head>
<body>


<!-- 
예제 3.4-
아까 처럼 임포트를 하여 쓰는 방법도 있지만 이런식으로 임포트를 하지 않고도 뺴올 수도 있다 -->
	<%
	java.util.Calendar cal= java.util.Calendar.getInstance();	
	%>
오늘은
	<%= cal.get(cal.YEAR) %>년
	<%= cal.get(cal.MONTH)+1 %>월
	<%= cal.get(cal.DATE) %>일 입니다.
	
</body>
</html>