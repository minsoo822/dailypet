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
    <title>일기 홈</title>
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
	div {
		/* border: 1px solid orange; */
	}
	.navbar-fixed-top {
		background-color: black;
		margin-bottom: 100px;
	}
	
	.content {
		display: flex;
		 justify-content: center;
		 margin: 0px 100px;
	}
	
	.box {
		margin-top: 5%;
		width: 500px;
		height: auto;
		border: 1px solid lightgray;
		border-radius: 2px;
		margin-bottom: 100px;
	}
	
	.service-profile {
		height: 50px;
	}
	
	.profileView {
		width: 30px;
	    height: 30px; 
	    border-radius: 70%;
	    overflow: hidden;
	    margin-left: 20px;
	}
	
	.profilepic {
		width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	.img-responsive {
		width: 100%;
	    height: 100%;
	    max-width: 500px;
		max-height: 500px;
		object-fit: cover;
	}
	
	.imghover {
		overflow: hidden;
	}
	
	button {
		background-color: white;;
		border: none;
	}
	
	#like, #comment {
		margin-right: 10px;
	}
	
	.service-content > * {
		margin-left: 10px;
	}
	
	.postbtn {
		margin: -20px 0 0 10px;
	}
	
	.cardcontent {
		margin-top: -20px;
	}
/* 	
	.nav-link {
		display: inline;
		position: absolute;
	}
	
	.fixed-top {
		margin: 100px 0 0 0;
		border: 1px solid lightgray;
		background-color: white;
		position: relative;
	    height: 50px;
	}
*/	
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
	
	.form-control {
		margin-bottom: 0;
		margin-top: 10px;
	}
	
	.service-block {
		margin-bottom: 0;
	}
	
	.commentBox {
		border: 1px solid lightgray;
		padding: 0;
	}
	
	#commentForm {
		width: 400px;
		border: none;
		margin: 0;
		display: inline;
	}
	
	#commSubmit {
		margin-left: 5px;
		display: inline;
	}
	
</style>

<body>
    <div class="header navbar-fixed-top header-collapse">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="/resources/index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
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
		                        <li class="has-sub"><span class="submenu-button"></span><a href="/resources/searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
		                            <ul>
		                                <li><a href="/resources/searchingPlace.html" title="Projects">편의시설 찾기</a></li>
		                                <li><a href="/resources/reservationForm.html" title="Projects Detail">내 예약 정보</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">반려동물 일기</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><span class="submenu-button"></span><a href="/resources/diaryList.html" title="Portfolio">육아수첩</a>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="/resources/diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="/resources/diaryDetail.html" title="Projects">일기 상세</a></li>
								<li><a href="/resources/diaryForm.html" title="Projects">일기 쓰기</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
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
    <!-- /.page header -->
	<div class="diaryheader">
		<nav class="icon">
			<span style="font-size: 20px"><a href="diaryList"><i class="fa-sharp fa-solid fa-house"></i></a></span>
			<span style="font-size: 25px"><a href="diaryForm"><i class="fa-regular fa-square-plus"></i></a></span>
			<span><div class="profileheader"><a href="diaryMypage"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></a></div></span>
		</nav>
	</div>
	<!-- <div class="diaryheader">
		<ul class="nav">
			<li><a><i class="fa-sharp fa-solid fa-house"></i></a></li>
			<li><a><i class="fa-regular fa-square-plus"></i></a></li>
			<li><a><div class="profileheader"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></div></a></li>
		</ul>
	</div> -->
    <div class="content">
			<div class="container" style="margin-left: auto; margin-right: auto; width: 500px; margin-top: 5%;">
		<c:forEach items="${list }" var="list" varStatus="status">
				<div class="row box">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- 상단바 s -->
					<div class="row" style="margin-top: 15px; height: 50px;">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
							<div class="profileView">
								<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
						   	</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						    <h5 style="margin: 10px 0 0 -25px; font-size: 13px"><b><c:out value="${list.ifmmID }"/></b></h5>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">&nbsp;</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4" style="vertical-align: middle">
								<button type="button" id="delpost"><i class="fa-regular fa-trash-can fa-lg"></i></button>
						</div>
					</div>
					<!-- 상단바 e -->
					<!-- 일기 사진 s -->
					<div class="row">
						<div class="col" style="overflow: hidden;" >
							<div class="service-img" style="width: 500px; margin-left: auto; margin-right: auto;">
							    <a href="#" class="imghover"><img src="/resources/images/IMG_0308.jpg" class="img-responsive" alt=""></a>
							</div>
						</div>
					</div>
					<!-- 일기 사진 e -->
					<div class="service-content">
						<!-- 좋아요 댓글 버튼 s -->
						<div class="postbtn">
							<button type="button" id="like">
								<span class="heart" style="font-size: 25px"><i class="fa-regular fa-heart"></i></span>
							</button>
							<button type="button" id="comment">
								<span class="comm" style="font-size: 25px"><i class="fa fa-comment-o"></i></span>
							</button>
						</div>
						<!-- 좋아요 댓글 버튼 e -->
						<!-- 좋아요 갯수	 s -->	
						<p><b>좋아요 9,234개</b></p>
						<!-- 좋아요 갯수	 e -->
						<!-- contents s -->
						<div class="cardcontent">
							<h5 style="font-size: 13px; margin: 0 10px 0 0; display: inline">
								<b><c:out value="${list.ifmmID }"/></b>
							</h5>
							<p style="font-size: 13px; display: inline;"><c:out value="${list.ifdaContents }"/></p>
							<p style="font-size: 11px; color: lightgray">2022/22/22</p>
							<p style="font-size: 13px; color: lightgray">view all 365 comments</p>
						</div>
						<!-- contents e -->
					</div>
					<!-- Coment s -->
					<div class="cardcomment" style="margin-bottom: 20px; margin-left: 5px; margin-right: 5px;">
						<div class="commentBox">
					  	 	<input class="form-control" type="text" placeholder="댓글 달기" id="commentForm">
					  	 	<button id="commSubmit"><i class="fa-regular fa-paper-plane"></i></button>
					   	</div>
				   </div>
				   <!-- Coment e -->
					</div>
				</div>
			</c:forEach>	
		</div>
    </div>
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
    	
		var ifdaSeq = $("input:hidden[name=ifdaSeq]");
	
    </script>
    
</body>

</html>

