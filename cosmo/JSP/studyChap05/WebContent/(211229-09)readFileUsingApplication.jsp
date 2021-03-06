<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%String resourcePath = "/message/notice.txt";%>
자원의 실제 경로 : <br />
<%= application.getRealPath(resourcePath) %>
<hr />
<%= resourcePath %>의 내용
<hr />
<%
	char[] buff = new char[128];
	int len = -1;
	
	
	try(InputStreamReader fr = 
			new InputStreamReader(application.getResourceAsStream(resourcePath), "UTF-8")){
		
		while((len=fr.read(buff))!=-1){
			out.print(new String(buff, 0, len));
		}
	} catch (IOException ex){
		out.println("익셉션 발생"+ex.getMessage());
	}
%>
<hr />


</body>
</html>