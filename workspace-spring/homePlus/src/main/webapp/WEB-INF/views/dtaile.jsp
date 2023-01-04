<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>상세페이지</h3>

<div class="root">
	<div class="dtaileWrap">
			<div class="img"><img src="${cpath }/homePlus/${dto.thumbnail }"height="150"></div>
			<div class="category">카테고리 : ${dto.category }</div>
			<div class="name">상품명 : ${dto.productName }</div>
			<div class="price">
				가격 : <fmt:formatNumber value="${dto.price }" />원
			</div>
			<div class="registDate">생산날짜 : ${dto.registDate }</div>
			<div class="score">평점 : ${dto.score }</div>
			<div class="img"><img src="${cpath }/homePlus/${dto.reviewImage }" height="200" width="150"></div>
			<div class="back"><a href="${cpath }/list/"><button>돌아가기</button></a></div>
			<div class="modify"><a href="${cpath }/modify/${dto.idx}"><button>수정하기</button></a></div>
			<div class="delete"><a href="${cpath }/delete?idx=${dto.idx}"><button>삭제하기</button></a></div>
	</div>
</div>

</body>
</html>