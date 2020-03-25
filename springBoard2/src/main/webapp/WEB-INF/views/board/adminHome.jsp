<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	font-family: Arial;
}

td, td {
	font-size: 145%;
}
/* Style the tab */
.in {
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid #ccc;
	heigth: 100px;
}

.tab {
	width: 80%;
	text-align: center;
	margin: 10px;
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	overflow: hidden;
	padding: 9px 12px;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: center;
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
	padding: 10px 20px;
	border: 1px solid #ccc;
	border-top: none;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	width: 200px;
}

h2 {
	text-align: center;
	padding: 8px 16px;
}

p {
	text-align: center;
	margin: 20px 0px;
}

a {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

a:hover {
	background-color: #ddd;
	color: black;
}

.previous {
	background-color: #f1f1f1;
	color: black;
	border-radius: 5px;
}

.next {
	background-color: #4caff0;
	color: white;
	border-radius: 5px;
}

.tab-pane {
	padding: 8px 300px;
}

.tab-control .previous-button {
	left: 10%;
}

.tab-control .next-button {
	right: 10%;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- Fonts -->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<h2>
					프로젝트 <br /> <small> <br />  WEB, MOBILE, DB 분야
						SI/SM. </br> 최고수준의 기술력 습득을 위해 노력하며 최상의 기술력을 제공함을 자부합니다.
					</small>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-30 product-tabs">
				<ul class="nav nav-tabs">
					<li><a class="previous-button" role="button"><i
							class="fa fa-angle-left fa-2x fa-fw"></i></a></li>
					<li class="active"><a href="#tab1" data-toggle="tab">2012년 </a></li>
					<li class=""><a href="#tab2" data-toggle="tab">2013년</a></li>
					<li class=""><a href="#tab3" data-toggle="tab">2014년</a></li>
					<li class=""><a href="#tab4" data-toggle="tab">2015년</a></li>
					<li class=""><a href="#tab5" data-toggle="tab">2016년</a></li>
					<li class=""><a href="#tab6" data-toggle="tab">2017년</a></li>
					<li class=""><a href="#tab7" data-toggle="tab">2018년</a></li>
					<li class=""><a href="#tab8" data-toggle="tab">2019년</a></li>
					<c:forEach var="row" items="${list}">
					<li class=""><a href="#tab9" data-toggle="tab">${row.projectName}</a></li>
					<input type="hidden" id="projectId" name="projectId" value=${ row.projectId }> 
					</c:forEach>							
					<div class="tab-control">
						<c:if test="${sessionScope.adminId != null }">
							<button type="tablinks"
								style="background-color: #4caff0; padding: 2px 7px;"
								onclick="location.href='${path}/projectWrite.do'">+등록</button>
						</c:if>
						<a class="next-button" role="button"><i
							class="fa fa-angle-right fa-2x fa-fw"></i></a>
					</div>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<h4>두산타워 웹사이트</h4>
						<h4>두산베어스 웹사이트</h4>
						<h4>라데라 리조트 웹사이트</h4>
						<h4>두산인프라코어 웹사이트</h4>
						<h4>두산정보통신 웹사이트</h4>
					</div>
					<div class="tab-pane" id="tab2">
						<h4>중소기업진흥공단 사이트</h4>
						<h4>한국인정원 웹사이트</h4>
						<h4>이베이 옥션 사이트</h4>
						<h4>삼성생명 나눔스테이션 사이트</h4>
					</div>
					<div class="tab-pane" id="tab3">
						<h4>경찰청 과학수사전산시스템</h4>
						<h4>성모병원 사이트</h4>
						<h4>경찰병원 사이트</h4>
						<h4>법제처 사이트</h4>
						<h4>LG 엔시스 웹진 사이트</h4>
						<h4>이베이 신규서비스</h4>
						<h4>폴리텍대학교 사이트</h4>
						<h4>삼성카드 웹 사이트</h4>
					</div>

					<div class="tab-pane" id="tab4">
						<h4>대웅제약 사이트</h4>
						<h4>중소기업진흥공단 사이트</h4>
						<h4>신한은행 웹진 사이트</h4>
						<h4>이베이 옥션 사이트</h4>
					</div>
					<div class="tab-pane" id="tab5">
						<h4>롯데월드 통합 웹사이트</h4>
						<h4>롯데마트 웹사이트</h4>
						<h4>천재학습 백과 웹사이트</h4>
						<h4>KB 손해보험 웹사이트</h4>
						<h4>흥국생명 영업지원 웹사이트</h4>
					</div>
					<div class="tab-pane" id="tab6">
						<h4>SKB 광고 웹사이트</h4>
						<h4>VP 경제시스템 웹사이트</h4>
						<h4>BC카드 기프트 카드 웹사이트</h4>
						<h4>K 뱅크 웹사이트</h4>
						<h4>롯데마트 온라인 구매 웹사이트</h4>
					</div>
					<div class="tab-pane" id="tab7">
						<h4>롯데카드 웹사이트</h4>
						<h4>BC카드 포인트 사이트</h4>
						<h4>NHN 농협 MMS 웹사이트</h4>
						<h4>GALAXY Apps B/E 개발</h4>
						<h4>MPM QR Pay 사이트</h4>
						<h4>청년희망재단 웹사이트</h4>
						<h4>데맴버스 L.pay 개발</h4>
						<h4>삼성카드 웹 사이트</h4>
					</div>
					<div class="tab-pane" id="tab8">
						<h4>롯데맴버스 고도화</h4>
						<h4>KT 닷컴 유지보수</h4>
						<h4>VP 페이트러스 웹사이트</h4>
						<h4>코오롱 베니트 웹사이트</h4>
					</div>
					<div class="tab-pane" id="tab9">
							<h4>
								<c:forEach var="row" items="${list}">
								<% pageContext.setAttribute("newLineChar", ","); %>
								${fn:replace(row.projectDesc, newLineChar, "<br/>")}							
							</c:forEach>
							</h4>	
							<c:forEach var="row" items="${list}">
						<a href="${path}/admin/detail/${row.projectId}">
						</a></c:forEach>							
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$('.next-button').click(function() {
			$('.nav-tabs > .active').next('li').find('a').trigger('click');
		});

		$('.previous-button').click(function() {
			$('.nav-tabs > .active').prev('li').find('a').trigger('click');
		});

</script>
</body>
</html>
