<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	//쿠키 생성
	Cookie cookie = new Cookie("cookie", "asd");
	response.addCookie(cookie);
	
	Cookie cookie1 = new Cookie("cookieb", URLEncoder.encode("난리나","utf-8"));
	response.addCookie(cookie1);


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	//쿠키값이 null일 수도 있기떄문에 항상 이를 확인하는 로직이 필요하다
	if(cookies!=null){
		for(int i=0; i<cookies.length;i++){
			if(cookies[i].getName().equals("cookie")){
				Cookie cookie3 = new Cookie("cookie", "rename");
				response.addCookie(cookie3);
			}
		}
	}
	
	Cookie cookie3 = new Cookie("cookieb", "rename");
	cookie3.setMaxAge(0);
	response.addCookie(cookie3);
	
	if(cookies!=null){
		for(int i=0; i<cookies.length;i++){
		%>
			<%=cookies[i].getName() %>----<%=cookies[i].getValue() %><br>
			
			
		<%
		}
	}
%>


</body>
</html>