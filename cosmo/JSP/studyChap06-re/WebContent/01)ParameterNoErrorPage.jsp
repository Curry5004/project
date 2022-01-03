<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 일부러 error를 유도. 이렇게 유도해서 페이지가 나오면 코드도 노출되고 사용자에게 안좋음. 그래서 에러페이즈를 따로 만들어서 에러가 발생하면 그로 보내려고 함 --%>
	<%--name 파라미터 값 <%=request.getParameter("name").toUpperCase() %> --%>
	
	
	<%try{%> 
		<%= request.getParameter("name").toUpperCase()%>
		<% }catch(Exception ex){
	%>
		name 파라미터가 올바르지 않습니다.
	<%
		}
	%>
	<%-- 이런식으로 try-catch를 사용하여 에러가 발생시 개발자가 보여졌으면 하는 화면으로 이동시킨다. 이 --%>
	
</body>
</html>