<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/order.css">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/order.js"></script>
</head>
<body>
	<jsp:include page="../shop/header.jsp" flush="false"></jsp:include>
	<div id="order">
		<div id="orderImg">
			주문방법 설명 이미지
		</div>
		<div id="move">
			<a href="/order/order_order" id="order">주문하기</a>
		</div>
	</div>
	<jsp:include page="../shop/footer.jsp" flush="false"></jsp:include>
</body>