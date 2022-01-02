<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>applicaiton 기본 객체 속성 보기</title>
</head>
<body>
<%
	Enumeration<String> attrEnum = application.getAttributeNames();
	while(attrEnum.hasMoreElements()){
		String name = attrEnum.nextElement();
		Object value = application.getAttribute(name);		
%>
		application 속성: <b><%=name %></b>=<%=value %> <br />
<%
	}
%>
<%-- 해당하는 applicaiton에 저장된 속성을 한번에 다 볼 수 있음 다 어플리케이션 안에 이게 있는 것을 확인 할 수 있음 --%>
</body>
</html>