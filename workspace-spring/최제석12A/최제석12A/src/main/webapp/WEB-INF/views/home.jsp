<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최제석12A</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="${cpath}/resources/js/function.js"></script>
<link href="${cpath}/resources/css/style.css" rel="stylesheet"/> 
</head>
<body>

<h1>평가12A 통합구현 (응시자: 최제석)</h1>
<h3>서울과 부산의 미세먼지(PM10)농도 차이 그래프</h3>
<hr>

<div id="root">
	<canvas id="myChart"></canvas>
</div>

<script>
	const cpath = '${cpath}'
	window.onload = loadHandler
</script>

</body>
</html>