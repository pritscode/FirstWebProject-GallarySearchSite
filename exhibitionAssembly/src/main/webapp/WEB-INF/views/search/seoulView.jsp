<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>서울</title>
</head>

<body>

	<!-- nav bar -->
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>

	<!-- content 영역 -->
	<div class="main" style="padding: 20px 150px">
		<div class="row">
			<div class="img-container" style="padding: 40px; text-align: center;">
				<img src="resources/img/seoul.png" height="500" class="" alt="seoul">
			</div>
		</div>

		<h1 style="text-align: left;">서울 전체</h1>
		<hr>

		<div class="row">
			<!-- 전시회 목차 이동 리스트 -->
			<div class="col-2">
				<section style="position: sticky; top: 60px;">
					<div class="list-group" style="padding: 20px;">
						<a href="#gallery"
							class="list-group-item list-group-item-action list-group-item-light">미술관</a>
						<a href="#exhib"
							class="list-group-item list-group-item-action list-group-item-light">전시회</a>
					</div>
				</section>
			</div>

			<!-- 미술관 리스트 -->
			<div class="col-10">
				<div style="padding: 40px;">
					<h2 id="gallery">미술관</h2>
					<div class="row row-cols-1 row-cols-md-3 g-4"
						style="padding: 40px;">
						<div class="col">
							<div class="card">
								<img src="resources/img/gg1.jpg" class="card-img-top"
									height="280" alt="미술관1">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[0].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[0].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[0].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg2.jpg" class="card-img-top"
									height="280" alt="미술관2">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[1].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[1].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[1].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg3.jpg" class="card-img-top"
									height="280" alt="미술관3">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[2].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[2].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[2].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg4.jpg" class="card-img-top"
									height="280" alt="미술관4">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[3].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[3].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[3].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg5.jpg" class="card-img-top"
									height="280" alt="미술관5">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[4].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[4].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[4].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg6.jpg" class="card-img-top"
									height="280" alt="미술관6">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[5].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[5].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[5].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg7.jpg" class="card-img-top"
									height="280" alt="미술관7">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[6].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[6].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[6].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg8.jpg" class="card-img-top"
									height="280" alt="미술관8">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[7].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[7].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[7].galMarks}</li>
								</ul>
								<a class="card-body" href="#" style="text-decoration: none;"> <i class="bi bi-heart"></i>
									<p class="card-text" style="display: inline-block;">찜 하기</p>
								</a>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<img src="resources/img/gg9.jpg" class="card-img-top"
									height="280" alt="미술관9">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulGal[8].galNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulGal[8].galViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulGal[8].galMarks}</li>
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
					<h2 id="exhib">전시회</h2>
					<div class="row row-cols-1 row-cols-md-3 g-4"
						style="padding: 40px;">
						<div class="col">
							<div class="card">
								<img src="resources/img/ep1.jpg" class="card-img-top"
									height="280" alt="전시회1">
								<a href="<c:url value="/detailView"/>" class="card-body" style="text-decoration: none;">
									<h5 class="card-title">${sessionScope.seoulExh[0].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[0].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[0].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[1].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[1].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[1].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[2].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[2].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[2].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[3].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[3].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[3].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[4].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[4].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[4].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[5].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[5].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[5].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[6].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[6].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[6].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[7].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[7].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[7].exhMarks}</li>
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
									<h5 class="card-title">${sessionScope.seoulExh[8].exhNm}</h5>
								</a>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">조회 수:
										${sessionScope.seoulExh[8].exhViews}</li>
									<li class="list-group-item">찜한 수:
										${sessionScope.seoulExh[8].exhMarks}</li>
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
