<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.in {
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid #ccc;
	hegith: 100px;
}

.tab {
	width: 100%; text-align : center;
	margin: 10px; overflow : hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	overflow: hidden;
	text-align: center;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 9px 12px;
	transition: 0.3s;
	font-size: 17px;
	text-align: center;
	width: 100px;
	margin-left: auto;
	margin-right: auto;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	width: 300px;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>프로젝트</h2>
	<p>년도를 선택후, 아래 탭을 클릭해주세요:</p>
	<div class="tab">
		<div class="in">
			<button class="tablinks" onclick="openCity(event, '<<')"> << </button>			
			<button class="tablinks" onclick="openCity(event, '2012')">2012년</button>
			<button class="tablinks" onclick="openCity(event, '2013')">2013년</button>
			<button class="tablinks" onclick="openCity(event, '2014')">2014년</button>
			<button class="tablinks" onclick="openCity(event, '>>')"> >> </button>	
						<c:if test="${msg == 'success' }">
			<button type="tablinks" onclick="location.href='${path}/write.do'">+</button>			
			</c:if>		
		</div>
	</div>

	<div id="2012" class="tabcontent">
		<h3>2012년</h3>
		<p>두산타워 웹사이트1</p>
		<p>두산타워 웹사이트2</p>
		<p>두산타워 웹사이트3</p>
		<p>두산타워 웹사이트4</p>
		<p>두산타워 웹사이트5</p>
	</div>

	<div id="2013" class="tabcontent">
		<h3>2013년</h3>
		<p>중소기업진흥공단사이트</p>
		<p>중소기업진흥공단사이트</p>
		<p>중소기업진흥공단사이트</p>
		<p>중소기업진흥공단사이트</p>
		<p>중소기업진흥공단사이트</p>
	</div>

	<div id="2014" class="tabcontent">
		<h3>2014년</h3>
		<p>경찰청 과학수사전산시스템</p>
		<p>경찰청 과학수사전산시스템</p>
		<p>경찰청 과학수사전산시스템</p>
		<p>경찰청 과학수사전산시스템</p>
		<p>경찰청 과학수사전산시스템</p>
	</div>

	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>

</body>
</html>
