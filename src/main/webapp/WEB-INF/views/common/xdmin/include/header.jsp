<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>	
	<style type="text/css">
		.header{
			padding-top: 10px;
			padding-bottom: 10px;
		}
		
		.navigation {
			margin-top: 22px;
		}
		
		img{
			display: inline;
		}
	</style>
</head>
<body>
<div class="header navbar-fixed-top">
	<div class="container" style="min-width: 1320px;">
	    <div class="row">
	        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
	            <a href="/animal/home"><img src="/resources/images/logo.jpg" style="width: 131px; height: 87px;"><img src="/resources/images/logo2.jpg" style="width: 180px; height: 80px;"></a>
	        </div>
	        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
	            <div class="navigation">
	                <div id="navigation">
	                    <ul>
	                        <li class="active"><a href="/animal/home" title="Home">홈</a></li>
	                        <li class="has-sub"><a href="/findpet/findpetList" title="Service List">전국 유기동물</a>
	                            <ul>
	                                <li><a href="/findpet/findpetList" title="Service Detail">전국 유기동물</a></li>
	                                <li><a href="/findpet/findpetSearchForm" title="Service List">유기동물 찾기</a></li>
	                                <li><a href="/findpet/findpetMod" title="Service List">유기동물 등록하기</a></li>
	                            </ul>
	                        </li>
	                        <li class="has-sub"><a href="/reservation/searchingPlace" title="Portfolio">내 주변 편의시설</a>
	                            <ul>			
	                                <li><a href="/reservation/searchingPlace" title="Projects">편의시설 찾기</a></li>
	                                <li><a href="/reservation/reservationPage" title="Projects Detail">내 예약 정보</a></li>
	                            </ul>
	                        </li>
				          	<li class="has-sub"><a href="/diary/diaryList" title="Portfolio">육아수첩</a>
				          		<ul>
				          			<li><a href="/diary/diaryForm" title="Projects">일기 쓰기</a></li>
				          			<li><a href="/diary/diaryList" title="Projects">일기 목록</a></li>
				          			<li><a href="/diary/diaryMypage" title="Projects">일기 육아수첩 마이피드</a></li>
				          		</ul>
			          		</li>
			          		<c:if test="${sessSeq eq null}">
				        		<!-- 로그인전 -->
				        		<li><a href="/member/login" title="로그인">로그인</a></li>
		        				<li><a href="/member/regForm1" type="button" title="회원가입">회원가입</a></li>
		        				<li><a href="/animal/index" type="button" title="처음으로">처음으로</a></li>
				        	</c:if>
					        <c:if test="${sessSeq ne null}">
				        		<li><a href="#" type="button"><c:out value="${sessId }"/>님, 반갑습니다 :)</a></li>
				        		<li><a href="#" type="button" onclick="goMypage(${sessSeq})">마이페이지</a></li>
								<li><a href="#" title="로그아웃" type="button" id="btnLogout">로그아웃</a></li>
								<li><a href="/animal/index" type="button" title="처음으로">처음으로</a></li>
				            </c:if>
                        </ul>
                    </div> 
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>