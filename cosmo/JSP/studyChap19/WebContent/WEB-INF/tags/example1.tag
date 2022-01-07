<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ variable name-given="x" scope="NESTED" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

tagfile , x=${x}<br>

<c:set var="x" value="2"/>
tagfile에서 x를 2로 변경 <br>
<jsp:doBody/>

tagfile, x=${x}<br>

<c:set var="x" value="4"/>
tagfile에서 x를 4로 변경 <br>