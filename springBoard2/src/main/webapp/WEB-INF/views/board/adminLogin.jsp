<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인페이지</title>
<%@ include file="../include/header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			// 태크.val() : 태그에 입력된 값
			// 태크.val("값") : 태그의 값을 변경 
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			if (userId == "") {
				alert("아이디를 입력하세요.");
				$("#userId").focus(); // 입력포커스 이동
				return; // 함수 종료
			}
			if (userPw == "") {
				alert("아이디를 입력하세요.");
				$("#userPw").focus();
				return;
			}
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "${path}/admin/loginCheck.do"
			// 제출
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<div id="container">
		<div id="header">
			<h1 id="logo">
				<a href="http://nuriapp.co.kr/" class="sp h_logo" id="log.nuriapp">
					<img src="${path}/images/nuriapp.png" width="200px" height="110px" />
				</a>
			</h1>
		</div>
		</br>
		<h3>관리자만 접속이 가능합니다.</h3>
		<form name="form1" method="post">
			<tr>
				<td>아이디 &nbsp;</td>
				<td><input name="userId" id="userId" class="input_row"></td>
			</tr>
			</br>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="userPw" id="userPw"
					class="input_row"></td>
			</tr>
			</br>
			<tr>
				<td colspan="2" align="center">
					<button type="button" id="btnLogin" class="btn_global">로그인</button>
					<c:if test="${msg == 'failure'}">
						<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
					</c:if> <c:if test="${param.msg == 'nologin'}">
						<div style="color: red">관리자 로그인 후 사용이 가능합니다.</div>
					</c:if> <c:if test="${msg == 'logout'}">
						<div style="color: red">로그아웃되었습니다.</div>
					</c:if>
				</td>
			</tr>

		</form>
	</div>
</body>
</html>