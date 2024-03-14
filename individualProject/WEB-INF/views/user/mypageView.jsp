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
					data-bs-toggle="list" href="#list-4" role="tab">최근 본 전시회</a>
				<a class="list-group-item list-group-item-action list-group-item-light"
					data-bs-toggle="list" href="#list-5" role="tab">개인정보 수정</a>
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
							</div>
							<div class="col-sm-5">
								<div id="calendar"></div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="list-2" role="tabpanel">
					2
					</div>
					<div class="tab-pane" id="list-3" role="tabpanel">
					3
					</div>
					<div class="tab-pane" id="list-4" role="tabpanel">
					4
					</div>
					<div class="tab-pane" id="list-5" role="tabpanel">
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
                                <input class="form-control" value="${sessionScope.login.nm }" id="nm" name="nm" type="text" placeholder="이름을 입력해주세요" />
                                <label for="nm">이름</label>
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