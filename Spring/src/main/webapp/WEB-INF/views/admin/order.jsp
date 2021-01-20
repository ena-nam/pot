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
	</tr>
	<c:forEach items="${order }" var="order"> 
	<tr>
		<td>${order.orderNo }</td>
		<td>${order.orderName }</td>
		<td>${order.orderDay }</td>
	</tr>
	</c:forEach>
</table>
	<!-- 이전 버튼 -->
	<c:if test="${page.prev }"> 
		<a href="/admin/order?pageNum=${page.endPage-1 }&amount=${page.cri.amount }">
		이전 </a> 
	</c:if>
	
	<!-- 페이지 -->
	<c:forEach var="num" begin="${page.startPage }" end="${page.endPage }">
		<a href="/admin/order?pageNum=${num }&amount=${page.cri.amount }"> ${num } </a>
	</c:forEach>
	
	<!-- 다음 버튼 -->
	<c:if test="${page.next }"> 
		<a href="/admin/order?pageNum=${page.endPage+1 }&amount=${page.cri.amount }">
		다음 </a> 
	</c:if>
	
	<input type="hidden" name="pageNum" value="${page.startPage }">
	<input type="hidden" name="amount" value="${page.cri.amount }">
</body>
</html>