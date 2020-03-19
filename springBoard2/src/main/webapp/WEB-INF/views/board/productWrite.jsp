<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록 페이지</title>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/menu.jsp"%>
<script>
	$(document).ready(function() {
		$("#addBtn").click(function() {
			var productName = $("#projectName").val();
			var productDesc = $("#productDesc").val();

			if (productName == "") {
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
<script language="javascript">
	function addRow(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var colCount = table.rows[0].cells.length;

		for (var i = 0; i < colCount; i++) {

			var newcell = row.insertCell(i);

			newcell.innerHTML = table.rows[0].cells[i].innerHTML;
			//alert(newcell.childNodes);
			switch (newcell.childNodes[0].type) {
			case "text":
				newcell.childNodes[0].value = "";
				break;
			case "checkbox":
				newcell.childNodes[0].checked = false;
				break;
			case "select-one":
				newcell.childNodes[0].selectedIndex = 0;
				break;
			}
		}
	}

	function deleteRow(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for (var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					if (rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}

			}
		} catch (e) {
			alert(e);
		}
	}
</script>
</head>
<body>
	<h2>프로젝트 새탭 등록</h2>
	<input type="hidden" id="PROJECT_ID" name="PROJECT_ID" value="">
	<input type="button" value="Add Row" onclick="addRow('dataTable')" />
	<input type="button" value="Delete Row" onclick="deleteRow('dataTable')" />
	<table id="dataTable" width="350px" border="1">
		<tr>
			<td><input type="checkbox" name="chk" /></td>
			<td>프로젝트 년도 :</td>
			<td><input type="text" name="projectName" id="projectName"></td>
			<td>프로젝트 설명 :</td>
			<td><textarea rows="5" cols="60" name="projectDesc" id="projectDesc"></textarea></td>
		</tr>
	</table>
			<tr>
			<td colspan="2" align="center"><input type="button" value="등록"
				id="addBtn"> <input type="button" value="목록"
				onclick="location.href='${path}/admin/project.do';"></td>
		</tr>
	</form>
</body>
</html>