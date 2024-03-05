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
</style>

<title>전시회 검색 사이트</title>
</head>
<body>
<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
    <div class="col-sm-1">
      <!-- col-sm-1.5 -->
      <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
        <a href="http://192.168.0.20:5500/individual_project/gallarySearchSeoulArtMuseum.html">
          <button type="button" class="btn btn-primary">미술관별 검색</button>
        </a>
        <a href="http://192.168.0.20:5500/individual_project/gallarySearchSeoulExhibition.html">
          <button type="button" class="btn btn-primary">전시회별 검색</button>
        </a>
        <div class="btn-group dropend" role="group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            지역별 검색
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">지역1</a></li>
            <li><a class="dropdown-item" href="#">지역2</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-11">
      <!-- col-sm-11 -->
      <div class="row">
          <span class="enlarge-text">인천전체</span>
      </div>
      <div class="row row-cols-1 row-cols-md-5 g-4">
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content. This content is a little bit longer.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content. This content is a little bit longer.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content. This content is a little bit longer.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content. This content is a little bit longer.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
                content. This content is a little bit longer.</p>
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
