<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                  <a href="#gallery" class="list-group-item list-group-item-action list-group-item-light">미술관</a>
                  <a href="#exhib" class="list-group-item list-group-item-action list-group-item-light">전시회</a>
              </div>
          </section>
      </div>

      <!-- 전시회 리스트 -->
      <div class="col-10">
        <div style="padding: 40px;">
          <h2 id="gallery">미술관</h2>
          <div class="card-group" style="padding: 40px;">
              <div class="card">
                  <img src="resources/img/ep1.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">카드 내용</p>
                  </div>
              </div>
              <div class="card">
                  <img src="resources/img/ep1.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">카드 내용</p>
                  </div>
              </div>
              <div class="card">
                  <img src="resources/img/ep1.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">카드 내용</p>
                  </div>
              </div>
          </div>
        </div>
        
        <hr>
        
        <div style="padding: 40px;">
          <h2 id="exhib">전시회</h2>
          <div class="card-group" style="padding: 40px;">
              <div class="card">
                  <img src="resources/img/ep1.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">카드 내용</p>
                  </div>
              </div>
              <div class="card">
                  <img src="resources/img/ep2.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">카드 내용</p>
                  </div>
              </div>
              <div class="card">
                  <img src="resources/img/ep3.jpg" class="card-img-top" alt="전시회">
                  <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">카드 내용</p>
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