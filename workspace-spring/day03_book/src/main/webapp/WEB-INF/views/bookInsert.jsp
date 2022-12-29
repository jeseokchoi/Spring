<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>

<form method="POST">
	<p>책 제목 : <input type="text" name="name" placeholder="책 제목 입력" required autofocus></p>
	<p>작가명 : <input type="text" name="author" placeholder="작가명 입력" required autofocus></p>
	<p>출판사 : <input type="text" name="publisher" placeholder="출판사 입력" required autofocus></p>
	<p>출판일 : <input type="date" name="publishdate"></p>
	<p>가격 : <input type="number" name="price" placeholder="가격 입력" required autofocus></p>
	<p>줄거리 :<input type="text" name="memo" placeholder="줄거리 입력" required autofocus></p>
	<p>평점 : <input type="text" name="score" placeholder="평점 입력" required autofocus></p>
	<p><input type="submit" value="등록하기"></p>
</form>

</body>
</html>