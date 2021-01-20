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
		<td colspan="2">회원 관리</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>이름</td>
	</tr>
	<c:forEach items="${member }" var="member"> 
	<tr>
		<td>${member.id }</td>
		<td>${member.name }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>