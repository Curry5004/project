<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/studyChap14/update/update.jsp" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="memberID" size="10"/></td>
			<td>이름</td>
			<td><input type="text" name="name" size="10" /></td>
		</tr>
		<tr>
			<td colspan="4"><input type="submit" value="변경"/></td>
		</tr>
	</table>
</form>
</body>
</html>