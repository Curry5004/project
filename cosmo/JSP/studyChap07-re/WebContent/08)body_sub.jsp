<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] strArr=request.getParameterValues("name");
%>
	include에 온 이후 name 값
<%	
for(String str : strArr){
		%>
		<%= str%> <br />
		<%
	}
%>
