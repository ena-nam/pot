<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/login.css">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/login.js"></script>
</head>
<body>
	<div id="fullscreen">
	<a href="/shop/index">로고</a>
	<form action="/account/login" method="post" id="login">
		<div>
			<input type="text" name="id" placeholder="아이디" id="id">
		</div>
		<div>
			<input type="password" name="pw" placeholder="비밀번호" id="pw">
		</div>
		<div>
			<input type="submit" value="로그인">
		</div>
	</form>
	</div>
	<div id="full2">
		<div id="box">
			<a href="/account/membership">회원가입</a>
		</div>
	</div>
</body>
</html>