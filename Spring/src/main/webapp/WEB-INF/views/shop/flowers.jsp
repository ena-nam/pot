<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link rel="stylesheet" href="/resources/css/flowers.css">
</head>
<body>
<jsp:include page="header.jsp" flush="false"></jsp:include>
<div class="main">
	<div class="Title">
		<h1>꽃다발</h1>
		<p>꽃다발</p>
	</div>
	<div id="flowers">
	<c:set var="i" value="0" />
	<c:set var="j" value="4" />
	<table border="1">
		<c:choose>
		 <c:when test="${list != null && fn:length(list) > 0 }">
		  <c:forEach items="${list}" var="list">
		   <c:if test="${i%j == 0}">
			<tr>
		   </c:if>
				<td>
					<div id="img"><a href="/shop/detail?pno=${list.pno}"><img src="/resources/img/${list.pimage }" width="300px" /></a></div>
					<a href="/shop/detail?pno=${list.pno }">${list.pname }</a> <br>
					<a href="/shop/detail?pno=${list.pno }">${list.pcontent } </a> <br>
					<a href="/shop/detail?pno=${list.pno }">${list.pprice } </a>
				</td>
		   <c:if test="${i%j==j-1 }">
			</tr>
		   </c:if>
		  <c:set var="i" value="${i+1 }"/>
		 </c:forEach>
		</c:when>
	   </c:choose>
	</table>
	</div>
<jsp:include page="footer.jsp" flush="false"></jsp:include>
</div>
</body>