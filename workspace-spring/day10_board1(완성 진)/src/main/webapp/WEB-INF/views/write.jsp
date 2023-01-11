<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
	<p><input type="hidden" name="writer" value="${login.userid }"></p>
	<p><input type="text" name="title" value="제목입력" required></p>
	<p><textarea name="content" placeholder="게시글 작성" required></textarea></p>
	<p><input type="hidden" name="views" value="0"></p>
	<p><input type="submit" value="등록하기"></p>
</form>

</body>
</html>