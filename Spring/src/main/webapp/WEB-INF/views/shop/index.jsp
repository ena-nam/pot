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
<link rel="stylesheet" href="/resources/css/index_main.css">
<link rel="stylesheet" href="/resources/css/flowers.css">
<link rel="stylesheet" href="/resources/css/event.css">
<%
	String pagefile = request.getParameter("page");
	if (pagefile == null) {
		pagefile = "index_content";
	}	
%>
</head>
<body>
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	<jsp:include page='<%=pagefile+".jsp"%>' flush="false"></jsp:include>
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
</body>