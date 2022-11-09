<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>예약정보 수정</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<style type="text/css">

	.form-control {
		color: black;
	}
	
	.form-select {
		height: 50px;
		font-size: 13px;
		text-align: center;
		border: 1px solid #e2dcdb;
	}
	
	.form-control, .form-select {
		border-radius: 6px;
	}
	
	#cbtn {
		margin-top: 20px;
	}
	
	#returnbtn {
		background-color: white;
		color: #372d2b;
	}

</style>

<body>
    <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="index.html" title="Home">홈</a></li>
		                        <li class="has-sub"><a href="service-list.html" title="Service List">유기동물 찾기</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">유기동물 찾기</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">전국 유기동물</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><a href="../searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
		                            <ul>
		                                <li><a href="../searchingPlace.html" title="Projects">편의시설 찾기</a></li>
		                                <li><a href="../reservationPage.html" title="Projects Detail">내 예약 정보</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">반려동물 일기</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">육아수첩</a>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
								<li><a href="../diaryForm.html" title="Projects">일기 쓰기</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
	                            <li><a href="error.html" title="Error">로그인</a> </li>
	                            <li><a href="error.html" title="Error">회원가입</a> </li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                        <h2 class="page-title">contact us</h2>
                        <p>Mauris iaculis mollis risus at fermentum proin tempus utvelit id
                            <br> tincidunteu blandit estorbi imperdiet lacus leo ultrices.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
        	<div class="bg-light pinside30">
			    <div class="row">
			        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			            <h1><b>나의 예약 정보</b></h1>
			            <!-- <p>Please complete the form below. We'll do everything we can to respond to you as quickly as possible.</p> -->
			            <form>
			                <div class="row">
			                    <div class="col-md-6">
			                        <div class="form-group has-feedback">
			                            <label class="control-label" for="name">고객명</label>
		                                <input type="text" class="form-control" id="name" name="name">
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group has-feedback">
			                            <label class="control-label" for="petname">예약자명</label>
		                                <input type="text" class="form-control" id="petname" name="petname">
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group has-feedback">
			                            <label class="control-label" for="phone">연락처</label><br>
		                                <select class="form-select" name="telecom" id="telecom" style="width: 22%; display: inline">
											<option selected>::통신사::</option>
											<option value="1">SKT</option>
											<option value="2">KT</option>
											<option value="3">LG</option>
										</select>
										<input class="form-control" type="text" id="phone" name="phone" style="width: 77%; display: inline">
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group has-feedback">
			                            <label class="control-label" for="purpose">예약 목적</label>
		                                <input type="text" class="form-control" id="purpose">
			                        </div>
			                    </div>
			                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                        <div class="form-group">
			                            <label class="control-label" for="textarea">예약 희망 날짜</label>
			                            <input class="form-control" type="datetime-local" id="reserdate" name="reserdate"></textarea>
			                        </div>
			                    </div>
			                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                        <div class="form-group">
			                            <label class="control-label" for="textarea">요청사항</label>
			                            <textarea class="form-control" id="textarea" name="textarea" rows="3" placeholder=""></textarea>
			                        </div>
			                    </div>
			                    <div class="buttongroup">
			                    	<div class="col-md-2" id="cbtn">
				                        <div class="form-group">
				                        	<a href="reservationPage.html">
				                        		<button type="button" id="changebtn" class="btn btn-default">변경 완료</button>
				                        	</a>
				                        </div>
				                    </div>
				                    <div class="col-md-1" id="cbtn">
				                        <div class="form-group">
				                        	<a href="reservationPage.html">
				                            	<button type="button" id="returnbtn" class="btn btn-default">취소</button>
				                            </a>
				                        </div>
				                    </div>
			                    </div>
			                </div>
			            </form>
			        </div>
			    </div>
			</div>
        </div>
    </div>
  	<%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
</body>

</html>
