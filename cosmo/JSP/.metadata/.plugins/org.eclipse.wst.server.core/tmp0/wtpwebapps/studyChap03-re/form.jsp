<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터를 전송해보자</title>
</head>
<body>
<a href="/studyChap03-re/viewParameter.jsp?name=나는 밥이야">밥이니?</a>
	<form action="/studyChap03-re/viewParameter.jsp" method="post">
		이름: <input name="name" type="text" /> <br />
		주소: <input name="address" type="text" /><br />
		동물: 
		개<input name="pet" type="checkbox" value="dog"/>
		냥<input name="pet" type="checkbox" value="cat"/>
		꿀<input name="pet" type="checkbox" value="pig"/><br />
		하고싶은 말: <textarea name="notice" id="" cols="30" rows="10"></textarea><br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>