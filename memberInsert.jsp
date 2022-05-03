<%@page import="db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
//데이터베이스 연결
Connection con = null;
PreparedStatement pstmt = null;
DBConnection db = new DBConnection();
con = db.getConnection();
String sql = "INSERT INTO member(m_name, m_id, m_pw) VALUES (?, ?, ?)";

pstmt = con.prepareStatement(sql);
pstmt.setString(1, name);
pstmt.setString(2, id);
pstmt.setString(3, pw);

pstmt.execute();

response.sendRedirect("/index.jsp");
%>