<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>전시회 검색 사이트 - 회원가입</title>
</head>
<body>
<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="container-fluid">
      <div class="row align-items-center" style="height:700px">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
          <form action="loginAction.jsp" method="post">
            <h3	style="text-align: center; padding-bottom: 5%; padding-top: 15%;">회원가입</h3>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20">
            </div>
            <div class="form-group pt-1" style="padding-bottom: 5%;">
              <input type="password" class="form-control" placeholder="비밀번호" name="userPw" maxlength="20">
            </div>
            <input type="submit" class="btn btn-dark form-control" value="회원가입">
          </form>
        </div>
        <div class="col-lg-4">
        </div>
      </div>
    </div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>