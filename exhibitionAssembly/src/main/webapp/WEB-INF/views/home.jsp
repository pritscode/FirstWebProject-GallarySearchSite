<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인 페이지</title>
</head>

<body>

	<!-- nav bar -->
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>

	<!-- content 영역 -->
	<div class="main" style="padding: 20px 150px">
		<!-- 전시회 이미지 자동 슬라이드 쇼 -->
		<div class="row">
			<div id="carouselExampleAutoplaying" class="carousel slide"
				data-bs-ride="carousel" style="padding: 80px;">
				<div class="carousel-inner">
					<div class="carousel-item active"
						style="background-size: contain; text-align: center;">
						<img src="resources/img/gp1.jpg" height="500"
							class="d-block w-100" alt="전시회"
							style="background-size: contain; text-align: center;">
					</div>
					<div class="carousel-item"
						style="background-size: contain; text-align: center;">
						<img src="resources/img/gp2.jpg" height="500"
							class="d-block w-100" alt="전시회"
							style="background-size: contain; text-align: center;">
					</div>
					<div class="carousel-item"
						style="background-size: contain; text-align: center;">
						<img src="resources/img/gp3.jpg" height="500"
							class="d-block w-100" alt="전시회"
							style="background-size: contain; text-align: center;">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

		<hr>

		<div class="row">
			<!-- 전시회 목차 이동 리스트 -->
			<div class="col-2">
				<section style="position: sticky; top: 60px;">
					<div class="list-group" style="padding: 20px;">
						<a href="#popExhib"
							class="list-group-item list-group-item-action list-group-item-light">인기전시회</a>
						<a href="#newExhib"
							class="list-group-item list-group-item-action list-group-item-light">최신전시회</a>
					</div>
				</section>
			</div>

			<!-- 전시회 리스트 -->
			<div class="col-10">
				<div style="padding: 40px;">
					<h2 id="popExhib">인기 전시회</h2>
					<div class="row row-cols-1 row-cols-md-3 g-4"
						style="padding: 40px;">
						<div class="col">
							<div class="card">
								<img src="resources/img/ep1.jpg" class="card-img-top"
									height="280" alt="전시회1">
								<a href="<c:url value="/detailView" />" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[0].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[0].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[0].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep2.jpg" class="card-img-top"
									height="280" alt="전시회2">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[1].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[1].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[1].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep3.jpg" class="card-img-top"
									height="280" alt="전시회3">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[2].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[2].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[2].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep4.jpg" class="card-img-top"
									height="280" alt="전시회4">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[3].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[3].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[3].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep5.jpg" class="card-img-top"
									height="280" alt="전시회5">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[4].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[4].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[4].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep6.jpg" class="card-img-top"
									height="280" alt="전시회6">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[5].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[5].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[5].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep7.jpg" class="card-img-top"
									height="280" alt="전시회7">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[6].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[6].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[6].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep8.jpg" class="card-img-top"
									height="280" alt="전시회8">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[7].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[7].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[7].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep9.jpg" class="card-img-top"
									height="280" alt="전시회9">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.popExh[8].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.popExh[8].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.popExh[8].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div style="padding: 40px;">
					<h2 id="newExhib">최신 전시회</h2>
					<div class="row row-cols-1 row-cols-md-3 g-4"
						style="padding: 40px;">
						<div class="col">
							<div class="card">
								<img src="resources/img/ep1.jpg" class="card-img-top"
									height="280" alt="전시회1">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[0].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[0].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[0].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep2.jpg" class="card-img-top"
									height="280" alt="전시회2">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[1].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[1].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[1].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep3.jpg" class="card-img-top"
									height="280" alt="전시회3">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[2].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[2].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[2].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep4.jpg" class="card-img-top"
									height="280" alt="전시회4">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[3].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[3].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[3].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep5.jpg" class="card-img-top"
									height="280" alt="전시회5">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[4].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[4].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[4].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep6.jpg" class="card-img-top"
									height="280" alt="전시회6">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[5].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[5].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[5].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep7.jpg" class="card-img-top"
									height="280" alt="전시회7">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[6].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[6].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[6].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep8.jpg" class="card-img-top"
									height="280" alt="전시회8">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[7].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[7].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[7].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/ep9.jpg" class="card-img-top"
									height="280" alt="전시회9">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.newExh[8].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수: ${sessionScope.newExh[8].exhViews}</li>
									<li class="list-group-item">찜한 수: ${sessionScope.newExh[8].exhMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
	<!-- content 영역 끝 -->

</body>

</html>
