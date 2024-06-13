<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- nav bar -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid" style="padding: 0 150px">
		<a class="navbar-brand" href="<c:url value="/" />"> <img
			src="resources/img/logo.png" alt="logo">
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="#">전국</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 서울 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="<c:url value="/seoulView" />">서울 전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">서울시립미술관</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">국립현대미술관</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">세종문화회관</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">경인미술관</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">K현대미술관</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">코엑스</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">양재
								AT 센터</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true">인천</a></li>
				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true">경기</a></li>
				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true">충청도</a></li>
				<li class="nav-item"><a class="nav-link disabled"
					aria-disabled="true">강원도</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 남부 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item disabled" aria-disabled="true">전라도
								전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">광주</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">전북</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">전남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">경상도
								전체</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">부산</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">대구</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">울산</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">경북</a></li>
						<li><a class="dropdown-item disabled" aria-disabled="true">경남</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item disabled" aria-disabled="true">제주도</a></li>
					</ul></li>
			</ul>
			<ul class="navbar-nav d-flex" style="margin-right: 20px;">
				<c:if test="${sessionScope.login != null}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/mypageView" />">마이페이지</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/logoutDo" />">로그아웃</a>
					</li>
				</c:if>
				<c:if test="${sessionScope.login == null}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/loginView" />">로그인</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/registView" />">회원가입</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>

<c:if test="${not empty msg}">
	<script>
		alert("${msg}")
		
		swal({
		title : "${msg}",
		icon  : "success",
		closeOnClickOutside : false
		})
	</script>
</c:if>
