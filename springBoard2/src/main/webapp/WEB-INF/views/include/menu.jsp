<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a href="${path}/board.do">게시판</a> |
<a href="${path}/insertForm.do">글쓰기</a> |
<a href="${path}/shop/product/list.do">상품목록</a> |
<a href="${path}/cart/list.do">장바구니</a> |
<a href="${path}/sendMailForm.do">문의사항 메일 보내기</a> |
<a href="${path}/admin/project.do">프로젝트</a> |
	
<!-- 관리자 권한일 경우 -->
<c:if test="${sessionScope.adminId != null }">
<a href="${path}/projectWrite.do">년도 새탭등록</a> |
</c:if>

<c:choose>
	<c:when test="${sessionScope.adminId == null}">
		<a href="${path}/">로그인</a> |
		<a href="${path}/admin/login.do">관리자 로그인</a>
	</c:when>
	<c:otherwise>
		관리자(${sessionScope.adminId})님이 로그인중입니다.
		<a href="${path}/admin/logout.do">로그아웃</a> |
	</c:otherwise>
</c:choose>	
<hr>