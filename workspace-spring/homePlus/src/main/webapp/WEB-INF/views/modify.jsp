<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
	<p>
		<select name="category">
			<option value="">카테고리 선택</option>
			<option ${dto.category == '사과' ? 'selected' : '' }>사과</option>
			<option${dto.category == '배' ? 'selected' : '' }>배</option>
		</select>
	</p>
	<p><input type="text" name="productName" value="${dto.productName }" required autofocus></p>
	<p><input type="number" name="price" value="${dto.price }" required autofocus></p>
	<p><input type="number" name="score" value="${dto.score }" required autofocus></p>
	<p>썸네일 첨부 : <input type="file" name="thumbnailFile" value="${dto.thumbnail }"></p>
	<p>상세페이지 첨부 : <input type="file" name="reviewImageFile" value="${dto.reviewImage }"></p>
	<p><input type="date" name="registDate" value="${dto.registDate }"></p>
	<p><input type="submit" value="수정하기"></p>
</form>
	<button onclick="history.back()">돌아가기</button>

</body>
</html>