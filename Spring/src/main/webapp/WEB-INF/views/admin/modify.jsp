<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu-header.jsp" flush="false"></jsp:include>
<form action="/admin/modify2" method="post">
<table>
	<tr>
		<td>제품명</td>
		<td><input type="text" value=${modify.pname } name="pname"></td>
	</tr>
	<tr>
		<td>제품 썸네일</td>
		<td>
			${modify.pimage }
			<input type="text" name="pimage">
			<input type="hidden" value=${modify.pno } name="pno">
		</td>
	</tr>
	<tr>
		<td>제품 상세 설명</td>
		<td>
			${modify.pcontent }
			<input type="text" name="pcontent">
		</td>
	</tr>
	<tr>
		<td>제품 등록 날짜</td>
		<td>${modify.pday }</td>
	</tr>
	<tr>
		<td>제품 가격</td>
		<td><input type="text" value=${modify.pprice }></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정">
			<a href="/admin/product">리스트로</a>
		</td>
	</tr>

</table>
</form>
</body>
</html>