<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--pageContext 객체 --%>
	<% pageContext.getOut().println("안녕하세요"); %><br>
	
	<%--어플리케이션 객체  --%>
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		while(initParamEnum.hasMoreElements()){
			String initParamName = initParamEnum.nextElement();
	%>
			<%=initParamName %>	<br>
			<%=application.getInitParameter(initParamName) %> <br>
	<%
		}
	%>
	
	
	<%= application.getServerInfo() %> <br>
	<%= applicaiton.getMajorVersion %> <br>
</body>
</html>