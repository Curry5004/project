<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="2kb" autoFlush="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.println("안녕"); 
	out.print("안녕");
	out.print("안녕");
	out.newLine(); 
	out.print("안녕");
	%>
	<br />
	버퍼의 크기: <%=out.getBufferSize() %><br>
	버퍼의 남은 크기:<%=out.getRemaining() %><br>
	오토플러쉬 해씀안해씀?:<%
			if(out.isAutoFlush()==true){
				out.print("해씀");
			} else{
				out.print("안해씀");
			}
			%>
	
	
	
</body>
</html>