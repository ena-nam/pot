<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu-header.jsp" flush="false"></jsp:include>
<table>
	<tr>
		<td>제품명</td>
		<td>${detail.pname }</td>
	</tr>
	<tr>
		<td>제품 이미지</td>
		<td>
			<img src="/resources/img/${detail.pimage }" width="300px" />
		</td>
	</tr>
	<tr>
		<td>제품 상세 설명</td>
		<td>${detail.pcontent }</td>
	</tr>
	<tr>
		<td>제품 등록 날짜</td>
		<td>${detail.pday }</td>
	</tr>
	<tr>
		<td>제품 가격</td>
		<td>${detail.pprice }</td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="/admin/modify?pno=${detail.pno }">수정</a>
			<a href="/admin/delete?pno=${detail.pno }">삭제</a>
			<a href="/admin/product">리스트로</a>
		</td>
	</tr>

</table>

</body>
</html>