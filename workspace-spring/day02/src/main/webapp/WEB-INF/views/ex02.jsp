<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>ex02.jsp</h1>
<hr>

	<form method="POST">
			<p>이름 입력 : <input type="text" name="name" placeholder="이름" required autofocus></p>
			<p>국어 : <input type="text" name="kor" placeholder="국어점수" required autofocus></p>
			<p>영어 : <input type="text" name="eng" placeholder="영어점수" required autofocus></p>
			<p>수학 : <input type="text" name="mat" placeholder="수학점수" required autofocus></p>
			<p><input type="submit" value="등록"></p>
	</form>

</body>
</html>