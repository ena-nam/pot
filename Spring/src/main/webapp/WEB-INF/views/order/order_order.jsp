<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/order_order.css">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/order_order.js"></script>
</head>
<body>
<div id="fullscreen">
	<a href="/shop/index">로고</a>
	<form action="/order/customOrder" method="post">
		<div>
			<h3>주문자 이름</h3>
			<input type="text" id="id" placeholder="주문자 성함" name="orderName"> <br>
		</div>
		<div>
			<h3>수령 희망일</h3>
			<input type="text" id="name" placeholder="수령 희망일 (xx년 xx월 xx일)" name="orderDay">
		</div>
		<div>
			<h3>크기</h3>
			<div id="size">
				<input type="radio" name="orderSize" value="소형"> 소형
				<input type="radio" name="orderSize" value="중형"> 중형
				<input type="radio" name="orderSize" value="대형"> 대형
			</div>
		</div>
		<div>
			<h3>기타사항</h3>
			<div id="order">
				<textarea placeholder="희망하시는 꽃 종류, 색, 포장방법 등을 적어주세요." name="orderOther"></textarea>
			</div>
		</div>
		<h3>추가상품</h3>
		<div class="plus">
			화병 1 (+10,000)
			<div>
				<button type="button" value="minus1">-</button>
				<input type="text" value="0" id="plus1" name="orderPlus1">
				<button type="button" value="plus1">+</button>
			</div>
		</div>
		<div class="plus">
			화병 2 (+8,000)
			<div>
				<button type="button" value="minus2">-</button>
				<input type="text" value="0" id="plus2" name="orderPlus2">
				<button type="button" value="plus2">+</button>
			</div>
		</div>
		<div class="plus">
			화병 3 (+11,000)
			<div>
				<button type="button" value="minus3">-</button>
				<input type="text" value="0" id="plus3" name="orderPlus3">
				<button type="button" value="plus3">+</button>
			</div>
		</div>
		<h3>배송비</h3>
		<h3 id="shipping">0</h3>
		<input type="hidden" name="orderShip" id="ship">
		
		<h3>총 가격</h3>
		<h3 id="total">0</h3>
		<input type="hidden" name="orderPrice" id="total2">
		<input type="submit" value="구독">
	</form>
</div>
</body>
</html>