<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/main.js"></script>
<link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
<form action="" method="post" name="frm">
	<table>
		<tr>
			<td colspan="2">* 회원 로그인 *</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" onclick="btn('login')" id="btn">
				<input type="submit" value="회원가입" onclick="btn('member')" id="btn">
				<a href="/main/list">게시판 리스트 보기</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>