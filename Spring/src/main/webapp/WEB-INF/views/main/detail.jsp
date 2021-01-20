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
%>
</head>
<body>
<form action="" method="get" name="frm">
<table border="1">
	<tr>
		<td>${detail.title}</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" value=${detail.writer } id="writer">
			<input type="hidden" value=<%=ID %> id="id">
			${detail.writer}
			${detail.date}
			${detail.hit}
			<input type="hidden" value=${detail.bno } name="bno">
		</td>
	</tr>
	<tr>
		<td>${detail.content}</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="수정" onclick="btn4('modify')">
			<input type="submit" value="삭제" onclick="btn4('delete')">
		</td>
	</tr>
	<tr>
		<td>
			<a href="/main/list">목록으로</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>