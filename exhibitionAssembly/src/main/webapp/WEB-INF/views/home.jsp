<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" style="padding: 80px;">
                <div class="carousel-inner">
                    <div class="carousel-item active" style="background-size: contain; text-align: center;">
                        <img src="resources/img/gp1.jpg" height="500" class="d-block w-100" alt="전시회" style="background-size: contain; text-align: center;">
                    </div>
                    <div class="carousel-item" style="background-size: contain; text-align: center;">
                        <img src="resources/img/gp2.jpg" height="500" class="d-block w-100" alt="전시회" style="background-size: contain; text-align: center;">
                    </div>
                    <div class="carousel-item" style="background-size: contain; text-align: center;">
                        <img src="resources/img/gp3.jpg" height="500" class="d-block w-100" alt="전시회" style="background-size: contain; text-align: center;">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
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
                        <a href="#popExhib" class="list-group-item list-group-item-action list-group-item-light">인기전시회</a>
                        <a href="#newExhib" class="list-group-item list-group-item-action list-group-item-light">최신전시회</a>
                    </div>
                </section>
            </div>

            <!-- 전시회 리스트 -->
            <div class="col-10">
              <div style="padding: 40px;">
                <h2 id="popExhib">인기 전시회</h2>
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
              <hr>
              <div style="padding: 40px;">
                <h2 id="newExhib">최신 전시회</h2>
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
