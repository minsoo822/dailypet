<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>


	<div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="../index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="/animal/home" title="Home">홈</a></li>
		                        <li class="has-sub"><a href="service-list.html" title="Service List">유기동물 찾기</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">유기동물 찾기</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">전국 유기동물</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><a href="../searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
		                            <ul>
		                                <li><a href="../searchingPlace.html" title="Projects">편의시설 찾기</a></li>
		                                <li><a href="../reservationForm.html" title="Projects Detail">내 예약 정보</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">반려동물 일기</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">육아수첩</a>
					          		<ul>
					          			<li><a href="javascript:goDiaryForm(${sessSeq })" title="Projects">일기 쓰기</a></li>
					          			<li><a href="/diary/diaryList" title="Projects">일기 목록</a></li>
					          			<li><a href="/diary/diaryDetail" title="Projects">일기 상세</a></li>
					          			<li><a href="/diary/diaryMypage" title="Projects">일기 육아수첩 마이피드</a></li>
					          		</ul>
				          		</li>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
								
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li>
                            	<c:if test="${sessSeq eq null}">
					        		<!-- 로그인전 -->
					        		<li><a href="/member/login" title="로그인">로그인</a></li>
			        				<li><a href="/member/regForm1" type" title="회원가입">회원가입</a></li>
					        	</c:if>
						        <c:if test="${sessSeq ne null}">
					        		<li><a href="#" type="button"><c:out value="${sessId }"/>님, 반갑습니다</a></li>
									<li><a href="/member/logoutProc" title="로그아웃" type="button" id="btnLogout">로그아웃</a></li>
					            </c:if>
	                        </ul>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <div class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                    <!-- <h1 class="hero-title"><strong>Interior-exterior</strong><br>
          Free Webstite template</h1>
                    <a href="#" class="btn btn-white">REad more <i class="fa fa-plus"></i></a>  -->&nbsp;</div>
            </div>
        </div>
    </div>