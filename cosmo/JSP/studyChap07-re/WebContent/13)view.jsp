<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String coda=request.getParameter("coda");
	String viewPage=null;
	
	if(coda.equals("A")){
		viewPage="/viewModual/A.jsp";
	} else if(coda.equals("B")){
		viewPage="/viewModual/B.jsp";
	} else if(coda.equals("C")){
		viewPage="/viewModual/C.jsp";
	}
%>
 <jsp:forward page="<%=viewPage %>">
 	<jsp:param name="name" value="제왑삐"></jsp:param>
 </jsp:forward>