<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <div class="main" style="padding: 20px 20% 80px">
        <div class="row">
            <h1>전시 정보</h1>
            <div class="col-4" style="padding: 40px; text-align: center;">
                <img src="resources/img/ep1.jpg" class="d-block w-100" alt="picture">
            </div>
            <div class="col-8" style="padding-top: 40px; text-align: center;">
                <table class="table" style="text-align: left;">
                    <tbody>
                        <tr>
                            <th scope="col">이름</th>
                            <td>전시회10</td>
                        </tr>
                        <tr>
                            <th scope="col">주소</th>
                            <td>서울 서구</td>
                        </tr>
                        <tr>
                            <th scope="col">전화번호</th>
                            <td>123</td>
                        </tr>
                        <tr>
                            <th scope="col">조회수</th>
                            <td>24</td>
                        </tr>
                        <tr>
                            <th scope="col">개회날짜</th>
                            <td>24/03/15</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <hr>

        <div class="row">
            <article class="col-12">
                <h1 style="margin: 2% 0;">전시 안내</h1>
                <p>《투명하고 향기 나는 천사의 날개 빛깔처럼》은 비누를 조각의 재료로 사용하여 독자적인 작품세계를 구축해온 조각가 신미경이 선보이는 전시이다. 전시의 주제인 ‘천사’는 신과 인간을 연결하는 종교적 표상이자, 예술적, 문학적 상상을 통해 우리의 인식 속에 익숙하게 자리하게 된 상징적인 존재이다. 작가는 엔젤이라는 이름의 향을 우연히 접하면서 천사라는 주제에 관심을 가지게 되었고, 세상에 ‘존재하는 것과 부재하는 것 사이에 있는 대상’으로서 천사의 모습을 시각화하여 보여준다.</p>
                <p>신미경은 이번 전시에서 모두가 알고 있지만, 아무도 본 사람은 없는 천사가 가진 의미에 주목한다. 그가 표현하는 천사는 천상과 지상, 삶과 죽음, 육체와 영혼 사이를 오가는 환상의 영역에 있는 존재로서 비누의 물질적 속성을 통해 은유적으로 제시된다. 작가가 30여 년 동안 조각의 재료로 사용한 ‘비누’는 투명함과 불투명함을 오가는 물성뿐 아니라 닳아 없어지는 성질, 그리고 향기를 가지고 있다. 이러한 비누의 특징은 천상과 지상을 잇는 중간적 존재인 천사의 상징성과 연결된다. 특히 비누의 ‘투명성’과 이를 극대화하는 ‘빛’, 그리고 ‘향기’를 매개로 하여 존재와 부재 사이를 오가는 천사를 공감각적으로 경험할 수 있을 것이다. </p>
                <p>관람객들은 일상에서 마주하는 비누로 만든 조각을 감상하며 작가의 작품세계를 이해하고, 실제로 본 적은 없지만 익숙한 존재인 천사를 통해 잠재된 상상력을 마음껏 펼쳐볼 수 있다.</p>
                <p>세대를 초월하여 흥미로운 상상을 불러일으키는 천사의 빛과 향기로 가득한 이번 전시가 그동안 친숙하게 느껴왔던 천사를 재발견하는 기회가 되기를 바란다. </p>
            </article>
        </div>
        
        <hr>
        
        <div class="row">
        	<div class="col-12">
        		<h1 style="margin: 2% 0;">회원 통계</h1>
        		<div>chart</div>
        		<br>
        		<br>
        		<br>
        		<br>
        		<br>
        		<br>
        	</div>
        </div>

        <hr>
        
        <div class="row">
        	<div class="col-12">
        		<h1 style="margin: 2% 0;">리뷰 조회</h1>
        		<div>review</div>
        		<br>
        		<br>
        		<br>
        		<br>
        		<br>
        	</div>
        </div>

    </div>
    
</body>

</html>