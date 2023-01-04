<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" enctype="multipart/form-data">
	<p>
		<select name="category">
			<option value="">카테고리 선택</option>
			<option>사과</option>
			<option>배</option>
		</select>
	</p>
	<p><input type="text" name="productName" placeholder="상품명 입력" required autofocus></p>
	<p><input type="number" name="price" placeholder="가격 입력" required autofocus></p>
	<p><input type="number" name="score" placeholder="상품평점" required autofocus></p>
	<p>썸네일 첨부 : <input type="file" name="thumbnailFile"></p>
	<p>상세페이지 첨부 : <input type="file" name="reviewImageFile"></p>
	<p>생산일 : <input type="date" name="registDate"></p>
	<p><input type="submit" value="상품등록"></p>
</form>

</body>
</html>