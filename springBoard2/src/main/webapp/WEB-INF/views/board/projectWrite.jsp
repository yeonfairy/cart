<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

#container {
	width: 300px;
	text-align: center;
	margin: 100px auto;
}

body {
	text-align: center;
}

h2 {
	text-align: center;
}

table {
	text-align: center;
	width: 400px;
	margin: 10px auto;
}

table td {
	border: 1px solid #ccc;
	text-align: center;
}

</style>
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
	<div class="container">
		<h2>년도별 프로젝트 내용 등록</h2>
		<form action="" id="form1" name="form1" enctype="multipart/form-data"
			method="post">

			<tr>
				<td>프로젝트 년도 :</td>
				<td><select name="projectName" id="projectName">
						<option value="2020년">2020년</option>
						<option value="2021년">2021년</option>
						<option value="2022년">2022년</option>
						<option value="2023년">2023년</option>
						<option value="2024년">2024년</option>
						<option value="2025년">2025년</option>
						<option value="2026년">2026년</option>
						<option value="2027년">2027년</option>
						<option value="2028년">2028년</option>
						<option value="2029년">2029년</option>
						<option value="2030년">2030년</option>
						<option value="2031년">2031년</option>
						<option value="2032년">2032년</option>
						<option value="2033년">2033년</option>
						<option value="2034년">2034년</option>
						<option value="2035년">2035년</option>
						<option value="2036년">2036년</option>
						<option value="2037년">2037년</option>
						<option value="2038년">2038년</option>
						<option value="2039년">2039년</option>
						<option value="2040년">2040년</option>
						<option value="2041년">2041년</option>
						<option value="2042년">2042년</option>
						<option value="2043년">2043년</option>
						<option value="2044년">2044년</option>
						<option value="2045년">2045년</option>
						<option value="2046년">2046년</option>
						<option value="2047년">2047년</option>
						<option value="2048년">2048년</option>
						<option value="2049년">2049년</option>
						<option value="2050년">2050년</option>
				</select></td>
			</tr>
			</br> </br> <input type="hidden" id="PROJECT_ID" name="PROJECT_ID" value="">
			<input type="button" value="Add Row" onclick="addRow('dataTable')" />
			<input type="button" value="Delete Row"
				onclick="deleteRow('dataTable')" />
			<table id="dataTable" width="350px" border="1">
				<tr>
					<td><input type="checkbox" name="chk" /></td>
					<td>프로젝트 설명 :</td>
					<td><input type="text" name="projectDesc" id="projectDesc"></td>
				</tr>
			</table>
			<tr>
				<td colspan="2" align="center"><input type="button" value="등록"
					id="addBtn"> <input type="button" value="목록"
					onclick="location.href='${path}/admin/project.do';"></td>
			</tr>

		</form>
	</div>
</body>
</html>