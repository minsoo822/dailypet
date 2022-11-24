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
    <title>육아수첩 마이피드</title>
</head>

<style type="text/css">

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
	
	img.img-responsive {
		margin: 0;
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
	.img-responsive {
		margin: 0px;
		height: 450px;
	}
	.img-responsive img {
		width: 100%;
	}
/* -------------------------------------------------------------------------- */	
    .modal_overlay {
    	z-index: 999;
        width: 100%;
        height: 100%;
        padding-top: 100px;
        position: absolute;
        left: 0;
        top: 0;
        display: none;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.8);
        backdrop-filter: blur(1.5px);
        -webkit-backdrop-filter: blur(1.5px);
    }

    .modal_window {
		z-index: 999;
        background: white;
        backdrop-filter: blur(13.5px);
        -webkit-backdrop-filter: blur(13.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        width: 800px;
        height: 550px;
        position: relative;
        padding: 10px;
    }
     .modal_title{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        font-weight: bold;
        font-size: 20px;
    }

    .modal_title_side{
        flex: 0 0 40px;
        text-align: center;
    }
/* ------------------------------------------------------------------------ */
	
	#thumbList .col-lg-4 {
		margin: 18px 10px;
		max-width: 380px;
	}
	
	.col-lg-5 {
		padding: 0px;
	}
	
	button {
		background-color: white;
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
		<input type="hidden" id="ifdiSeq" name="ifdiSeq" value="">
		<input type="hidden" id="mm_ifmmSeq" name="mm_ifmmSeq" value="${sessSeq }">
		<%-- <input type="hidden" name="ifdaSeq" value="${vo.ifdaSeq }"> --%>
	    <!-- herder s -->
	    <%@include file="../../../common/xdmin/include/header.jsp"%>
	    <!-- header e -->
	    <!-- /.page header -->
	    <div class="diaryheader">
			<nav class="icon">
				<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
				<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
				<span><div class="profileheader"><a href="diaryMypage.html"><img src="${me.memberPath}${me.memberuuidName }" class="profilepic" alt=""></a></div></span>
			</nav>
		</div>
		<!-- Modal s -->
		<div id="modal_add_feed" class="modal_overlay">
			<div class="modal_window">
				<div class="modal_title">
					<div class="modal_title_side"></div>
					<div style="margin-bottom: 7px"> 게시물 상세 </div>
					<div class="modal_title_side">
						<span id="close_modal" class="material-icons-outlined">
							<i class="fa-solid fa-xmark"></i>
						</span>
					</div>
				</div>
				<div class="modal_body row">
					<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
						<div class="imgdetail">
							<img src="/resources/images/findpet/700.jpg" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
								<div class="profileView">
									<img src="/resources/images/findpet/700.jpg" class="profilepic" alt="">
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="idbox">	
								<h5 id="userid" style="margin-left: -15px; font-size: 12px"><b>아이디</b></h5>
							</div>
						</div>
						<hr style="color: lightgray; margin-top: 12px; margin-bottom: 0">
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
								<div class="profileView">
									<img src="/resources/images/findpet/700.jpg" class="profilepic" alt="">
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="idbox">	
								<h5 id="userid" style="margin-left: -15px; font-size: 12px"><b>아이디</b></h5>
							</div>
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12"></div>
							<div class="col">
								<p name="ifdaContent" style="margin: -10px 0 0 -15px; font-size: 12px">내용</p>
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
								<p style="font-size: 13px; margin-top: 5px;"><b id="liked">좋아요 9,234개</b></p> 
								<div class="cardcontent">
									<p style="margin: 10px 0 0 0">view all 365 comments</p>
									<p>날짜</p>
								</div>
							</div>
							<hr style="color: lightgray; margin: 3px">
							<div class="cardcomment">
								<input class="form-control" id="writecomm" type="text" placeholder="댓글 달기...">
								<button type="submit" id="upcomment">게시</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal e -->
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
	    					<div class="col-lg-6 col-md-4 col-sm-4">
	    						<button type="button" id="followbtn">팔로우</button>
	    						
	    					</div>
	    				</div>
	    				<br>
	    				<div class="row">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>게시물 <b></b></h4>
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
	    						<h4><c:out value="${item.ifmmIntrodution }"/></h4>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    			</div>
	    		</div>
	    		<br>
	    		<hr style="border: 1px solid lightgray; width: 1150px; margin-left: auto; margin-right: auto;">
	    	</div>
	        <div class="container" id="thumbList">
	            <div class="row" style="margin-left: 50px">
	        		<c:forEach items="${list }" var="list" varStatus="status">
		                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                    <div class="postthumb" style="max-width: 360px; max-height: 304px">
		                    	<a href="javascript:goDiaryDetail(${list.ifdaSeq})">
		                        	<img src="${list.diaryPath }${list.diaryuuidName }" class="img-responsive" alt="">
		                    	</a>
		                    </div>
		                    <button id="add_feed" type="button" id="followbtn">모달</button>
		                </div>
					</c:forEach>
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
		// 모달 띄우기 코드
    	const modal = document.getElementById("modal_add_feed");
	    const buttonAddFeed = document.getElementById("add_feed");
	   
			buttonAddFeed.addEventListener("click", e => {
				modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
		    	modal.style.display = "flex";
		        
				document.body.style.overflowY = "hidden"; // 스크롤 없애기
	        
			}); 
	 	// 모달 닫기 코드
	    const buttonCloseModal = document.getElementById("close_modal");
	    		
 				  buttonCloseModal.style.cursor = "pointer";
			
    		  buttonCloseModal.addEventListener("click", e => {
			      modal.style.display = "none";
			      document.body.style.overflowY = "visible";
			});
    		  
    		  
		goDiaryDetail = function(ifdaSeq) {
			$ajax({
				url: '/diary/getPost',
				type: 'POST',
				datetype: 'JSON',
				date: {
					ifdiSeq : $("#ifdiSeq").val(),
					mm_ifmmSeq : $("#mm_ifmmSeq").val(),
				},
				success:function (result) {
					$("#liked").html("좋아요 2개");
				},
				error:function(){
					alert("ajax errer...");
				}
			})	
		}
		  
 		 /* goDiaryDetail = function(ifdaSeq) {
  			1.아작스문 작성
  			2.게시물 시퀀스를 넘긴다
  			3.컨트롤러에서 게시물정보를 가지고온다
  			4.내가만든 모달창에 이미지 src를 가져온 정보로 바꿔준다.
  			5.모달을 보여준다.
  		}  
      	
  		var seq = $("#ifdaSeq")
  		var form = $("#mainForm")
  		

  		goDiaryDetail = function(ifdaSeq) {
  			seq.attr("value", ifdaSeq);
  			form.attr("action", "").submit();
  		} */
    		  
    </script>
</body>

</html>
