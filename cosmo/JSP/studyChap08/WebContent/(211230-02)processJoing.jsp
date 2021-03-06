<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberInfo" class="studyChap08.member.MemberInfo"/>
<jsp:setProperty name="memberInfo" property="*"/>
<%-- 아이디랑 비밀번호를 따로 설정해주지 않아서 우선 임시방편으로 비밀번호와 아이디는 동일화다는 전제를 깔아주기 위해 아래의 프로퍼티를 사용 --%>
<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"/>

<html>
<head>
	<title></title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="memberInfo"/></td>
			<td>암호</td>
			<td><jsp:getProperty property="password" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="memberInfo"/></td>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="memberInfo"/></td>
		</tr>
	</table>
</body>
</html>