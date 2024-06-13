<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지</title>
  <script>
  	function removeMember() {
  		let answer = prompt("'탈퇴하겠습니다.'를 정확히 입력해주세요.")
  		
  		if(answer == "탈퇴하겠습니다."){
  			console.log(answer)
  			$.ajax({
  				url: "<c:url value='/deleteDo'/>",
  				type: "post",
  				contentType: 'application/json',
  				data: {
  					memId: "${sessionScope.login.memId}"
  				},
  				success: function(res) {
  					location.href= "<c:url value='/logoutDo'/>";
  				},
  				error: function(e) {
  					console.log(e);
  				}
  			});
  		} else {
  			console.log(answer)
  			alert("정확히 입력해주세요.");
  		}
  	}
  </script>
</head>

<body>

	<!-- nav bar -->
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>

  <!-- content -->
  <div class="main" style="padding: 20px 150px">
  <div class="row">
    <div class="img-container" style="padding: 40px 0; text-align: center;">
      <img src="resources/img/room.jpg" class="" alt="room" height="500">
    </div>
  </div>
  
    <h1 style="text-align: left;">마이페이지</h1>
  <hr>
  
  <div class="row">
    <div class="col-2">
      <div class="list-group" id="list-tab" role="tablist" style="padding: 20px; position: sticky; top: 60px;">
        <a class="list-group-item list-group-item-action list-group-item-light active" id="list-1-list"
          data-bs-toggle="list" href="#list-1" role="tab" aria-controls="list-home">찜한 미술관</a>
        <a class="list-group-item list-group-item-action list-group-item-light" id="list-2-list" data-bs-toggle="list"
          href="#list-2" role="tab" aria-controls="list-profile">찜한 전시회</a>
        <a class="list-group-item list-group-item-action list-group-item-light" id="list-3-list" data-bs-toggle="list"
          href="#list-3" role="tab" aria-controls="list-messages" disabled>최근 본 컨텐츠</a>
        <a class="list-group-item list-group-item-action list-group-item-light" id="list-4-list" data-bs-toggle="list"
          href="#list-4" role="tab" aria-controls="list-settings">회원 정보 수정</a>
      </div>
    </div>
    <div class="col-10">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-1" role="tabpanel" aria-labelledby="list-home-list">
          <div class="row row-cols-1 row-cols-md-3 g-4" style="padding: 40px;">
          	<div class="col">
	            <div class="card">
	              <img src="resources/img/gg1.jpg" class="card-img-top" height="280" alt="미술관1">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
            <div class="col">
	            <div class="card">
	              <img src="resources/img/gg2.jpg" class="card-img-top" height="280" alt="미술관2">
	              <div class="card-body">
	                <h5 class="card-title">국립 현대 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
            <div class="col">
	            <div class="card">
	              <img src="resources/img/gg3.jpg" class="card-img-top" height="280" alt="미술관3">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg4.jpg" class="card-img-top" height="280" alt="미술관4">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg5.jpg" class="card-img-top" height="280" alt="미술관5">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg6.jpg" class="card-img-top" height="280" alt="미술관6">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg7.jpg" class="card-img-top" height="280" alt="미술관7">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg8.jpg" class="card-img-top" height="280" alt="미술관8">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/gg9.jpg" class="card-img-top" height="280" alt="미술관9">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
          </div>
        </div>
        <div class="tab-pane fade" id="list-2" role="tabpanel" aria-labelledby="list-profile-list">
          <div class="row row-cols-1 row-cols-md-3 g-4" style="padding: 40px;">
          	<div class="col">
	            <div class="card">
	              <img src="resources/img/ep1.jpg" class="card-img-top" height="280" alt="전시회1">
	              <div class="card-body">
	                <h5 class="card-title">AI 전시회</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
            <div class="col">
	            <div class="card">
	              <img src="resources/img/ep2.jpg" class="card-img-top" height="280" alt="전시회2">
	              <div class="card-body">
	                <h5 class="card-title">황금 전시회</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
            <div class="col">
	            <div class="card">
	              <img src="resources/img/ep3.jpg" class="card-img-top" height="280" alt="전시회3">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep4.jpg" class="card-img-top" height="280" alt="전시회4">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep5.jpg" class="card-img-top" height="280" alt="전시회5">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep6.jpg" class="card-img-top" height="280" alt="전시회6">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep7.jpg" class="card-img-top" height="280" alt="전시회7">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep8.jpg" class="card-img-top" height="280" alt="전시회8">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
	        <div class="col">
	            <div class="card">
	              <img src="resources/img/ep9.jpg" class="card-img-top" height="280" alt="전시회9">
	              <div class="card-body">
	                <h5 class="card-title">서울 시립 미술관</h5>
	              </div>
	              <ul class="list-group list-group-flush">
				    <li class="list-group-item">조회 수: 20</li>
				    <li class="list-group-item">찜한 수: 00</li>
				  </ul>
				  <a class="card-body" href="#">
				  	<i class="bi bi-heart"></i>
				  	<p class="card-text" style="display: inline-block;">찜 하기</p>
				  </a>
	            </div>
	        </div>
          </div>
        </div>
        <div class="tab-pane fade" id="list-3" role="tabpanel" aria-labelledby="list-messages-list">...</div>
        <div class="tab-pane fade" id="list-4" role="tabpanel" aria-labelledby="list-settings-list">
          <div class="row">
            <div class="col-6" style="margin: auto;">
              <form method="post" action="<c:url value="/updateDo"/>" style="text-align: center; margin: 30% 0;">
                <h3 style="margin-bottom: 80px;">회원 정보 수정</h3>
                <div class="row" style="margin-bottom: 2rem;">
                  <input name="memId" type="hidden" value="${sessionScope.login.getMemId()}">
                  <label class="form-label col-3" for="name" style="text-align: left;">이름</label>
                  <div class="col-9">
                    <input class="form-control" id="name" name="memNm" type="text" value="${sessionScope.login.getMemNm()}" required>
                  </div>
                </div>
                <div class="row" style="margin-bottom: 2rem;">
                  <label class="form-label col-3" for="gender" style="text-align: left;">성별</label>
                  <div class="col-9">
                    <div class="row">
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender1" name="memGen" type="radio" value="M" <c:if test="${sessionScope.login.memGen == 'M'}">checked</c:if>>
                        <label class="form-check-label" for="gender1">M</label>
                      </div>
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender2" name="memGen" type="radio" value="W" <c:if test="${sessionScope.login.memGen == 'W'}">checked</c:if>>
                        <label class="form-check-label" for="gender2">W</label>
                      </div>
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender3" name="memGen" type="radio" value="" <c:if test="${sessionScope.login.memGen == ''}">checked</c:if>>
                        <label class="form-check-label" for="gender3">선택안함</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row" style="margin-bottom: 40px;">
                  <label class="form-label col-3" for="age" style="text-align: left;">나이</label>
                  <div class="col-9">
                    <select class="form-select" id="age" name="memAge" aria-label="Default select example">
                      <option  <c:if test="${sessionScope.login.memAge == ''}">selected</c:if>>선택 안함</option>
                      <option value="10" <c:if test="${sessionScope.login.memAge == '10'}">selected</c:if>>10대</option>
                      <option value="20" <c:if test="${sessionScope.login.memAge == '20'}">selected</c:if>>20대</option>
                      <option value="30" <c:if test="${sessionScope.login.memAge == '30'}">selected</c:if>>30대</option>
                      <option value="40" <c:if test="${sessionScope.login.memAge == '40'}">selected</c:if>>40대</option>
                      <option value="50" <c:if test="${sessionScope.login.memAge == '50'}">selected</c:if>>50대</option>
                      <option value="60" <c:if test="${sessionScope.login.memAge == '60'}">selected</c:if>>60대</option>
                      <option value="70" <c:if test="${sessionScope.login.memAge == '70'}">selected</c:if>>70대 이상</option>
                    </select>
                  </div>
                </div>
                <button class="btn btn-dark">수정하기</button>
                <button class="btn btn-danger" type="button" onclick="removeMember()">회원 탈퇴</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</body>

</html>
