<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.MessageListView" %>
<%@ page import="guestbook.service.GetMessageListService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if(pageNumberStr !=null){
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	GetMessageListService messageListService = GetMessageListService.getInstance();
	
	MessageListView viewData = messageListService.getMessageList(pageNumber);
	
%>
<c:set var="viewData" value="<%=viewData %>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 등록폼 --%>
	<form action="writeMessage.jsp" method="post">
		이름: <input type="text" name="guestName"/>
		암호: <input type="text" name="password"/>
		메시지: <textarea name="message" cols="30" rows="3"></textarea>
		<input type="submit"  value="메시지 남기기"/>
	</form>
<%--메시지가 없으면 텍스트만 나옴 --%>
<c:if test="${viewData.isEmpty()}">
	등록된 메시지가 없습니다.
</c:if>

<%--메시지가 있을떄 뿌려줌 --%>
<c:if test="${!viewData.isEmpty()}">
	
	<table border="1" >
		<c:forEach var="message" items="${viewData.messageList}">
		<tr>
			<td>
				메시지 번호 : ${message.id}<br />
				손님 이름 : ${message.guestName } <br />
				메시지 : ${message.message } <br />
				<a href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
			</td>
		</tr>
		</c:forEach>
	</table>
<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
	<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
</c:forEach>


</c:if>

</body>
</html>