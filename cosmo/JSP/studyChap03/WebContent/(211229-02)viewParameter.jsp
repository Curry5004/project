<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.Enumeration" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요청 파라미터 출력</title>

</head>
<body>
	<b>request.getParameter() 메서드 사용</b><br />
	name 파라미터 = <%= request.getParameter("name") %> <br />
	address 파라미터 = <%= request.getParameter("address") %>
	<p></p>
	<b>request.getParameterValues()메소드 사용</b> <br />
	<!-- 스크립트릿과 결과쪽이 많이 섞이다보니 복잡한데 이 부분 주의할 것 -->
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null){
			for(int i=0; i<values.length; i++){
	%>
		<%= values[i] %>
	<%			
			}
		}
	%>
	<p></p>
	<b>request.getParameterNames() 메소드 사용</b> <br />
	<%
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
	%>
	
		<%= name %>
	<%		
		}
	%>
	<br />
	<b>request.getParameterMap() 메서드 사용</b><br />
	<%
		//파리미터 타입을 map으로 받는 것
		//자바의 Map을 사용해서 해당하는 파라미터의 이름과 값을 사용하여 배열이 쌍을 이루고 있는 것
		
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name");
		if(nameParam!=null){
	%>
		name = <%= nameParam[0]%>
	<%		
		}
	%>
</body>
</html>