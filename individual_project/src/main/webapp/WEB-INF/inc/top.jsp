<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<!-- nav영역 -->
<script>
	function clickthis() {
		alert("현재는 서울검색 서비스만 운영중입니다.");
	}
</script>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid">
		<a class="navbar-brand"
			href="main.jsp">
			<img src="./image/logo.png" alt="logo" width="30" height="24">
		</a> <a class="navbar-brand"
			href="main.jsp">전시회
			검색 전용 홈페이지</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#" onclick="clickthis()">전국</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="seoul.jsp" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 서울 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="http://192.168.0.20:5500/individual_project/gallarySearchSeoul.html">서울
								전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#">서울시립미술관</a></li>
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
				<li class="nav-item"><a class="nav-link" href="#"
					onclick="clickthis()">인천</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					onclick="clickthis()">경기</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					onclick="clickthis()">충청도</a></li>
				<li class="nav-item">
				<li class="nav-item"><a class="nav-link" href="#"
					onclick="clickthis()">강원도</a></li>
				<li class="nav-item">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 남부 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#" onclick="clickthis()">전라도
								전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">광주</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">전북</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">전남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">경상도
								전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">부산</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">대구</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">울산</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">경북</a></li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">경남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="#" onclick="clickthis()">제주도</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#"
					onclick="clickthis()">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">회원가입</a>
				</li>
			</ul>
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
</html>
