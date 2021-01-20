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
		<td colspan="2">상품 관리</td>
	</tr>
	<tr>
		<td colspan="2"><a href="/admin/new">상품 등록</a></td>
	</tr>
	<tr>
		<td>제품명</td>
		<td>제품가격</td>
		<td>등록날짜</td>
	</tr>
	<c:forEach items="${product }" var="pro"> 
	<tr>
		<td><a href="/admin/detail?pno=${pro.pno }">${pro.pname }</a></td>
		<td>${pro.pprice }</td>
		<td>${pro.pday }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>