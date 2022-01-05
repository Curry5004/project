<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<jsp:setProperty property="password" name="member" param="pass"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			이름:<jsp:getProperty property="name" name="member"/>
		</tr>
		<tr>
			아이디:<jsp:getProperty property="id" name="member"/>
		</tr>
		<tr>
			이메일: <jsp:getProperty property="email" name="member"/>
		</tr>
		<tr>
			비밀번호:<jsp:getProperty property="password" name="member"/>
		</tr>
		
	</table>
</body>
</html>