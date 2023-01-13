<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    
    
<h3>게시글 수정</h3>

<form method="POST">
	<p><input type="hidden" name="writer" value="${login.userid }"></p>
	<p><input type="text" name="title" value="${dto.title }"></p>
	<p><textarea name="content" required>${dto.content }</textarea></p>
	<p><input type="submit" value="수정"></p>
</form>
	
	<a href="${cpath }/read/${dto.idx}"><button>돌아가기</button></a>

</body>
</html>