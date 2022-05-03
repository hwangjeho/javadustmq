<%@page import="java.util.List"%>
<%@page import="db.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가하기</title>
<style type="text/css">
#insert{
	width: 500px;
	height: 300px;
	background-color: gray;
	margin: 0 auto;
	padding: 20px;
	box-sizing: border-box;
}
#insert input{
	width: 100%;
	height: 30px;
	margin-bottom: 10px;
	color: gray;
}
#insert button {
	width: 49%;
	height: 50px;
	
}
</style>
</head>
<body>
<%
Connection conn = null;
DBConnection db = new DBConnection();
conn = db.getConnection();
String sql = "SELECT * FROM member";
PreparedStatement pstmt = null;
ResultSet rs = null;

pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

List<Member> list = new ArrayList<Member>();
while(rs.next()){
	Member m = new Member();
	m.m_no = rs.getInt("m_no");
	m.m_name = rs.getString("m_name");
	m.m_id = rs.getString("m_id");
	m.m_pw = rs.getString("m_pw");
	
	list.add(m);
}
%>
<table>
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>아이디</td>
		<td>비밀번호</td>
	</tr>
	<%for (int i=0; i<list.size(); i++) {%>
	<tr>
		<td><%=list.get(i).m_no %></td>
		<td><%=list.get(i).m_name %></td>
		<td><%=list.get(i).m_id %></td>
		<td><%=list.get(i).m_pw %></td>
	</tr>
	<%} %>
</table>
<hr>
<div id="insert">
	<form action="./memberInsert.jsp" method="post">
		<input type="text" name="name" required="required" placeholder="이름을 적어주세요.">
		<input type="text" name="id" required="required" placeholder="아이디를 적어주세요.">
		<input type="password" name="pw" required="required" placeholder="암호를 적어주세요.">
		<button type="submit">저장</button>
		<button type="reset">초기화</button>
	</form>
</div>
</body>
</html>