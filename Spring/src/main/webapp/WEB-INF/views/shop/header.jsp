<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id = (String)session.getAttribute("id");
%>
<div id="header">
	<div id="logo">
		<a href="/shop/index">로고</a>
	</div>
	<div id="menubox">
		<a href="/order/subscription">꽃 정기구독</a>
		<a href="/shop/flowers">꽃다발</a>
		<a href="/shop/index?page=event">이벤트</a>
		<a href="/order/order">주문제작</a>
	</div>
	<div id="loginbox">
		<c:choose>
			<c:when test="${id == null }">
				<a href="/account/login">로그인</a>
				<a href="/account/membership">회원가입</a>
			</c:when>
			<c:when test="${id == 'admin' }">
				${id }님
				<a href="/admin/menu"> 관리자 메뉴 </a>
				<a href="/account/logout">로그아웃</a>
			</c:when>
			<c:otherwise>
				<a href="/account/member?id=${id }">${id }님</a>
				<a href="/account/logout">로그아웃</a>
			</c:otherwise>
		</c:choose>
	</div>	
</div>