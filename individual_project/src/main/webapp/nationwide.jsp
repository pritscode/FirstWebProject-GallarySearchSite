<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.enlarge-text {
	font-size: 50px;
}
.middle-text{
	font-size: 35px;
}
</style>
<title>전시회 검색 사이트</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">전국</span>
	</div>
	<!-- img -->
	<div class="row">
		<div class="col-8">
			<div id="carouselExampleSlidesOnly" class="carousel slide"
				data-bs-ride="carousel" style="height: 500px;">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="..." class="d-block w-100" alt="mapping feature">
					</div>
				</div>
			</div>
		</div>
		<div class="col-4">
			<table class="table">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">지역</th>
						<th scope="col">미술관수</th>
						<th scope="col">전시회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td colspan="2">Larry the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<span class="middle-text">선택명</span>
	</div>
	<div class="row">
		<div class="col-4">
			<img src="..." class="img-thumbnail" alt="galleryimg">
		</div>
		<div class="col-8">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">진행중 전시</th>
						<th scope="col">전시회명</th>
						<th scope="col">장소</th>
						<th scope="col">기간</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td colspan="2">Larry the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- list -->
	<div data-bs-spy="scroll" data-bs-target="#list-example"
		data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
		<!-- <h2 id="list-item-1">인기 전시회</h2> -->
		<hr>
		<div class="card-group">
			<div class="card">
				<img src="./image/전시회1.gif" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">전시회1</h5>
					<p class="card-text">전시회1입니다.</p>
					<p class="card-text">
						<small class="text-body-secondary">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img src="./image/전시회2.gif" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">전시회2</h5>
					<p class="card-text">전시회2입니다.</p>
					<p class="card-text">
						<small class="text-body-secondary">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img src="./image/전시회3.gif" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">전시회3</h5>
					<p class="card-text">전시회3입니다.</p>
					<p class="card-text">
						<small class="text-body-secondary">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>