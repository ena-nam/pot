<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/detail.css">
</head>
<body>
<jsp:include page="header.jsp" flush="false"></jsp:include>
<div class="main">
	<div class="Title">
		
	</div>
	<div id="content">
		<div id="img">
			<img src="/resources/img/${detail.pimage }" width="500px" />
		</div>
		
		<table>
			<tr>
				<td colspan="2"><h1>${detail.pname }</h1></td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${detail.pprice }</td>
			</tr>
			<tr>
				<td colspan="2"><a href="#">주문하기</a></td>
			</tr>
		</table>
	</div> <!-- content 끝 -->
	<hr>
		${detail.pcontent }
</div>


<jsp:include page="footer.jsp" flush="false"></jsp:include>

</body>
</html>