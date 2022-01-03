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
	${vals=[20,17,30,2,9,23]; sortedVals=vals.stream().sorted().toList()}
	<hr>
	<%-- 기본적으로 sorted는 오른차순으로 정리하지만 아래와 같이 작성하여 내림차순으로 작성할 수 있다.
		자세히 알고싶으면 java 에서 sort가 어떻게 움직이는지 확인하면 도움이 된다.
	 --%>
	${vals=[20,17,30,2,9,23]; sortedVals=vals.stream().sorted((x1, x2) -> x1<x2 ? 1 :-1).toList()}
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
	
	
	${sortedMem = members.stream().sorted((m1,m2) -> m1.age.compareTo(m2.age)).map(m->m.name).toList();'' }
	${sortedMem }
	
	<%--이 method를 확실히 이해하기 위해 min, max, sort 이 method들이 어떠한 과정을 거쳐서 진행되는지를 중점적으로 보면 더욱 이해에 도움이 된다. --%>
</body>
</html>