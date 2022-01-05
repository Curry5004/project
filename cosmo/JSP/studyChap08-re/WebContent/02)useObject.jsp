<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- jsp:setProperty 사용.  --%>
<jsp:setProperty name="member" property="name" value="제왑삐"/>

<%-- jsp:setProperty 사용. param 사용 --%>
<jsp:setProperty name="member" property="name" param="park"/>


<%-- jsp:setProperty 사용 property="*" 사용--%>
<%-- 
<jsp:setProperty name="member" property="*"/>
--%>

	<%=member.getId()%>
	<%=member.getName()%>
	<jsp:getProperty property="name" name="member"/>
	


</body>
</html>