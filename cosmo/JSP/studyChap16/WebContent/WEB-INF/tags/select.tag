<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true"%>
<%@ tag dynamic-attributes="optMap"%>
<%@ attribute name="name" required="true"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<select name="${name}">
	<c:forEach var="option" items="${optMap }"	>
		<option value="${option.key}">${option.value}</option>
	</c:forEach>
</select>
