<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("memberId");
	if(id != null && id.equals("cosmo")){
		response.sendRedirect("/studyChap03/(211229-05)index.jsp");
	}
	//id 값이 null이 들어올때는 언제인가? jsp jsp? 
	//id 값에 다른 문자열이 올떄는 언제인가? jsp?memberId ->"" jsp?memberId=123 ->"123" 기본적으로 이 떄 입력되는 값은 문자열 값으로 들어오니까 다른 타입으로 박소핑므녕 변수를 바꿔줘야 할 필요성이 있다
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	잘못된 아이디 입니다.
</body>
</html>