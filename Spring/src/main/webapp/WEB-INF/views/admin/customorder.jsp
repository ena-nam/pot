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
<a href="/admin/order">구독 관리</a>
<a href="/admin/customorder">주문제작 관리</a>
<table>
	<tr>
		<td colspan="2">구독 관리</td>
	</tr>
	<tr>
		<td>주문 번호</td>
		<td>주문자 이름</td>
		<td>주문 날짜</td>
		<td>크기</td>
	</tr>
	<c:forEach items="${custom }" var="custom"> 
	<tr>
		<td>${custom.orderNo }</td>
		<td>${custom.orderName }</td>
		<td>${custom.orderDay }</td>
		<td>${custom.orderSize }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>