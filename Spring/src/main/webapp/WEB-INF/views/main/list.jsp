<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/main.js"></script>
<%
	String ID = (String)session.getAttribute("visitor");
	if (ID == null) {
		ID = "방문자";
	}
	
	String log = "로그인";
	if (ID != "방문자") {
		log = "로그아웃";
	}
%>
</head>
<body>
<h1> <%=ID %>님, 환영합니다.</h1>
<a href="/main/logout"><%=log %></a>
<table border="1">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	<c:forEach items="${list}" var="list">
	<tr>
		<td>${list.bno}</td>
		<td><a href="/main/detail?bno=${list.bno}">${list.title}</a></td>
		<td>${list.writer}</td>
		<td>${list.date}</td>
		<td>${list.hit}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5">
			<a href="" onclick="login('<%=ID %>')" id="log">글쓰기</a>
		</td>
	</tr>
</table>
</body>
</html>