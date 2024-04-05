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
<script>
	<!-- <c:set var="cgurl" value="${sessionScope.folder.galUrl}" scope="request" /> -->
	<c:set var="cgurl" value="https://sema.seoul.go.kr/" scope="request" />
</script>
<title>전시회 검색 사이트 - 마이페이지 - 관심 전시회 폴더</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">마이페이지 - 관심 전시회 폴더</span>
	</div>
	<hr>
	<div class="row">
	<h3>${folder.foldNm}</h3>
	</div>
	<div class="row" height = "600px">
	<iframe src=${cgurl} name="left" width="400px" height="600px"></iframe><iframe src=${cgurl} name="right" width="400px" height="600px"></iframe>
	</div>
	<hr>
		<div class="card-group">
			<c:forEach items="${arrEC}" var="content">
				<div class="card">
					<img src="" class="card-img-top" alt="${content.exhNm}">
					<div class="card-body">
						<a href="${content.exhUrl}" target="_blank">
							<h5 class="card-title">${content.exhNm}</h5>
							<p class="card-text">
								${content.exhAd} ${content.exhTn}
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
