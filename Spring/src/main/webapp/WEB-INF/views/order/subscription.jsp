<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/subscription.css">
</head>
<body>
<!-- 헤더 태그 -->
<jsp:include page="../shop/header.jsp" flush="false"></jsp:include>

<div id="subscription">
	<div class="imgbox">
		<div id="img">
			이미지 1
		</div>
	</div>
	<div class="imgbox">
		<div id="img2">
			이미지 2
		</div>
		<div id="img3">
			이미지 3
		</div>
	</div>
</div>

<div class="main">
	<div class="Title">
		<a href="#">추천</a>
		<p>매달 꽃을 선물받아보세요</p>
	</div>
	<div class="Box">
		<div class="Item">
			<div id="item1">
				이미지
			</div>
			<h3>이름</h3>
		</div>
		<div class="Item">
			<div id="item2">
				이미지
			</div>
			<h3>이름</h3>
		</div>
		<div class="Item">
			<div id="item3">
				이미지
			</div>
			<h3>이름</h3>
		</div>
		<div class="Item">
			<div id="item4">
				이미지
			</div>
			<h3>이름</h3>
		</div>
	</div>
</div>

<div id="how">
	하는 방법에 대한 설명
</div>
<div id="call">
	<a href="/order/sub_order">신청하기</a>
</div>

<!-- 풋터 태그 -->
<jsp:include page="../shop/footer.jsp" flush="false"></jsp:include>
</body>
</html>