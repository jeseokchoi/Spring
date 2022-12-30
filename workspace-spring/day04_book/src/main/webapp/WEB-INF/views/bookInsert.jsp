<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>도서 추가</h3>

<form method="POST">
	<p>책 제목 : <input type="text" name="name" placeholder="책 제목 입력" required autofocus></p>
	<p>작가명 : <input type="text" name="author" placeholder="작가명 입력" required autofocus></p>
	<p>출판사 : <input type="text" name="publisher" placeholder="출판사 입력" required autofocus></p>
	<p>출판일 : <input type="date" name="publishDate"></p>
	<p>가격 : <input type="number" name="price" placeholder="가격 입력" required autofocus></p>
	<a>줄거리 : </a>
	<p><textarea name="memo" placeholder="줄거리 입력" required autofocus></textarea></p>
	<p>평점 : <input type="text" name="score" placeholder="평점 입력" required autofocus></p>
	<p><input type="submit" value="등록하기"></p>
</form>

</body>
</html>