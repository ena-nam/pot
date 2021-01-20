<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/account/modify" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td>
			${mdetail.id }
			<input type="hidden" value="${mdetail.id }" name="id">	
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${mdetail.name }</td>
	</tr>
	<tr>
		<td>생일</td>
		<td>${mdetail.birth }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"></td>
	</tr>
</table>
<input type="submit" value="수정하기">
</form>


<a href="#">되돌아가기</a>
</body>
</html>