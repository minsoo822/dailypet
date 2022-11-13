<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>일기 상세</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
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
	.container2 {
		margin: 5% 15% 0 25%;
		width: 800px;
		height: 500px;
		border: 1px solid lightgray;
	}
	
	.imgdetail {
		overflow: hidden;
	}

	.img-responsive {
		width: 100%;
	    height: 100%;
	    max-width: 700px;
	    max-height: 500px;
		object-fit: cover;
	}
	
	.profileView {
		width: 30px;
	    height: 30px; 
	    border-radius: 70%;
	    overflow: hidden;
	}
	
	#userid {
		display: inline;
	}
	
	.profilepic {
		width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	.col-lg-5, .col-md-5 {
		padding: 0px;
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
	
	button {
		background-color: white;;
		border: none;
	}
	
	.icon i {
		margin-bottom: 10px;
		color: black;
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
	
	.row {
		margin: 0;
		padding: 0;
	}
	
	div.col-lg-7 {
		padding: 0;
	}
	
	.col-lg-5 {
		position: relative;
		height: 500px;
	}
		
	.cardfooter {
		position: absolute;
	    bottom: 0;
	}
	
	.cardfooter .form-control {
		margin-bottom: 2px;
		padding: 0 15px;
	}
	
	#writecomm {
		width: 280px;
		padding: 8px;
		display: inline;
		border: none;
	}
	
	#upcomment {
		color: brown;
		background-color: none;
		border: none;
		font-size: 14px;
		font-weight: bold;
		display: inline;
	}
	
</style>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
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
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
					<div class="imgdetail">
						<img src="/resources/images/IMG_0308.jpg" class="img-responsive" alt="">
					</div>
                </div>
               <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
               		<div class="row" style="margin-top: 10px">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
							<div class="profileView">
								<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
						   	</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">	
					    	<h5 id="userid" style="margin: 10px 0 0 -15px; font-size: 13px"><b>jennierubyjerry</b></h5>
					    </div>
					</div>
					<hr style="color: lightgray; margin-top: 12px; margin-bottom: 0">
					<div class="row" style="margin-top: 10px">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
							<div class="profileView">
								<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
						   	</div>
						</div>
						<h5 id="userid" style="margin: 10px 5px 0 5px; font-size: 13px; display: inline"><b>jennierubyjerry</b></h5><h5 style="margin-top: 10px; font-size: 13px; display: inline">오늘은 일요일🥰🥰 제리랑 놀기</h5>
					</div>
					<div class="cardfooter">
						<div class="service-content">
							<div class="postbtn">
								<button type="button" id="like"><span class="heart" style="font-size: 25px"><i class="fa-regular fa-heart"></i></span></button><button type="button" id="comment"><span class="comm" style="font-size: 25px"><i class="fa fa-comment-o"></i></span></button>
							</div>
						    <p><b>좋아요 9,234개</b></p>
						    <div class="cardcontent">
						    	<h5 style="font-size: 13px; margin: 0 10px 0 0; display: inline"><b>jennierubyjerry</b></h5><p style="font-size: 13px; display: inline;">오늘은 일요일!!! 제리랑 놀기</p>
						    	<p style="font-size: 13px; color: lightgray">view all 365 comments</p>
						    	<p style="font-size: 11px; color: lightgray">21시간 전</p>
						    </div>
						</div>
						<div class="cardcomment">
					    	<input class="form-control" id="writecomm" type="text" placeholder="댓글 달기...">
					    	<button type="submit" id="upcomment">게시</button>
					    </div>
					</div>
				</div>
            </div>
		</div>
    </div>
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
</body>

</html>

