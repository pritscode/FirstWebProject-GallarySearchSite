<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<a
					class="list-group-item list-group-item-action active list-group-item-light"
					data-bs-toggle="list" href="#list-1" role="tab">미술관</a> <a
					class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-2" role="tab">전시회</a> <a
					class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-3" role="tab">지역</a>
			</div>
		</div>
		<div class="col-sm-10">
			<!-- col-sm-10 -->
			<div class="tab-content">
				<div class="tab-pane active" id="list-1" role="tabpanel">
					<div class="card-group">
 							<div class="card">
 								<img src="assets/img/image/seoulmuseumofart.jpg" class="card-img-top" alt="gallery1">
 								<div class="card-body">
 									<a href="https://sema.seoul.go.kr/" target="_blank">
 										<h5 class="card-title">서울시립미술관</h5>
 										<p class="card-text">주소: 서울특별시 중구 덕수궁길 61
 										관람료: 대부분 무료
 										전화번호: 02-2124-8800
 										</p>
 									</a>
 								</div>
 								<div class="card-footer">
 									<form method="post" action="<c:url value="/insertFContentDo" />" >
 										<div class="form-group">
 											<input name="id" value="${sessionScope.login.id}" type="hidden" />
 											<input name="galNo" value="1" type="hidden" />
 											<input type="text" class="form-control" placeholder="폴더이름" name="foldNm" maxlength="20" data-sb-validations="required" />
 											<input type="hidden" name="fromURL" value="${fromURL}">
 										</div>
 										<input type="submit"><small class="text-body-secondary">♡ 즐겨찾기</small></input>
 									</form>
 								</div>
 							</div>
 							<div class="card">
 								<img src="assets/img/image/nationalMuseumofModernand....jpg" class="card-img-top" alt="gallery2">
 								<div class="card-body">
 									<a href="https://www.mmca.go.kr/visitingInfo/seoulInfo.do" target="_blank">
 										<h5 class="card-title">국립현대미술관</h5>
 										<p class="card-text">주소: 서울특별시 종로구 삼청로 30 관람료: 현장결제 전화번호: 02‒3701‒9500</p>
 									</a>
 								</div>
 								<div class="card-footer">
 									<form method="post" action="<c:url value="/insertFContentDo" />" >
 										<div class="form-group">
 											<input name="id" value="${sessionScope.login.id}" type="hidden" />
 											<input name="galNo" value="2" type="hidden" />
 											<input type="text" class="form-control" placeholder="폴더이름" name="foldNm" maxlength="20" data-sb-validations="required" />
 											<input type="hidden" name="fromURL" value="${fromURL}"> 
 										</div>
 										<input type="submit"><small class="text-body-secondary">♡ 즐겨찾기</small></input>
 									</form>
 								</div>
 							</div>
 							<div class="card">
								<img src="assets/img/image/sejong.png" class="card-img-top" alt="gallery3">
								<div class="card-body">
									<a href="https://www.sejongpac.or.kr/portal/main/main.do" target="_blank">
										<h5 class="card-title">세종문화회관</h5>
										<p class="card-text">주소: 서울특별시 종로구 세종대로 175 관람료: 예매티켓 전화번호: 02-399-1114</p>
									</a>
								</div>
								<div class="card-footer">
									<form method="post" action="<c:url value="/insertFContentDo" />" >
										<div class="form-group">
											<input name="id" value="${sessionScope.login.id}" type="hidden" />
											<input name="galNo" value="3" type="hidden" />
											<input type="text" class="form-control" placeholder="폴더이름" name="foldNm" maxlength="20" data-sb-validations="required" />
											<input type="hidden" name="fromURL" value="${fromURL}">
										</div>
										<input type="submit"><small class="text-body-secondary">♡ 즐겨찾기</small></input>
									</form>
								</div>
							</div>
						</div>
				</div>
				<div class="tab-pane" id="list-2" role="tabpanel">
					<div class="card-group">
						<c:forEach items="${exhList }" var="exh">
							<div class="card">
								<img src="assets/img/image/seoulmuseumofart.jpg" class="card-img-top" alt="exhibit">
								<div class="card-body">
									<a href="<c:url value='/eContentView?exhNo=${exh.exhNo}'  />" target="_blank">
										<h5 class="card-title">${exh.exhNm }</h5>
										<p class="card-text">주소: ${exh.exhAd }
										관람료:  ${exh.exhCost }
										전화번호: ${exh.exhTn }
										</p>
									</a>
								</div>
								<div class="card-footer">
									<form method="post" action="<c:url value="/insertEFContentDo" />" >
										<div class="form-group">
											<input name="id" value="${sessionScope.login.id}" type="hidden" />
											<input name="exhNo" value="${exh.exhNo}" type="hidden" />
											<input type="text" class="form-control" placeholder="폴더이름" name="foldNm" maxlength="20" data-sb-validations="required" />
											<input type="hidden" name="fromURL" value="${fromURL}">
										</div>
										<input type="submit"><small class="text-body-secondary">♡ 즐겨찾기</small></input>
									</form>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="tab-pane" id="list-3" role="tabpanel">3</div>
			</div>
		</div>
	</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>
