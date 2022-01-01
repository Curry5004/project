<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out 객체 사용</title>
</head>
<body>
	<%
		out.println("안녕하세요?");
	%>
	<br />
	<%= "표현식 안녕하세요" %>
	
	<%--둘 다 안녕하세요를 출력하지마 위에는 out 객체로, 다른 하나는 표현식으로 출력하였는데
	기본적으로 이런식으로 출력할 일이 있으면 표현식으로 출력하는것이 좋다.
	그렇다면 out은 언제 쓰는가? 스크립트릿안에서 중간중간 결과를 내야할 때 때 같은 경우를 보자
	
	<% if(grade>10){%>
		<%= gradeStringA%>
	<%} else if(grade >5){%>
		<%= gradeStringB%>
	<%}%>
	
		
	 --%>
	
	<br />
	out 개본 객체를 활용하여
	<%
		out.println("출력한 결과입니다");
	%>
</body>
</html>