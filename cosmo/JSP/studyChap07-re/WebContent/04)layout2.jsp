<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td colspan="2">
			<jsp:include page="/view/top.jsp"></jsp:include>	
		</td>
		
	</tr>
	<tr>
		<td>
		<jsp:include page="/view/left.jsp"></jsp:include>	
		</td>
		<td> 글자 작성부 레이아웃 2</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="/view/bottom.jsp"></jsp:include>	
		</td>
	</tr>
</table>
</body>
</html>