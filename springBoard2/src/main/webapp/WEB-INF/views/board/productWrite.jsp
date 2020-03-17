<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록 페이지</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<script>
	$(document).ready(function(){
		$("#addBtn").click(function(){
			var productName = $("#productName").val();
			var productPrice = $("#productPrice").val();
			var productDesc = $("#productDesc").val();
			var productPhoto = $("#productPhoto").val();
			
			if(productName == "") {
				alert("탭 년도를 입력해주세요");
				productName.foucs();
			} else if (productDesc == "") {
				alert("탭 년도 설명을 입력해주세요");
				productDesc.focus();
			} else if (productPhoto == "") {
				alert("년도 관련 첨부 사진을 입력해주세요");
				productPhoto.focus();
			}
			document.form1.action = "${path}/insert.do";
			document.form1.submit();
		});
	});
	
</script>
</head>
<body>
	<h2>**년도 등록</h2>
	<form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
		<table border="1">
			<tr>
				<td>탭 **년도</td>
				<td><input type="text" name="productName" id="productName"></td>
			</tr>
			<tr>
				<td>탭 **년도 설명</td>
				<td><textarea rows="5" cols="60" name="productDesc" id="productDesc"></textarea></td>
			</tr>
			<tr>
				<td>**년도 이미지 첨부</td>
				<td><input type="file" name="productPhoto" id="productPhoto"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" id="addBtn">
					<input type="button" value="목록" onclick="location.href='${path}/list.do';">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>