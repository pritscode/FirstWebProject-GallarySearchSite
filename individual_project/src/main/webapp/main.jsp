<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전시회 검색 사이트</title>
</head>
<body>
<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" style="height: 500px;">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="./image/seoulmuseumofart.jpg" class="d-block w-100" height="500px" alt="...">
      </div>
      <div class="carousel-item">
        <img src="./image/nationalMuseumofModernand....jpg" class="d-block w-100" height="500px" alt="...">
      </div>
      <div class="carousel-item">
        <img src="./image/sejong.png" class="d-block w-100" height="500px" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
      data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">이전</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
      data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">다음</span>
    </button>
  </div>
  <div class="row">
    <div class="col-2">
      <div id="list-example" class="list-group">
        <a class="list-group-item list-group-item-action" href="#list-item-1">인기전시회</a>
        <a class="list-group-item list-group-item-action" href="#list-item-2">최신전시회</a>
      </div>
    </div>
    <div class="col-10">
      <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
        <h2 id="list-item-1">인기 전시회</h2>
        <hr>
        <div class="card-group">
          <div class="card">
            <img src="./image/전시회1.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회1</h5>
              <p class="card-text">전시회1입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="./image/전시회2.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회2</h5>
              <p class="card-text">전시회2입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="./image/전시회3.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회3</h5>
              <p class="card-text">전시회3입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
        </div>
        <h2 id="list-item-2">최신 전시회</h2>
        <hr>
        <div class="card-group">
          <div class="card">
            <img src="./image/전시회1.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회1</h5>
              <p class="card-text">전시회1입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="./image/전시회2.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회2</h5>
              <p class="card-text">전시회2입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
          <div class="card">
            <img src="./image/전시회3.gif" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">전시회3</h5>
              <p class="card-text">전시회3입니다.</p>
              <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>
