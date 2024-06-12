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
          href="#list-3" role="tab" aria-controls="list-messages" disabled>최근 본 미술관</a>
        <a class="list-group-item list-group-item-action list-group-item-light" id="list-4-list" data-bs-toggle="list"
          href="#list-4" role="tab" aria-controls="list-settings">회원 정보 수정</a>
      </div>
    </div>
    <div class="col-10">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-1" role="tabpanel" aria-labelledby="list-home-list">
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
        <div class="tab-pane fade" id="list-2" role="tabpanel" aria-labelledby="list-profile-list">
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
        <div class="tab-pane fade" id="list-3" role="tabpanel" aria-labelledby="list-messages-list">...</div>
        <div class="tab-pane fade" id="list-4" role="tabpanel" aria-labelledby="list-settings-list">
          <div class="row">
            <div class="col-6" style="margin: auto;">
              <form method="post" action="<c:url value="updateDo"/>" style="text-align: center; margin: 30% 0;">
                <h3 style="margin-bottom: 80px;">회원 정보 수정</h3>
                <div class="row" style="margin-bottom: 2rem;">
                  <label class="form-label col-3" for="name" style="text-align: left;">이름</label>
                  <div class="col-9">
                    <input class="form-control" id="name" name="userNm" type="text" required>
                  </div>
                </div>
                <div class="row" style="margin-bottom: 2rem;">
                  <label class="form-label col-3" for="gender" style="text-align: left;">성별</label>
                  <div class="col-9">
                    <div class="row">
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender1" name="userGen" type="radio" value="M">
                        <label class="form-check-label" for="gender1">M</label>
                      </div>
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender2" name="userGen" type="radio" value="W">
                        <label class="form-check-label" for="gender2">W</label>
                      </div>
                      <div class="form-check col-4">
                        <input class="form-check-input" id="gender3" name="userGen" type="radio" value="">
                        <label class="form-check-label" for="gender3">선택안함</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row" style="margin-bottom: 40px;">
                  <label class="form-label col-3" for="age" style="text-align: left;">나이</label>
                  <div class="col-9">
                    <select class="form-select" id="age" aria-label="Default select example">
                      <option selected>선택 안함</option>
                      <option value="10">10대</option>
                      <option value="20">20대</option>
                      <option value="30">30대</option>
                      <option value="40">40대</option>
                      <option value="50">50대</option>
                      <option value="60">60대</option>
                      <option value="70">70대 이상</option>
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