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
<form action="" method="post" name="frm">
	<table border="1">
		<tr>
			<td> · </td>
			<td>회원 ID</td>
			<td>
				<input type="text" name="id">
				<button> ID 중복검사 </button>
			</td>
		</tr>
		<tr>
			<td> · </td>
			<td>비밀번호</td>
			<td><input type="password" name="pw" id="pw1"></td>
		</tr>
		<tr>
			<td> · </td>
			<td>비밀번호 확인</td>
			<td><input type="password" id="pw2" onblur="pwcheck()"></td>
		</tr>
		<tr>
			<td> · </td>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td> · </td>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" value="남성"> 남성
				<input type="radio" name="gender" value="여성"> 여성
			</td>
		</tr>
		<tr>
			<td> · </td>
			<td>집 전화</td>
			<td><input type="text" name="homenum"></td>
		</tr>
		<tr>
			<td> · </td>
			<td>휴대전화</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td> · </td>
			<td>이메일</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="회원가입" onclick="btn2('insert')">
				<input type="submit" value="뒤로" onclick="btn2('login')">
			</td>
		</tr>
	</table>
</form>
</body>
</html>