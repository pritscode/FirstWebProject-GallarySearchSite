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
window.onload=function(){
    let storedEvents=JSON.parse(localStorage.getItem("events"))||[];
    console.log(storedEvents);

    let calendarDiv=document.getElementById("calendar");
    let calendar=new FullCalendar.Calendar(calendarDiv,{
        initialView:'dayGridMonth',
        events: storedEvents,
        //이벤트가 있는 부분 클릭시
        eventClick: function(res){
            alert('이벤트 내용:'+res.event.title);
            let action=prompt("d:삭제, e:수정");
            if(action=='d'){  //삭제
                res.event.remove();
                saveEventsToLocalStorage();
            }else if(action=='e'){  //수정
                let newMsg=prompt("수정 내용을 입력해주세요");
                if(newMsg){
                    res.event.setProp("title",newMsg);
                    saveEventsToLocalStorage();
                }
            }
        }, //이벤트가 없는 부분 클릭시
        dateClick: function(res){
            let msg=prompt("내용을 입력하세요 ^^");
            let eventData;
            if(msg){
                eventData={title: msg,
                           start: res.dateStr};
                calendar.addEvent(eventData);
                saveEventsToLocalStorage();
            }
        }
    });
    calendar.render();

    function saveEventsToLocalStorage(){
        let currentEvents=calendar.getEvents();
        localStorage.setItem("events", JSON.stringify(currentEvents));
    }
}
</script>
<title>전시회 검색 사이트 - 마이페이지</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- content region -->
	<div class="row">
		<span class="enlarge-text">마이페이지</span>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-2">
			<!-- col-sm-2 -->
			<div class="list-group" id="mylist" role="tablist">
				<a class="list-group-item list-group-item-action active list-group-item-light"
					data-bs-toggle="list" href="#list-1" role="tab">내 정보</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-2" role="tab">찜한 전시회</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-3" role="tab">관심 미술관</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-4" role="tab">비교</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-5" role="tab">최근 본 전시회</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-6" role="tab">개인정보 수정</a>
			</div>
		</div>
		<div class="col-sm-10">
			<!-- col-sm-10 -->
				<div class="tab-content">
					<div class="tab-pane active" id="list-1" role="tabpanel">
						<div class="row">
							<div class="col-sm-7">
								<p>${sessionScope.login.nm}</p>
								<p>${sessionScope.login.id}</p>
								<p>${sessionScope.login.gender}</p>
								<p>${sessionScope.login.age}</p>
							</div>
							<div class="col-sm-5">
								<div id="calendar"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="list-2" role="tabpanel">
						<!-- 게시글 출력 -->
						<c:forEach items="${arrE}" var="folder2">
							<h3>${folder2.foldNm}</h3>
							<hr>
						</c:forEach>
						<hr>
						<form method="post" action="<c:url value="/createEFolderDo" />" >
							<h3>새폴더 생성</h3>
							<div class="form-group">
								<input name="id" value="${sessionScope.login.id}" type="hidden" />
							</div>
							<div class="form-group pt-1">
								<input type="text" class="form-control" placeholder="폴더이름" name="foldNm">
							</div>
							<input type="submit" class="btn btn-light form-control" value="폴더생성">
						</form>
					</div>
					<div class="tab-pane" id="list-3" role="tabpanel">
						<!-- 게시글 출력 -->
						<c:forEach items="${arr}"  var="folder">
							<h3>${folder.foldNm}</h3>
<!-- 							<hr> -->
<%-- 							<c:forEach items="${arrC}" var="content"> --%>
<%-- 								<h5>${content.galNm}</h5><h5>${content.galAd}</h5><h5>${content.galTn}</h5> --%>
<%-- 							</c:forEach> --%>
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
					</div>
					<div class="tab-pane" id="list-4" role="tabpanel">
					4
					</div>
					<div class="tab-pane" id="list-5" role="tabpanel">
					5
					</div>
					<div class="tab-pane" id="list-6" role="tabpanel">
					<section class="page-section" id="contact" style="margin-top:150px">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">개인정보 수정</h2>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form method="post" action="<c:url value="/modifyingDo" />">
                            <div class="form-floating mb-3">
                            	<input name="id" value="${sessionScope.login.id}" type="hidden" />
                                <input class="form-control" value="${sessionScope.login.pw}" id="pw" name="pw" type="password" placeholder="비밀번호를 입력해주세요" />
                                <label for="pw">비밀번호</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" value="${sessionScope.login.nm}" id="nm" name="nm" type="text" placeholder="이름을 입력해주세요" />
                                <label for="nm">이름</label>
                            </div>
                            <div>
                            	성별
	                            <div class="form-check">
	  								<input ${sessionScope.login.gender == "M" ? "checked" : ""}
	  								 class="form-check-input" type="radio" name="gender" id="flexRadioDefault1" value="M" checked>
									<label class="form-check-label" for="flexRadioDefault1">
	   									남자
	  								</label>
								</div>
								<div class="form-check">
									<input ${sessionScope.login.gender == "W" ? "checked" : ""}
									 class="form-check-input" type="radio" name="gender" id="flexRadioDefault2" value="W">
									<label class="form-check-label" for="flexRadioDefault2">
										여자
									</label>
								</div>
								<div class="form-check">
									<input ${sessionScope.login.gender == null ? "checked" : ""}
									 class="form-check-input" type="radio" name="gender" id="flexRadioDefault3" value="">
									<label class="form-check-label" for="flexRadioDefault3">
										선택안함
									</label>
								</div>
                            </div>
                            <div>
                            	연령대
	                            <select class="form-select" name="age" aria-label="Default select example">
									<option ${sessionScope.login.age == null ? "selected" : ""} value="" selected>선택안함</option>
									<option ${sessionScope.login.age == "10s" ? "selected" : ""} value="10s">10대</option>
									<option ${sessionScope.login.age == "20s" ? "selected" : ""} value="20s">20대</option>
									<option ${sessionScope.login.age == "30s" ? "selected" : ""} value="30s">30대</option>
									<option ${sessionScope.login.age == "40s" ? "selected" : ""} value="40s">40대</option>
									<option ${sessionScope.login.age == "50s" ? "selected" : ""} value="50s">50대</option>
									<option ${sessionScope.login.age == "60s" ? "selected" : ""} value="60s">60대</option>
									<option ${sessionScope.login.age == "70sorder" ? "selected" : ""} value="70sorder">70대 이상</option>
								</select>
                            </div>
                            <button class="btn btn-primary btn-xl btn-dark" id="submitButton" type="submit">수정하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
					</div>
				</div>
		</div>
	</div>
	<!-- content region -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>
