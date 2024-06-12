<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>
</head>

<body>
    <!-- nav bar -->
    <jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>

    <!-- content -->
    <div class="main" style="padding: 20px 150px">
    <div class="row">
      <div class="col-4" style="margin: auto;">
        <form method="post" action="<c:url value="registDo"/>" style="text-align: center; margin: 15% 0;">
          <h1 style="margin-bottom: 80px;">회원가입</h1>
          <div class="row" style="margin-bottom: 2rem;">
              <label class="form-label col-3" for="username" style="text-align: left;">아이디</label>
              <div class="col-9">
                <input class="form-control" id="username" name="memId" type="text" required>
              </div>
          </div>
          <div class="row" style="margin-bottom: 2rem;">
            <label class="form-label col-3" for="password" style="text-align: left;">비밀번호</label>
            <div class="col-9">
              <input class="form-control" id="password" name="memPw" type="password" required>
            </div>
          </div>
          <div class="row" style="margin-bottom: 2rem;">
            <label class="form-label col-3" for="passwordChk" style="text-align: left;">비밀번호 확인</label>
            <div class="col-9">
              <input class="form-control" id="passwordChk" name="pwCheck" type="password" required>
            </div>
          </div>
          <div class="row" style="margin-bottom: 2rem;">
            <label class="form-label col-3" for="name" style="text-align: left;">이름</label>
            <div class="col-9">
              <input class="form-control" id="name" name="memNm" type="text" required>
            </div>
          </div>
          <div class="row" style="margin-bottom: 2rem;">
            <label class="form-label col-3" for="gender" style="text-align: left;">성별</label>
            <div class="col-9">
              <div class="row">
                <div class="form-check col-4">
                  <input class="form-check-input" id="gender1" name="memGen" type="radio" value="M">
                  <label class="form-check-label" for="gender1">M</label>
                </div>
                <div class="form-check col-4">
                  <input class="form-check-input" id="gender2" name="memGen" type="radio" value="W">
                  <label class="form-check-label" for="gender2">W</label>
                </div>
                <div class="form-check col-4">
                  <input class="form-check-input" id="gender3" name="memGen" type="radio" value="">
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
          <button class="btn btn-dark">회원가입</button>
        </form>
      </div>
    </div>
    </div>
</body>

</html>