<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>Member5 테이블 목록</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>USERNAME</th>
			<th>BIRTH</th>
			<th>GENDER</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.userId }</td>
				<td>${dto.userPw }</td>
				<td>${dto.userName }</td>
				<td>${dto.birth }</td>
				<td>${dto.gender }</td>
				<td><a href="${cpath }/memberDtail?idx=${dto.idx }" ><button>조회</button></a></td>
				<td><a href="${cpath }/memberDelete?idx=${dto.idx }" ><button>삭제하기</button></a></td>
			</tr>
		</c:forEach>

	</tbody>
</table>
	<a href="${cpath }"><button>돌아가기</button></a>


</body>
</html>