<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
</head>

<body>
	
	<!-- nav bar -->
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>

    <!-- content -->
    <div class="main" style="padding: 20px 150px">
    <div class="row">
      <div class="col-4" style="margin: auto;">
        <form method="post" action="<c:url value="loginDo"/>" style="text-align: center; margin: 15% 0;">
          <h1 style="margin-bottom: 80px;">로그인</h1>
          <div class="row" style="margin-bottom: 30px;">
              <label class="form-label col-3" for="username" style="text-align: left;">아이디</label>
              <div class="col-9">
                <input class="form-control" id="username" name="memId" type="text" required>
              </div>
          </div>
          <div class="row" style="margin-bottom: 40px;">
            <label class="form-label col-3" for="password" style="text-align: left;">비밀번호</label>
            <div class="col-9">
              <input class="form-control" id="password" name="memPw" type="password" required>
            </div>
          </div>
          <button class="btn btn-dark">로그인</button>
        </form>
      </div>
    </div>
	</div>
</body>

</html>