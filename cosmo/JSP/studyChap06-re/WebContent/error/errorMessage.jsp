<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%--에러페이지를 작성할 때도 조건이 있다. page 디렉티브에서 isErrorPage속성을 부여해주어야 하며 이는 true여야 한다
해당 속성이 true가 되면 지정된 jsp가 exception 기본 객체를 사용 할 수 있게 된다.
만약 이를 사용하지 않는다면 exception 객체를 사용 할 수 없다.
해당 속성값을 설정하지 않아도 이 jsp를 지칭한 jsp에서 에러가 발생했을 때 이 jsp로 이동되긴 한다. 허나 이럴땐 exception은 객체를 사용할 수 없으므로
그 점을 집중해서 볼 것
 --%>
<%@ page isErrorPage="true" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	저런~ 에러가 나버렸는걸?? 이걸 어쩌지~ <br />
	에러 타입:<%= exception.getClass().getName() %><br>
	에러 메시지:<%= exception.getMessage() %>
</body>
</html>