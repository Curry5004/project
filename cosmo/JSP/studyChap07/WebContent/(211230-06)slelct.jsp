<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/(211230-06)view.jsp">
	<select name="code" id="">
		<option value="A">A</option>
		<option value="B">B</option>
		<option value="C">C</option>
	</select>
	<input type="submit" value="이동" />
</form>
</body>
</html>