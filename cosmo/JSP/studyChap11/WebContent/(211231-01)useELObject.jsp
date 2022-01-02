<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setAttribute("name", "최범균");

	String[] names = {"cosmo", "drago"};
	request.setAttribute("names", names);
	
	Map<String, Object> notice = new HashMap<String, Object>();
	notice.put("id",1);
	notice.put("title", "EL");
	request.setAttribute("notice", notice);
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL Object</title>
</head>
<body>

요청 URI : ${pageContext.request.requestURI} <br>
request의 name속성 : ${requestScope.name} <br />
code 파라미터 : ${param.code}<br />
<%= request.getParameter("code") %>

<br />
<br />
<br />
<%= request.getAttribute("name") %> <br />
request의 name 속성 ${name} <br />
<br />
<br />
<br />
${names[0]}
<br />
<br />
<br />
${notice.id}
${notice.title}

</body>
</html>