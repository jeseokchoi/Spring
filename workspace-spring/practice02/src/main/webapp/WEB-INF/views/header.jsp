<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple</title>
</head>
<body>

<h1><a href="${cpath }">Apple KR</a></h1>
<hr>
<nav>
	<ul>
		<li><a href="${cpath }/list">제품</a></li>
		<li><a href="${cpath }/add">제품 등록</a></li>
	</ul>
</nav>
