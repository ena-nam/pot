<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/main.js"></script>
</head>
<body>
<form action="/main/modify" method="post" name="frm">
<table border="1">
	<tr>
		<td><input type="text" value="${detail.title}" name="title"></td>
	</tr>
	<tr>
		<td>
			${detail.writer}
			${detail.date}
			${detail.hit}
			<input type="hidden" value=${detail.bno } name="bno">
		</td>
	</tr>
	<tr>
		<td><textarea name="content">${detail.content}</textarea></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="수정">
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