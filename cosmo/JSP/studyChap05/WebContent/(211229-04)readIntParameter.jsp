<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
	초기화 파라미터 목록:
	<ul>
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		while(initParamEnum.hasMoreElements()){
			String initParamName = initParamEnum.nextElement();
	%>
		<li>
			<%= initParamName %>=
			<%= application.getInitParameter(initParamName) %>
		</li>
	<%
		}
	%>
	</ul>
	
	<%-- xml은 웹페이지 전역에 영향을 주는 변수를 선언해준다고 생각하면됨.
	해당 페이지에 전역에 찍히는 모든 페이지? 그런 느낌으로 접근하면 좋을것같다. --%>
</body>
</html>