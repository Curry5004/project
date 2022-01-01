<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="studyChap08.member.MemberInfo"/>
<%
	member.setId("madbirus");
	member.setName("최범균");
%>
<jsp:forward page="/(211230-01)useObject.jsp"></jsp:forward>