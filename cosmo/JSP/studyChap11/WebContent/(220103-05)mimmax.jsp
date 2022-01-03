<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="studyChap11.Member, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${vals=[20,17,30,2,9,23]; '' }
	${vals.stream().min().get()  }
	<hr>
	<%
		List<Member> memberList = Arrays.asList(
				new Member("홍길동", 20),
				new Member("이순신", 54),
				new Member("유관순", 19),
				new Member("왕건", 42)
				);
		request.setAttribute("members", memberList);
	%>
	${maxAgeMemOpt = members.stream().max((m1,m2) -> m1.age.compareTo(m2.age)); '' }
	${maxAgeMemOpt.get().name }<br>
	${maxAgeMemOpt.get().age }세<br>
	<br>
	${minxAgeMemOpt = members.stream().min((m1,m2) -> m1.age.compareTo(m2.age)); '' }
	${minxAgeMemOpt.get().name }<br>
	${minxAgeMemOpt.get().age }세<br>
</body>
</html>