<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/membership.css">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/membership.js"></script>
</head>
<body>
<div id="fullscreen">
	<a href="/shop/index">로고</a>
	<form action="/account/membership" method="post">
		<div id="idbox">
			<h3>아이디</h3>
			<input type="text" name="id" id="id" placeholder="아이디"> <br>
		</div>
		<div id="pwbox">
			<h3>비밀번호</h3>
			<input type="password" name="pw" id="pw" placeholder="비밀번호"> <br>
		</div>
		<div id="pwbox2">
			<h3>비밀번호 확인</h3>
			<input type="password" id="pw2" placeholder="비밀번호 확인"> <br>
		</div>
		<div>
			<h3>이름</h3>
			<input type="text" id="name" name="name" placeholder="이름">
		</div>
		<div>
			<h3>생년월일</h3>
			<input type="text" placeholder="년" id="yy">
			<select id="mm">
				<option>월</option>
				<option value="01">1</option>
				<option value="02">2</option>
				<option value="03">3</option>
				<option value="04">4</option>
				<option value="05">5</option>
				<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
			<input type="text" placeholder="일" id="dd">	
			<input type="hidden" id="birth" name="birth">	
		</div>
		<div>
			<h3>성별</h3>
			<select id="gender" name="gender">
				<option value="남성">남성</option>
				<option value="여성">여성</option>
				<option value=null>선택안함</option>
			</select>
		</div>
		<div>
			<h3>이메일</h3>
			<input type="text" name="email" placeholder="이메일">
		</div>
		<div>
			<input type="submit" value="가입하기">
		</div>
	</form>
</div>
</body>
</html>