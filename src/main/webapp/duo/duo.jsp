<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/duo.css">
<link rel="stylesheet" href="css/compliment.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/duo.js"></script>
<script type="text/javascript" src="js/check.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
</head>
<body>
	<nav>
		<a href="HC" style="text-decoration: none;" class="on">WPWM</a>
		<a href="DuoHC" style="text-decoration: none;" class="on"><img
				src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-duo-gray.svg"
				id="topmenu_logo" onclick="location.href='DuoHC'" style="width: 30px; margin-top: -5px;">
				Duo(듀오찾기)</a>
		<a href="SuggestionHC" style="text-decoration: none;" class="on">건의사항</a>
		<c:choose>
					<c:when test="${sessionScope.accountInfo == null}">
						<!-- 로그인 안됨 -->
					</c:when>

					<c:otherwise>

						<c:set var="id" value="${sessionScope.accountInfo.id }"></c:set>
                        <c:if test="${id eq 'admin' }">
                            <button onclick="location.href='youtuberC'" id="btn_youtuber">
                                <span style="font-size: 12">Youtuber</span>
                            </button>
                        </c:if>
						<button
							onclick="window.open('MessageRecvlistC?nickname=${sessionScope.accountInfo.nickname }','쪽지보내기',
								'width=530,height=730,left=1100,top=0,scrollbar=yes');"
							id="btn_message"><span style="font-size: 12">쪽지함</span>
							</button>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${sessionScope.accountInfo == null}">
						<!-- 로그인 안됨 -->
						<a href="login.jsp" class="on" style="text-decoration: none;">로그인</a>
					</c:when>

					<c:otherwise>
						<button onclick="location.href='login'" id="btn_logout">
							<span  style="font-size: 12">로그아웃</span>
						</button>
						<button class="btn btn-primary mar dropdown-toggle" type="button"
							data-toggle="dropdown">${nickName }</button>
						<div class="dropdown-menu" style="width: 40px;">
							<span onclick="location.href='regC'"; class="dropdown-item" style="width: 50px; cursor: pointer;">개인정보 관리</span>
						</div>


					</c:otherwise>
				</c:choose>
	</nav>
	<div id="wrapper">
		<div id="secondMenu">
			<ul>
				<li style="color: rgba(123, 122, 142)"><img
					onclick="location.href='DuoHC'" src="https://duo.op.gg/duo.svg"
					id="secondmenu_logoimg"> &nbsp; 영원의 단짝 제대로 찾자!</li>
			</ul>
		</div>
		<div id="thirdMenu">
			<ul>
				<li><a href="DuoHC"><span class="thirdMenuTd">듀오찾기</span></a></li>
				<li><a href="ComplimentC?nickname=${sessionScope.accountInfo.nickname}"><span class="thirdMenuTd">칭찬하기</span></a></li>
			</ul>
		</div>
	</div>
	<table id="duoContentTbl">
		<tr>
			<td>
				<table id="duoContentPage">
					<tr>
						<td><jsp:include page="${contentPage }"></jsp:include></td>

					</tr>
				</table>
	</table>
	


</body>
</html>