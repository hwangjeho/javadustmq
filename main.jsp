<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="./menu.css" rel="stylesheet">
</head>
<body>
	<%@include file="./menu.jsp" %>
	<div id="main">
	
		<h1>main</h1>
		<%=session.getAttribute("m_name")%>님 반갑습니다.
		<br> ${sessionScope.m_name }님 반갑습니다.
	</div>
</body>
</html>