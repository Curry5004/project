<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name!=null && value !=null){
		application.setAttribute(name, value);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(name!=null&&value!=null){
	%>
		<%=name %>, <%=value %>
	<%
	} else {
	%>
		name과 value가 존제하지 않습니다.
	<%
	}
	%>
</body>
</html>