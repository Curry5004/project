<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	String value = "자바";
	//encode(value, "utf-8") 해당 값을 "" 안에 있는 인코딩타입으로 인코딩 하여 리턴해준다
	String encodedValue = URLEncoder.encode(value, "utf-8");
	response.sendRedirect("/studyChap03/(211229-05)index.jsp?name="+encodedValue);
%>