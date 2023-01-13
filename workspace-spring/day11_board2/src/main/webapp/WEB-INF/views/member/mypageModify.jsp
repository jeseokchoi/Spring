<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>마이페이지 수정</h3>

<form method="POST">
	<p>아이디 : <input type="text" name="userid" placeholder="아이디 입력" value="${dto.userid }" required readonly></p>
	<p>비밀번호 : <input type="text" name="userpw" placeholder="비밀번호 입력" value="${dto.userpw }" required></p>
	<p>이름 : <input type="text" name="username" placeholder="이름 입력" value="${dto.username }" required></p>
	<p>생년월일 : <input type="date" name="birth" value="${dto.birth }" ></p>
	<p>성별 : <input type="radio" name="gender" value="남성" ${dto.gender == '남성' ? 'checked' : '' }>남성 
			<input type="radio" name="gender" value="여성" ${dto.gender == '여성' ? 'checked' : '' }>여성</p>
	 <p><input type="submit" value="수정"></p>
</form>
	<a href="${cpath }/mypage/${login.idx}"><button>돌아가기</button></a>
	
</body>
</html>