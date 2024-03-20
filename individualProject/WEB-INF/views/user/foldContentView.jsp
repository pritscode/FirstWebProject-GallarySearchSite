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
<title>전시회 검색 사이트 - 마이페이지 - 관심 미술관 폴더</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">마이페이지 - 관심 미술관 폴더</span>
	</div>
	<hr>
	<!--<p>${sessionScope.login.nm}</p>
		<p>${sessionScope.login.id}</p>
		<p>${sessionScope.login.gender}</p>
		<p>${sessionScope.login.age}</p> -->
	<div class="row">
	<h3>${folder.foldNm}</h3>
	<!-- <c:set var="cgurl" value="${sessionScope.folder.galUrl}" scope="request" /> -->
	<c:set var="cgurl" value="/nonePage" scope="request" />
	</div>
	<div class="row" height = "600px">
	<iframe src=${cgurl} name="left" width="400px" height="600px"></iframe><iframe src=${cgurl} name="right" width="400px" height="600px"></iframe>
	</div>
	<hr>
		<div class="card-group">
			<c:forEach items="${arrC}" var="content">
				<div class="card">
					<img src="" class="card-img-top" alt="${content.galNm}">
					<div class="card-body">
						<a href="${content.galUrl}" target="_blank">
							<h5 class="card-title">${content.galNm}</h5>
							<p class="card-text">
								${content.galAd} ${content.galTn}
							</p>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>