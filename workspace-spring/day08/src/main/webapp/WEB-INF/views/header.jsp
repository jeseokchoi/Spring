<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	table {
		border-collapse: collapse;
		margin: 2px;
	}
	th, td {
		padding: 5px 10px;
        border: 1px solid grey;
	}
	table > thead{
		background-color: black;
		color: gold;
	}
	input {       
        padding: 5px 10px;
        border: 2px solid black;
        font-weight: bold;
    }
    form > p > input[type="submit"]{
    	margin-left: 120px;
    }
</style>
</head>
<body>

<h1><a href="${cpath }/">day08</a></h1>

<ul>
	<li><a href="${cpath }/list">ex01 - member5 회원가입 및 회원목록</a></li>
</ul>

</body>
</html>