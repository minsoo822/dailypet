<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>육아수첩 마이피드</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<style type="text/css">

	.navbar-fixed-top {
		background-color: black;
	}
	
	.container2 {
		margin: 6% 10%;
	} 
	
	.profile {
		width: 180px;
	    height: 180px; 
	    border-radius: 70%;
	    overflow: hidden;
	}
	
	.profilepic {
		width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	.imghover {
		overflow: hidden;
	}
	
	.img-responsive {
		width: 100%;
	    height: 100%;
	    max-width: 360px;
	    max-height: 304px;
		object-fit: cover;
	}
	
	#followbtn {
		background-color: white;
		width: 100px;
		border: 1px solid gray;
		border-radius: 4px;
		font-weight: bold;
	}
	
	.diaryheader {
		position: fixed;
		margin-top: 100px;
		margin-bottom: 5%;
		border: 1px solid lightgray;
		background-color: white;
		top: 0;
		left: 0;
		padding: 1.5rem;
		height: 60px;
		width: 100%;
		z-index: 1;
	}
	
	.icon {
		margin-right: 400px;
		float: right;
	}
	
	.icon span {
		margin: 0 15px;
		vertical-align: middle;
	}
	
	.profileheader {
		width: 30px;
	    height: 30px;
	    border-radius: 70%;
	    overflow: hidden;
	    display: inline-block;
	}
	
	.icon i {
		margin-bottom: 10px;
		color: black;
	}

</style>

<body>
	<form method="post" id="mainForm">
		<input type="hidden" name="ifmmSeq" value="${vo.ifmmSeq }">
	    <div class="header navbar-fixed-top header-collapse">
			<div class="container">
			    <div class="row">
			        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			            <a href="../index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
			        </div>
			        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
			            <div class="navigation">
			                <div id="navigation"><div id="menu-button">Menu</div>
			                    <ul>
			                        <li class="active"><a href="index.html" title="Home">홈</a></li>
			                        <li class="has-sub"><span class="submenu-button"></span><a href="service-list.html" title="Service List">유기동물 찾기</a>
			                            <ul>
			                                <li><a href="service-list.html" title="Service List">유기동물 찾기</a></li>
			                                <li><a href="service-detail.html" title="Service Detail">전국 유기동물</a></li>
			                            </ul>
			                        </li>
			                        <li class="has-sub"><span class="submenu-button"></span><a href="../searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
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
						          	<li class="has-sub"><span class="submenu-button"></span><a href="../diaryList.html" title="Portfolio">육아수첩</a>
		<!-- 						메뉴구현x 일단 링크만 생성						
									<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
									<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
									<li><a href="../diaryForm.html" title="Projects">일기 쓰기</a></li>
		-->							
									<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
		                            </li><li><a href="error.html" title="Error">로그인</a> </li>
		                            <li><a href="error.html" title="Error">회원가입</a> </li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	    <!-- /.page header -->
	    <div class="diaryheader">
			<nav class="icon">
				<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
				<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
				<span><div class="profileheader"><a href="diaryMypage.html"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></a></div></span>
			</nav>
		</div>
	    <div class="content">
	    	<div class="container2">
	    		<div class="row">
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
	    			</div>
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    				<div class="profile mb10">
	    					<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
	    				</div>
	    			</div>
	    			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-10">
	    				<div class="row">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
	    					<div class="col-lg-4 col-md-4 col-sm-4">
	    						<h2>jennierubyjerry</h2>
	    					</div>
	    					<div class="col-lg-4 col-md-4 col-sm-4">
	    						<button type="button" id="followbtn">팔로우</button>
	    					</div>
	    				</div>
	    				<br>
	    				<div class="row">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>게시물 <b>0</b></h4>
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>팔로워 <b>0</b></h4>
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>팔로잉 <b>0</b></h4>
	    					</div>
	    				</div>
	    				<div class="row" style="margin-top: 10px">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4><b>김제니</b></h4>
	    					</div>
	    				</div>
	    				<div class="row" style="margin-top: 10px">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
	    					</div>
	    					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
	    						<h4>허제리 : 안녕하세용</h4>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    			</div>
	    		</div>
	    		<br>
	    		<hr style="border: 1px solid lightgray; width: 1150px">
	    	</div>
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	                    <div class="project-img mb30">
	                        <a href="/diary/DiaryList" class="imghover"><img src="/resources/images/IMG_0308.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	                    <div class="project-img mb30">
	                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/IMG_0309.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
	                    <div class="project-img imghover mb30">
	                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/IMG_6216.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="st-pagination">
	                    <ul class="pagination">
	                        <li><a href="#">Previous</a></li>
	                        <li><a href="#" class="active">1</a></li>
	                        <li><a href="#">2</a></li>
	                        <li><a href="#">3</a></li>
	                        <li><a href="#">Next</a></li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
</body>

</html>
