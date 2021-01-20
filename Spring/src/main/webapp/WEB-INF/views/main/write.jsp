<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form action="" method="post" name="frm">
<table>
	<tr>
		<td>제목</td>
	</tr>
	<tr>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td>작성자</td>
	</tr>
	<tr>
		<td>
			<%=ID %>
			<input type="hidden" name="writer" value=<%=ID %>>
		</td>
	</tr>
	<tr>
		<td>내용</td>
	</tr>
	<tr>
		<td><textarea name="content"></textarea></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="등록하기" onclick="btn3('write')">
			<input type="submit" value="리스트로" onclick="btn3('list')">
		</td>
	</tr>
</table>
</form>
</body>
</html>