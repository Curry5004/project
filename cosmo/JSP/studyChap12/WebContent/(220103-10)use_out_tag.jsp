<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.IOException, java.io.FileReader" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소스 보기</title>
</head>
<body>
<%-- http://localhost:50/studyChap12/(220103-10)use_out_tag.jsp?path=(220103-03)use_if_tag.jsp
	이처럼 해당 jsp를 실행후 path를 설정하여 가고자 프로젝트 내에 엤는 jsp를 불러온다
 --%>
<%
	FileReader reader = null;
	try{
		String path = request.getParameter("path");
		reader = new FileReader(getServletContext().getRealPath(path));
%>
		<pre>
		소스코드 = <%=path %>
		<c:out value="<%= reader %>" escapeXml="true"/>
		</pre>
<%
	} catch(IOException ex){
%>
	에러: <%=ex.getMessage() %>
<%		
	} finally{
		if(reader != null){
			try{
				reader.close();
			} catch(IOException ex){}
		}
	}
%>
</body>
</html>