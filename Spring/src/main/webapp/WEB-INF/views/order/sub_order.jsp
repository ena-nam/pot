<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/sub_order.css">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/sub_order.js"></script>
</head>
<body>
<div id="fullscreen">
	<a href="/shop/index">로고</a>
	<form action="/order/sub_order" method="post">
		<div id="idbox">
			<h3>주문자 이름</h3>
			<input type="text" id="id" name="orderName" placeholder="주문자 성함">
		</div>
		<div>
			<h3>구독 기간</h3>
			<div id="subBox">
				<input type="radio" name="orderTerm" value="1개월"> 1개월
				<input type="radio" name="orderTerm" value="3개월"> 3개월
				<input type="radio" name="orderTerm" value="6개월"> 6개월
				<input type="radio" name="orderTerm" value="정기구독"> 정기구독
			</div>
		</div>
			<h3>추가상품</h3>
			<div class="plus">
				화병 1 (+10,000)
				<div>
					<button type="button" id="minus1" value="minus1" disabled="disabled">-</button>
					<input type="text" value="0" id="plus1" name="orderPlus1">
					<button type="button" id="plus1" value="plus1">+</button>
				</div>
			</div>
			<div class="plus">
				화병 2 (+8,000)
				<div>
					<button type="button" id="minus2" value="minus2" disabled="disabled">-</button>
					<input type="text" value="0" id="plus2" name="orderPlus2">
					<button type="button" id="plus2" value="plus2">+</button>
				</div>
			</div>
			<div class="plus">
				화병 3 (+11,000)
				<div>
					<button type="button" id="minus3" value="minus3" disabled="disabled">-</button>
					<input type="text" value="0" id="plus3" name="orderPlus3">
					<button type="button" id="plus3" value="plus3">+</button>
				</div>
			</div>
			<h3>배송비</h3>
			<h3 id="shipping">0</h3>
			<input type="hidden" id="ship" name="orderShip">
			<h3>총 가격</h3>
			<h3 id="total">0</h3>
			<input type="hidden" id="total2" name="orderPrice">
		<input type="submit" value="구독">
	</form>
</div>
</body>
</html>