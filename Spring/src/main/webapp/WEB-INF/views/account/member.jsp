<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/account/detail?id=${id }">회원 정보 수정</a>
<a href="/account/leave?id=${id }">회원 탈퇴</a>
<table>
	<tr>
		<td>아이디</td>
		<td>${member.id }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${member.name }</td>
	</tr>
	<tr>
		<td>생일</td>
		<td>${member.birth }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${member.email }</td>
	</tr>
</table>
</body>
</html>