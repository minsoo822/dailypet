<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>

<head>
    <!-- meta,link s -->
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <!-- meta,link e -->
    <title>육아수첩 마이피드</title>
</head>

<style type="text/css">

	.container2 {
		margin: 6% 10%;
	}
	
	.container3 {
		margin: 5% 15% 0 25%;
		width: 800px;
		height: 500px;
		border: 1px solid lightgray;
	}
	
	.imgdetail {
		overflow: hidden;
	}
	
	.profile {
		width: 180px;
	    height: 180px; 
	    border-radius: 70%;
	    overflow: hidden;
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
	
	.col-lg-5 {
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
		margin-top: 10px;
	}
	
	.row {
		margin: 0;
		padding: 0;
	}
	
	div.col-lg-7 {
		padding: 0;
	}
	
	#idbox {
		padding: 7.5px;
	}
	
	.col-lg-5 {
		position: relative;
		height: 500px;
	}
	
	.cardcontent p {
		font-size: 11px; 
		color: lightgray;
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
	<form method="post" id="mainForm">
		<input type="hidden" name="ifmmSeq" value="${vo.ifmmSeq }">
	    <!-- herder s -->
	    <%@include file="../../../common/xdmin/include/header.jsp"%>
	    <!-- header e -->
	    <!-- /.page header -->
	    <div class="diaryheader">
			<nav class="icon">
				<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
				<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
				<span><div class="profileheader"><a href="diaryMypage.html"><img src="${item.memberPath}${item.memberuuidName }" class="profilepic" alt=""></a></div></span>
			</nav>
		</div>
	    <div class="content">
	    	<div class="container2">
	    		<div class="row">
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
	    			</div>
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    				<div class="profile mb10">
	    					<img src="${item.memberPath}${item.memberuuidName }" class="profilepic" alt="">
	    				</div>
	    			</div>
	    			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-10">
	    				<div class="row">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
	    					<div class="col-lg-4 col-md-4 col-sm-4">
	    						<h2><c:out value="${item.ifmmID }"/></h2>
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
	    						<h4><b><c:out value="${item.ifmmName }"/></b></h4>
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
	        <div class="container2">
	            <div class="row">
	        		<c:forEach items="${list }" var="list" varStatus="status">
		                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                    <div class="project-img mb30">
                        		<img src="${list.diaryPath }${list.diaryuuidName }" class="img-responsive" id="thumbimg" alt="" data-toggle="modal">
		                    </div>
		                </div>
					</c:forEach>
	            </div>
	            <!-- Modal -->
				<div class="modal fade" id="postModal" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="content">
							    	<div class="container3">
										<div class="row">
											<c:forEach items="${list }" var="list" varStatus="status">
												<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
													<div class="imgdetail">
														<img src="${list.diaryPath }${list.diaryuuidName}" class="img-responsive" alt="">
													</div>
												</div>
												<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
													<div class="row" style="margin-top: 10px">
														<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
															<div class="profileView">
																<img src="${list.memberPath}${list.memberuuidName}" class="profilepic" alt="">
															</div>
														</div>
														<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="idbox">	
															<h5 id="userid" style="margin-left: -15px; font-size: 12px"><b><c:out value="${list.ifmmID }"/></b></h5>
														</div>
													</div>
													<hr style="color: lightgray; margin-top: 12px; margin-bottom: 0">
													<div class="row" style="margin-top: 10px">
														<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
															<div class="profileView">
																<img src="${list.memberPath}${list.memberuuidName}" class="profilepic" alt="">
															</div>
														</div>
														<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="idbox">	
															<h5 id="userid" style="margin-left: -15px; font-size: 12px"><b><c:out value="${list.ifmmID }"/></b></h5>
														</div>
													</div>
													<div class="row" style="margin-top: 10px">
														<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12"></div>
														<div class="col">
															<p name="ifdaContent" style="margin: -10px 0 0 -15px; font-size: 12px"><c:out value="${list.ifdaContents }"></c:out></p>
														</div>
													</div>
													<div class="cardfooter">
														<div class="service-content">
															<div class="postbtn">
																<button type="button" id="like">
																	<span class="heart" style="font-size: 25px"><i class="fa-regular fa-heart"></i></span>
																</button>
																<button type="button" id="comment">
																	<span class="comm" style="font-size: 25px"><i class="fa fa-comment-o"></i></span>
																</button>
															</div>
															<p style="font-size: 13px; margin-top: 5px;"><b>좋아요 9,234개</b></p>
															<div class="cardcontent">
																<p style="margin: 10px 0 0 0">view all 365 comments</p>
																<p>${list.ifdaRegDate }</p>
															</div>
														</div>
														<hr style="color: lightgray; margin: 3px">
														<div class="cardcomment">
															<input class="form-control" id="writecomm" type="text" placeholder="댓글 달기...">
															<button type="submit" id="upcomment">게시</button>
														</div>
													</div>
												</div>
											</c:forEach>	
										</div>
									</div>
							    </div>
							</div>
						</div>
					</div>
				</div>
            <!-- pagination s -->
			<%-- <%@include file="../../../common/xdmin/include/pagination.jsp"%> --%>
			<!-- pagination e -->
	        </div>
	    </div>
	    <!-- footer s -->
	    <%@include file="../../../common/xdmin/include/footer.jsp"%>
	    <!-- footer e -->
    </form>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    	
    	$("#thumbimg").click(function() {
    		$("#postModal").modal();
    	});
    	
    </script>
    
</body>

</html>
