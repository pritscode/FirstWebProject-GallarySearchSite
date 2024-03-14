<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<!-- nav영역 -->
<script>
	function nofunction() {
		alert("현재는 서울검색 서비스만 운영중입니다.");
	}
</script>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid">
		<a class="navbar-brand" href="<c:url value="/"/>"> <img
			src="assets/img/image/logo.png" alt="logo" width="30" height="24">
		</a> <a class="navbar-brand" href="<c:url value="/"/>">전시회 검색 전용 홈페이지</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="<c:url value="/nation"/>" onclick="nofunction()">전체</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 서울 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="<c:url value="/seoul"/>">서울 전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="seoulMuseumofArt.jsp">서울시립미술관</a></li>
						<li><a class="dropdown-item" href="#">국립현대미술관</a></li>
						<li><a class="dropdown-item" href="#">세종문화회관</a></li>
						<li><a class="dropdown-item" href="#">경인미술관</a></li>
						<li><a class="dropdown-item" href="#">K현대미술관</a></li>
						<li><a class="dropdown-item" href="#">아트바바</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#">코엑스</a></li>
						<li><a class="dropdown-item" href="#">양재 AT 센터</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="incheon.jsp"
					onclick="nofunction()">인천</a></li>
				<li class="nav-item"><a class="nav-link" href="gyeonggi.jsp"
					onclick="nofunction()">경기</a></li>
				<li class="nav-item"><a class="nav-link" href="chungcheong.jsp"
					onclick="nofunction()">충청도</a></li>
				<li class="nav-item">
				<li class="nav-item"><a class="nav-link" href="gangwon.jsp"
					onclick="nofunction()">강원도</a></li>
				<li class="nav-item">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 남부 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="jeolla.jsp"
							onclick="nofunction()">전라도 전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">광주</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">전북</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">전남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="gyeongsang.jsp"
							onclick="nofunction()">경상도 전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">부산</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">대구</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">울산</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">경북</a></li>
						<li><a class="dropdown-item" href="#" onclick="nofunction()">경남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="jeju.jsp"
							onclick="nofunction()">제주도</a></li>
					</ul></li>

			</ul>
			<c:if test="${sessionScope.login == null}">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/loginView"/>">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/registView"/>">회원가입</a></li>
				</ul>
			</c:if>
			<c:if test="${sessionScope.login != null}">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/mypageView" />" onclick="nofunction()">${sessionScope.login.id}님의 마이페이지</a></li>
					<li class="nav-item"><a class="nav-link py-3 px-0 px-lg-3 rounded"href="<c:url value="/logoutDo" />">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="<c:url value="/" />" onclick="nofunction()">문의게시판</a></li>
				</ul>
			</c:if>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="서울시립미술관"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit"
					style="width: 80px;">검색</button>
			</form>
		</div>
	</div>
</nav>
<!-- nav영역 끝 -->
