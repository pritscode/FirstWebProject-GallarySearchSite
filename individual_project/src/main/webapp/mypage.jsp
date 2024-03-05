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
<title>전시회 검색 사이트 - 마이페이지</title>
</head>
<body>
<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
    <div class="col-sm-1">
      <!-- col-sm-1.5 -->
      <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
        <a href="#">
          <button type="button" class="btn btn-primary">개인정보 수정</button>
        </a>
        <a href="#">
          <button type="button" class="btn btn-primary">최근 본 전시</button>
        </a>
        <a href="#">
          <button type="button" class="btn btn-primary">즐겨찾기</button>
        </a>
      </div>
    </div>
    <div class="col-sm-11">
      <!-- col-sm-11 -->
      <div class="row">
          <span class="enlarge-text">마이페이지</span>
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