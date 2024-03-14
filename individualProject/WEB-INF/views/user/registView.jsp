<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전시회 검색 전용 홈페이지 - 회원가입</title>
<c:if test="${not empty msg}">
	<script>alert("${msg}");</script>
</c:if>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="container-fluid">
		<div class="row align-items-center" style="height: 700px">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<form method="post" action="<c:url value="/registDo" />" >
					<h3
						style="text-align: center; padding-bottom: 5%; padding-top: 15%;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="id" data-sb-validations="required">
					</div>
					<div class="form-group pt-1" style="padding-bottom: 5%;">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="pw" data-sb-validations="required">
					</div>
					<div class="form-group pt-1" style="padding-bottom: 5%;">
						<input type="text" class="form-control" placeholder="이름"
							name="nm">
					</div>
					<input type="submit" class="btn btn-dark form-control" value="회원가입">
				</form>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>
