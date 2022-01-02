<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--

<jsp:foward> 엑션 태그를 실행하면 
생성했던 출력결과는 모두 제거된다	
 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>from.jsp의 재목</title>
</head>
<body>

이 페이지는 from.jsp가 생성한 것입ㄴ다.
<jsp:forward page="/to/to.jsp"/>


</body>
</html>