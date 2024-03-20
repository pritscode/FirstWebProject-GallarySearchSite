<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.enlarge-text {
	font-size: 50px;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<title>전시회 검색 사이트 - 마이페이지 - 찜한 전시회 폴더</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">마이페이지 - 찜한 전시회 폴더</span>
	</div>
	<hr>
	<!--<p>${sessionScope.login.nm}</p>
		<p>${sessionScope.login.id}</p>
		<p>${sessionScope.login.gender}</p>
		<p>${sessionScope.login.age}</p> -->
		<!-- 게시글 출력 -->
		<c:forEach items="${arr}"  var="folder">
			<h3>${folder.foldNm}</h3><form method="post" action="<c:url value="/foldContentView" />" >
			<div class="form-group">
				<input name="id" value="${sessionScope.login.id}" type="hidden" />
			</div>
			<div class="form-group pt-1">
				<input name="foldNm" value="${folder.foldNo}" type="hidden">
			</div>
			<input type="submit" class="btn btn-light form-control" value="폴더열기">
		</form>
				<hr>
				<!-- <c:forEach items="${arrC}" var="content">
					<h5>${content.galNm}</h5><h5>${content.galAd}</h5><h5>${content.galTn}</h5>
				</c:forEach> -->
		</c:forEach>
		<hr>
		<form method="post" action="<c:url value="/createFolderDo" />" >
			<h3>새폴더 생성</h3>
			<div class="form-group">
				<input name="id" value="${sessionScope.login.id}" type="hidden" />
			</div>
			<div class="form-group pt-1">
				<input type="text" class="form-control" placeholder="폴더이름" name="foldNm">
			</div>
			<input type="submit" class="btn btn-light form-control" value="폴더생성">
		</form>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>