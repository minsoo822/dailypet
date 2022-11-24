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
		margin-bottom: 30px;
	} 
	
	.profile {
		width: 180px;
	    height: 180px; 
	    border-radius: 70%;
	    overflow: hidden;
	}
	.modalprofile {
		width: 30px;
	    height: 30px; 
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
    .imgdetail {
    	width: 440px;
    	height: 495px;
    	background: black;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    }
    .img-responsive2 {
    	object-fit: cover;
    	max-width: 100%;
    	max-height: 100%;
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
	
	.writecomm {
		width: 280px;
		padding: 8px;
		display: inline;
		border: none;
	}
	
	.upcomment {
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
		<input type="hidden" id="ifdaSeq" name="ifdaSeq" value="">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${item.ifmmSeq }">
		<input type="hidden" id="loginUser" name="loginUser" value="${sessSeq }">
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
		<input type="hidden" id="ifdaSeq" value="${dto.ifdaSeq }">
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
							<img id="postImg" src="" class="img-responsive2" alt="">
						</div>
					</div>
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
								<div class="modalprofile">
									<img id="userImg" src="" class="profilepic" alt="">
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="idbox">	
								<h5 style="margin-left: -15px; font-size: 12px"><b id="userID"> </b></h5>
							</div>
						</div>
						<hr style="color: lightgray; margin-top: 12px; margin-bottom: 0">
						
						<div class="row" style="margin-top: 10px">
							<div class="col">
								<p name="ifdaContent" style="margin: -10px 0 0 -15px; font-size: 12px" id="postContents"></p>
							</div>
						</div>
						<hr style="color: lightgray; margin-top: 25px; margin-bottom: 15px;">
						<div class="row">
							<div class="col" id="comment_area">
								<!-- 댓글 s -->
								<div class="row">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1" style="padding: 0px;">
										<div class="modalprofile">
											<img id="" src="/resources/images/findpet/700.jpg" class="profilepic" alt="">
										</div>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" id="idbox">	
										<div class="row">
											<div class=col>
												<h5 style="font-size: 12px; margin-bottom: 0px;"><b id="">haha</b></h5>
											</div>
										</div>
										<div class="row">
											<div class=col>
												<h5 style="font-size: 5px;"><b id="">2022-11-20 06:06:06</b></h5>
											</div>
										</div>
									</div>
									<div class="col">
										<b style="font-weight: 0;">귀엽다!!</b>
									</div>
								</div>
								<!-- 댓글 e -->
							</div>
						</div>
						<div class="cardfooter">
							<div class="service-content">
								<div class="postbtn">
									<button type="button" id="like">
										<span class="heart" style="font-size: 25px"><i id="likedBtn" onclick="liked()" class="fa-regular fa-heart"></i></span>
									</button>
									<button type="button" id="comment">
										<span class="comm" style="font-size: 25px"><i class="fa fa-comment-o"></i></span>
									</button>
								</div>
								<p style="font-size: 13px; margin-top: 5px;"><b id="liked">좋아요 0개</b></p> 
								<div class="cardcontent">
									<p style="margin: 10px 0 0 0">view all 365 comments</p>
									<p id="postRegDate"></p>
								</div>
							</div>
							<hr style="color: lightgray; margin: 3px">
							<div class="cardcomment">
								<input type="text" class="form-control" class="writecomm" id="writecomm" name="ifcmContent" placeholder="댓글 달기...">
								<button type="button" class="upcomment" id="upcomment">게시</button>
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
	    						<h4>게시물 <b><c:out value="${item.postCount }"/></b></h4>
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>팔로워 <b>0</b></h4>
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>팔로잉 <b>0</b></h4>
	    					</div>
	    				</div>
	    				<div class="row" style="margin-top: 10px; margin-left: 126px;">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    					</div>
    						<h4><b><c:out value="${item.ifmmIntroduction }"/></b></h4>
	    				</div>
	    				<div class="row" style="margin-top: 10px;">
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
	    					</div>
	    					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
	    						<h4></h4>
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
	            <div class="row" style="margin-left: 50px;">
	        		<c:forEach items="${list }" var="list" varStatus="status">
		                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                    <div class="postthumb" style="max-width: 360px; max-height: 304px;" id="add_feed">
		                    	<a href="javascript:goDiaryDetail(${list.ifdaSeq})">
		                        	<img src="${list.diaryPath }${list.diaryuuidName }" class="img-responsive" alt="">
		                    	</a>
		                    </div>
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
    	var form = $("#mainForm");
    	var seq = $("input:hidden[name=ifdaSeq]");
    	
    	liked = function(){
    		
    		var likedBtn = $("#likedBtn");
    		var likedUrl ="";
    		
    		if(likedBtn.hasClass('fa-regular'))
    		{
    			//https://webstudynote.tistory.com/95
    			//채워주고
    			//빨간색으로
    			likedBtn.removeClass('fa-regular');
    			likedBtn.addClass('fa-solid');
    			
    			//https://zetawiki.com/wiki/JQuery_CSS_%EC%86%8D%EC%84%B1_%EB%B3%80%EA%B2%BD 
    			likedBtn.css("color",'red');
    			likedUrl = "/diary/addLiked";
    			
    			//좋아요 count 숫자 변경 
    		}
    		else
    		{
    			//비워주고
    			//검정색으로
    			likedBtn.removeClass('fa-solid');
    			likedBtn.addClass('fa-regular');
    			likedBtn.css("color",'black');

    			likedUrl = "/diary/removeLiked";
    			
    			//좋아요 count 숫자 변경
    		}
    		
    		$.ajax({
    			url: likedUrl
    			,type: 'POST'
    			,dataType: 'json'
    			,data: {
    				//게시물 seq
    				//누가 눌렀는지 seq
    			}
    			,success:function(result){
    				
    			}
    			,error:function(){
    				alert("ajax error..!");
    			}
    			
    		});
    		
    	}
    	
    	
    	/* 댓글 s */
		$("#upcomment").on("click", function() {
    		$.ajax({
    			url: "/comment/commentInst",
    			type: "POST",
    			datatype: "json",
    			success: function(result) {
    				var txt = "";
    				
    				txt += '<div class="row">';
    				txt += '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1" style="padding: 0px;">';
    				txt += '<div class="modalprofile">';
    				txt += '<img id="" src="'+ result.coUserImg +'" class="profilepic" alt="">';
    				txt += '</div>';
    				txt += '</div>';
    				txt += '<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" id="idbox">	';
    				txt += '<div class="row">';
    				txt += '<div class=col>';
    				txt += '<h5 style="font-size: 12px; margin-bottom: 0px;"><b id="">'+ result.coUserid +'</b></h5>';
    				txt += '</div>';
    				txt += '</div>';
    				txt += '<div class="row">';
    				txt += '<div class=col>';
    				txt += '<h5 style="font-size: 5px;"><b>방금전</b></h5>';
    				txt += '</div>';
    				txt += '</div>';
    				txt += '</div>';
    				txt += '<div class="col">';
    				txt += '<b style="font-weight: 0;">'+ result.comment +'</b>';
    				txt += '</div>';
    				txt += '</div>';
    			
    				$("#comment_area").prepend(txt);
    				$("#writecomm").val("");
    			},
    			error:function(){
    				alert("ajax error..!");
    			}
    		});
    	});
    	/* 댓글 e */
    	
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
	    		
		buttonCloseModal.addEventListener("click", e => {
			modal.style.display = "none";
			document.body.style.overflowY = "visible";
		});
    		  
		goDiaryDetail = function(ifdaSeq) {
			$.ajax({
				url: '/diary/getPost',
				type: 'POST',
				datatype: 'json',
				data: {
					ifdaSeq : ifdaSeq 
				},
				success:function (result) {
					
					$("#postImg").attr("src",result.diaryImg);
					$("#userImg").attr("src",result.userImg);
					$("#userID").html(result.userID);
					$("#userID").html(result.userID);
					$("#postContents").html(result.diaryContents);
					$("#postRegDate").html(result.regDate);
					//좋아요 카운트
					//게시물 정보 
					//게시자 정보
					
					// 게시물 한개당 + For문 
					//댓글들 ( 게시물을 여러개 불러오는 느낌 )
						//댓글정보
						//댓글작성자 닉네임 이미지
					
					
					
					
					modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
			    	modal.style.display = "flex";
			        
					document.body.style.overflowY = "hidden"; // 스크롤 없애기
				},
				error:function(){
					alert("ajax errer...");
				}
			});	
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
