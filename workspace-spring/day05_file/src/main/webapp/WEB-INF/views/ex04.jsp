<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>DTO를 이용한 여러 파일 업로드</h3>

<form method="POST" enctype="multipart/form-data">
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="number" name="age" placeholder="나이"></p>
	<p>
		<label><input type="checkbox" name="color" value="red">빨강</label>
		<label><input type="checkbox" name="color" value="green">초록</label>
		<label><input type="checkbox" name="color" value="blue">파랑</label>
	</p>
	<p><input type="file" name="uploadFile" multiple></p>		<%-- multiple 여러 파일을 업로드 할 수있게 한다--%>
	
	<p><input type="submit"></p>
</form>

<table>
	<tr>
		<th>NAME</th>
		<th>AGE</th>
		<th>FILENAME</th>
		<th>이미지 태그</th>
	</tr>
	<c:forEach var="dto" items="${list }">
	<tr>
		<td>${dto.name }</td>
		<td>${dto.age }</td>
		<td>${dto.fileName }</td>
		<td>
			<c:choose>
				<c:when test="${fn:contains(dto.fileName, ',') }">	<%--if문과 같음 --%>
					<c:forTokens var="name" items="${dto.fileName }" delims=",">	<%--true 부분, delims는 내가 원하는 것으로 변경가능 --%>
						<img src="${cpath }/upload/${name }" height="100" width="100">
					</c:forTokens>
				</c:when>
				
				<c:otherwise>										<%--else부분 --%>
					<img src="${cpath }/upload/${dto.fileName }" height="100" width="100">
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	</c:forEach>
</table>


</body>
</html>