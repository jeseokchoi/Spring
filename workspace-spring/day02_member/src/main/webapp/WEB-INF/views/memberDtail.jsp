<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

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
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.userId }</td>
				<td>${dto.userPw }</td>
				<td>${dto.userName }</td>
				<td>${dto.birth }</td>
				<td>${dto.gender }</td>
				<td><a href="${cpath }/memberModify?idx=${dto.idx }" ><button>수정하기</button></a></td>
			</tr>

	</tbody>
	</table>
	<a href="${cpath }/memberList"><button>돌아가기</button></a>

</body>
</html>