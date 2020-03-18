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
			var productName = $("#projectName").val();
			var productDesc = $("#productDesc").val();
			
			if(productName == "") {
				alert("탭 년도를 입력해주세요");
				productName.foucs();
			} else if (productDesc == "") {
				alert("탭 년도 설명을 입력해주세요");
				productDesc.focus();
			} 
			document.form1.action = "${path}/projectInsert.do";
			document.form1.submit();
		});
	});
	
</script>
</head>
<body>
	<h2>프로젝트 새탭 등록</h2>
	<form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
		<table border="1">
			<tr>
				<td>프로젝트 년도 :</td>
				<td><input type="text" name="projectName" id="projectName"></td>
			</tr>
			<tr>
				<td>프로젝트 설명 :</td>
				<td><textarea rows="5" cols="60" name="projectDesc" id="projectDesc"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" id="addBtn">
					<input type="button" value="목록" onclick="location.href='${path}/project.do';">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>