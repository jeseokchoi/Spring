<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<!-- 	폰트 링크걸기 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<style>
	body{
		font-family: 'Stylish', sans-serif;
		font-size: 25px;
		margin: auto;
		width: 1200px;
	}
	textarea {
	    width: 50%;
	    height: 9em;
	    border: 1px solid black;
	    resize: none;
  	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover{
		text-decoration: underline;
	}
	ul {
		margin: 0;
		padding: 0;
		display: flex;
		list-style: none;
		width: 900px;
	}
	ul > li {
		padding: 10px 20px;
	}
	ul > li:nth-child(3){
		margin-left: 220px;
	}
	table {
 		border-collapse: collapse;
		margin: 2px;
	}
	th, td {
		padding: 5px 10px;
		border: 1px solid grey;
	}
	
	table > thead> tr > th {
		background-color: black;
		color: gold;
	}
	input {       
        padding: 5px 10px;
        font-weight: bold;
        border-radius: 20px;
    }
    form > p > input[name="title"]{
    	width: 20%;
    }
    .write_sub{
    	margin-left: 460px;
    	margin-bottom: 10px;
    }
    
    .search {
    	display: flex;
    }
    
    .search > form > .ptest {
    	padding-top: 27px;
    	margin: 0px
    }
    
    .write_sub {
    	margin-left: 200px;
    	padding-top: 29px;
    }
    .bold {
    	font-weight: bold;
    }
    .pageNumber {
    	margin-top: 20px;
    	text-align: center;
    }
    
    
</style>
</head>
<body>
<div class="wrap">
	<h1><a href="${cpath }/">Welcome</a></h1>
	
	<div id="login">
		<c:if test="${not empty login }">
			<h3>${login.userid } (${login.username })</h3>
			<c:set var="loginURL" value="logout" />
			<c:set var="loginMenu" value="로그아웃" />
		</c:if>
		<c:if test="${empty login }">
			<c:set var="loginURL" value="login" />
			<c:set var="loginMenu" value="로그인" />
		</c:if>
	</div>
	
	<ul>
		<li><a href="${cpath }/">홈</a></li>
		<li><a href="${cpath }/list">게시판</a></li>
		
		<li class="dd"><a href="${cpath }/${loginURL }">${loginMenu }</a></li>
		<c:if test="${not empty login }">
			<li><a href="${cpath }/mypage/${login.idx }">마이페이지</a></li>
		</c:if>
		<c:if test="${empty login }">
			<li><a href="${cpath }/join">회원가입</a></li>
		</c:if>
	</ul>
</div>


</body>
</html>