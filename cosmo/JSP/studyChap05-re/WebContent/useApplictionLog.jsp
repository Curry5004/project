<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>절대 경로 사용하여 자원읽기</title>
</head>
<body>
<%--절대 경로를 사용하여 해당 파일을 불러와서 사용하였는데 이러면 유지보수하기가 어렵다.
이보다 더욱편하게 자원을 접근할 수 있는 method가 있다
 --%>
<%
	char[] buff = new char[128];
	int len= -1;
	
	String filePath = "C:\\Users\\Curry\\git\\project\\cosmo\\JSP\\studyChap05-re\\WebContent\\message\\notice.txt";
	try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "utf-8")){
		while((len=fr.read(buff))!=-1){
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex){
		out.println("익셉션 발생:"+ex.getMessage());
	}
%>
</body>
</html>