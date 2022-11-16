<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- meta,link s -->
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <!-- meta,link e -->
    <title>일기 홈</title>
</head>

<style type="text/css">
	div {
		/* border: 1px solid orange; */
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
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="diaryForm">
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
									<img src="${list.memberPath }${list.memberuuidName}" class="profilepic" alt="">
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
								    <a href="#" class="imghover"><img src="${list.diaryPath}${list.diaryuuidName}" class="img-responsive" alt=""></a>
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
    </form>
	<%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    <script type="text/javascript">
    	
		var ifdaSeq = $("input:hidden[name=ifdaSeq]");
	
    </script>
    
</body>

</html>

