<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/admin/new" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>상품 이름</td>
			<td><input type="text" name="pname"></td>
		</tr>
		<tr>
			<td>상품 이미지</td>
			<td><input type="file" name="uploadfile"></td>
		</tr>
		<tr>
			<td>상품 상세 내용</td>
			<td><input type="text" name="pcontent"></td>
		</tr>
		<tr>
			<td>상품 가격</td>
			<td><input type="text" name="pprice"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="등록"></td>
		</tr>
	</table>
</form>
</body>
</html>