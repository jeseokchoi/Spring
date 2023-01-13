<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>마이페이지</h3>

<table>
	<thead>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>${login.userid }</th>
			<th>${login.userpw }</th>
			<th>${login.username }</th>
			<th>${login.birth }</th>
			<th>${login.gender }</th>
			<td><a href="${cpath }/member/mypageModify/${login.idx}"><button>수정</button></a></td>
			<td><a href="${cpath }/member/withdraw/${login.idx}"><button>삭제</button></a></td>
		</tr>
	</tbody>
</table>
	<a href="${cpath }/"><button>돌아가기</button></a>


</body>
</html>