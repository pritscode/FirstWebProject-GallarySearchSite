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
<title>전시회 검색 사이트 - 서울 전체</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">서울전체</span>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-2">
			<!-- col-sm-2 -->
			<div class="list-group" id="mylist" role="tablist">
				<a class="list-group-item list-group-item-action active list-group-item-light"
					data-bs-toggle="list" href="#list-1" role="tab">미술관</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-2" role="tab">전시회</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-3" role="tab">지역</a>
			</div>
		</div>
		<div class="col-sm-10">
			<!-- col-sm-10 -->
				<div class="tab-content">
					<div class="tab-pane active" id="list-1" role="tabpanel">
					1
					</div>
					<div class="tab-pane" id="list-2" role="tabpanel">
					2
					</div>
					<div class="tab-pane" id="list-3" role="tabpanel">
					3
					</div>
				</div>
		</div>
	</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>
