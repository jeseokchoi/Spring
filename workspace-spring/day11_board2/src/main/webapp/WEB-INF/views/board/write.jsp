<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST">
	<p><input type="text" name="writer" value="${login.userid }" readonly></p>
	<p><input type="text" name="title" placeholder="제목 작성" required></p>
	<p><textarea name="content" placeholder="게시글 작성" required></textarea></p>
	<p><input type="hidden" name="views" value="0"></p>
	<p>
		<input type="reset" value="초기화">
		<input type="submit" value="등록하기"> 
	</p>
</form>

</body>
</html>