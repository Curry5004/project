<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	getParameter()를 사용하여 name 파라미터의 1개를 받음 <br />
	이름: <%=request.getParameter("name") %> <br />
	주소: <%=request.getParameter("address")%> <br />
	getParameterValues()를 사용하여 name 파라미터의 여러개를 받음 <br />
	동물: 
	<%
	String[] list = request.getParameterValues("pet");
	//아무것도 작성하지 않으면 아무것도 출력하지 않음
	//왜냐하면 if문에서 통과를 못하기 때문
	//출력할수 있는 코드는 if가 true일 때  for문을 거쳐야만 출력될 수 있음
	//그러므로 아무것도 입력하지않으면 if 문에서 false가 되어 출력이 되지 않음
	if(list!=null){
		for(int i=0; i<list.length;i++){
			out.print(list[i]+" ");
		}
	}
	%> <br />
	하고싶은 말: <%=request.getParameter("notice") %>
	

</body>
</html>