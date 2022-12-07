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
    	z-index: 1999;
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
		z-index: 1999;
        background: white;
        backdrop-filter: blur(13.5px);
        -webkit-backdrop-filter: blur(13.5px);
        width: 1000px;
        height: 700px;
        position: relative;
        bottom: 70px;
    }
    
    .material-icons-outlined {
		position: relative;
		color:black;
		font-size: 20px;		
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
    	width: 570px;
    	height: 700px;
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

	.row {
		margin: 0;
		padding: 0;
	}
	
	div.col-lg-7 {
		padding: 0;
	}
	
	.col-lg-5 {
		position: relative;
		height: 700px;
		padding: 0px;
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
		width: 373px;
		padding: 8px;
		display: inline;
		border: none;
		height: 40px;
	}
	
	.upcomment {
		color: brown;
		background-color: none;
		border: none;
		font-size: 14px;
		font-weight: bold;
		display: inline;
	}
	
	hr{
		color: gray;
		margin-top: 25px; 
		margin-bottom: 15px;
	}
	
	textarea{
		border: 0px;
		width: 400px;
		-ms-overflow-style: none;
	} 
	
	textarea:focus{
		outline: none;
	}
	
	#comment_area {
	   -ms-overflow-style: none;
	}
	
	#comment_area::-webkit-scrollbar{
	  display:none;
	}
	
	textarea::-webkit-scrollbar{
	  display:none;
	}
</style>

<body>
	<form method="post" id="mainForm">
		<input type="hidden" id="mm_ifmmSeq" name="mm_ifmmSeq" value="${sessSeq }">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${item.ifmmSeq }">
		<input type="hidden" id="loginUser" name="loginUser" value="${sessSeq }">
		<%-- <input type="hidden" id="ifdaSeq" name="ifdaSeq" value="${vo.ifdaSeq }"> --%>
	    <!-- herder s -->
	    <%@include file="../../../common/xdmin/include/header.jsp"%>
	    <!-- header e -->
	    <!-- /.page header -->
	    <div class="diaryheader">
			<nav class="icon">
				<span style="font-size: 20px;"><a href="/diary/diaryList"><i class="fa-sharp fa-solid fa-house"></i></a></span>
				<span style="font-size: 25px;"><a href="/diary/diaryForm"><i class="fa-regular fa-square-plus"></i></a></span>
				<span><div class="profileheader"><a href="/diary/diaryMypage"><img src="${item.memberPath}${item.memberuuidName}" class="profilepic" alt=""></a></div></span>
			</nav>
		</div>
		<!-- Modal s -->
		<div id="modal_add_feed" class="modal_overlay">
		<input type="hidden" id="ifdaSeq" name="ifdaSeq" value="${dto.ifdaSeq }">
		<input type="hidden" id="loginUser" name="loginUser" value="${sessSeq }">
			
			<div class="modal_window">
				<div class="modal_body row">
					<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
						<div class="imgdetail">
							<img id="postImg" class="img-responsive2">
						</div>
					</div>
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
								<div class="modalprofile">
									<img id="userImg" class="profilepic">
								</div>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">	
								<span style="margin-left: -4px; font-size: 16px;"><b id="userID"></b></span>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
								<span id="close_modal" class="material-icons-outlined">
									<i class="fa-solid fa-xmark"></i>
								</span> 
							</div>
						</div>  
						<hr>
						<div class="row" style="margin-top: 10px;">
							<div class="col" style="width: 400px;">
								<textarea name="ifdaContent" style="font-size: 14px;" id="postContents" readonly></textarea>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col" id="comment_area" style="height: 260px; overflow: scroll;"> 
								<!-- 댓글 s -->
								
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
										<span class="comm" style="font-size: 25px"><i class="fa fa-comment-o" onclick="commentBtn()"></i></span>
									</button>
								</div>
								<p style="font-size: 13px; margin-top: 5px;"><b id="liked">좋아요 <b id="postlikeCount">0</b>개</b></p> 
								<div class="cardcontent">
									<p id="postRegDate"></p>
								</div>
							</div>
							<hr> 
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
	    						<c:choose>
		    						<c:when test="${follow.iffwNy eq 1 }">
	    								<button type="button" id="followbtn" onclick="follow(this)">팔로우 ✔</button>
		    						</c:when>
	    							<c:otherwise>
		    							<button type="button" id="followbtn" onclick="follow(this)">팔로우</button>
	    							</c:otherwise>
	    						</c:choose>
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
	    						<h4>팔로워 <b id="countFollower"><c:out value="${item.follow }"/></b></h4>
	    					</div>
	    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
	    						<h4>팔로잉 <b id="countFollow"><c:out value="${item.follower }"/></b></h4>
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
	    		<hr style="border: 1px solid gray; width: 1150px; margin-left: auto; margin-right: auto;">
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
    		
    		var likedUrl ="";
    		var likedBtn = $("#likedBtn");
    		var status = $("#likedBtn").css('color');
   		
    		if(status == "rgb(0, 0, 0)") {
    			likedUrl = "/diary/addLiked";
    		} else {
    			likedUrl = "/diary/removeLiked";
    		}
    		
    		$.ajax({
    			url: likedUrl
    			,type: 'POST'
    			,dataType: 'json'
    			,data: {
    				//게시물 seq
    				ifdaSeq : $("#ifdaSeq").val()
    				//누가 눌렀는지 seq
    				,loginUser : $("#loginUser").val()
    			},
    			success:function(result){
    				if(result.list != null){
	    				//좋아요 count 숫자 변경 
	        			$("#postlikeCount").html(result.list.length);
    					
	    				if(status == "rgb(0, 0, 0)"){
			    			//https://webstudynote.tistory.com/95
			    			//채워주고
			    			//빨간색으로
			    			likedBtn.removeClass('fa-regular');
			    			likedBtn.addClass('fa-solid');
			    			//https://zetawiki.com/wiki/JQuery_CSS_%EC%86%8D%EC%84%B1_%EB%B3%80%EA%B2%BD 
			    			likedBtn.css("color",'red');
	    				} else {
	    					//비워주고
	    	    			//검정색으로
	    	    			likedBtn.removeClass('fa-solid');
	    	    			likedBtn.addClass('fa-regular');
	    	    			likedBtn.css("color",'black');
	    				}
    				}
    			},
    			error:function(){
    				alert("ajax error..!");
    			}
    			
    		});
    		
    	};
    	
    	
    	/* 댓글 s */
		$("#upcomment").on("click", function() { 
			$.ajax({
				url: "/comment/commentInst",
				type: 'POST',
				datatype: 'json',
				data: {
					ifcmContent: $("#writecomm").val(),
					ifdaSeq : $("#ifdaSeq").val(),
					ifmmSeq: $("#mm_ifmmSeq").val() 
				},
    			success: function(result) { 
    				var txt = "";
	    				txt += '<div class="row">';
	    				txt += '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1" style="padding: 0px; display: flex; align-items: center; width: 50px;">';
	    				txt += '<div class="modalprofile">';
	    				txt += '<img src="'+ result.img +'" class="profilepic">';
	    				txt += '</div>';
	    				txt += '</div>';
	    				txt += '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">';
	    				txt += '<div class="row">';
	    				txt += '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">';
	    				txt += '<span style="font-size: 13px; margin-bottom: 0px; display: flex; align-items: center;"><b>'+ result.writer +'</b></h5>';
	    				txt += '</div>';
	    				txt += '<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">';
	    				txt += '<span style="font-size: 3px;">방금전</span>';
	    				txt += '</div>';
	    				txt += '</div>';
	    				txt += '<div class="row">';
	    				txt += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display: flex; align-items: center;">';
	    				txt += '<span style="font-weight: 0; font-size: 14px;">'+ result.comment +'</span>';
	    				txt += '</div>';
	    				txt += '</div>';
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
			
			var likedBtn = $("#likedBtn");
			
			$.ajax({
				url: '/diary/getPost',
				type: 'POST',
				datatype: 'json',
				data: {
					ifdaSeq : ifdaSeq, 
					loginUser : ${sessSeq}
					
				},
				success:function (result) {
					//게시물 정보 
					$("#ifdaSeq").attr("value",result.ifdaSeq); 
					$("#postImg").attr("src",result.diaryImg);
					$("#postContents").html(result.diaryContents);
					$("#postRegDate").html(result.regDate);
					//게시자 정보
					$("#userImg").attr("src",result.userImg);
					$("#userID").html(result.userID);
					//좋아요 카운트
					$("#postlikeCount").html(result.likeCount);
					//좋아요 유무에따른 하트모양변경
					if(result.loginUgerLike == 1) {
						likedBtn.removeClass('fa-regular');
		    			likedBtn.addClass('fa-solid');
		    			likedBtn.css("color",'red');
					} else{
						likedBtn.removeClass('fa-solid');
    	    			likedBtn.addClass('fa-regular');
    	    			likedBtn.css("color",'black');
					}
					
					var comment = "";
					
					for(var i = 0; i < result.cmList.length; i++) {
						comment += '<div class="row">';
						comment += '<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1" style="padding: 0px; display: flex; align-items: center; width: 50px;">';
						comment += '<div class="modalprofile">';
						comment += '<img src="'+ result.cmList[i].mmPath + result.cmList[i].mmuuidName + '" class="profilepic" alt="">';
						comment += '</div>';
						comment += '</div>';
						comment += '<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">';
						comment += '<div class="row">';
						comment += '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">';
						comment += '<span style="font-size: 13px; margin-bottom: 0px; display: flex; align-items: center;"><b>'+ result.cmList[i].ifmmID +'</b></span>';
						comment += '</div>';
						comment += '<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">';
						comment += '<span style="font-size: 3px;">'+ result.cmList[i].ifcmRegDate +'</span>';
						comment += '</div>';
						comment += '</div>';
						comment += '<div class="row">';
						comment += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display: flex; align-items: center;">';
						comment += '<span style="font-weight: 0; font-size: 14px;">'+ result.cmList[i].ifcmContent +'</span>';
						comment += '</div>';
						comment += '</div>'; 
						comment += '</div>';
						comment += '</div>';
					} 
					
					$("#comment_area").html(comment);  
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
		
		follow = function(my) {
			switch (my.textContent) {
			case '팔로우':
				{
					$.ajax({
						url: '/insertFollow'
						,type: 'POST'
						,datatype: 'json'
						,data: {
							iffwFollow : $("#ifmmSeq").val()
							,iffwFollower : ${sessSeq}
						},
						success:function(result){ 
							$("#countFollower").html(result.followCount); 
						},
						error:function(){
							alert(" 팔로우 ajax error...")
						}
					});
					
					my.textContent = '팔로우 ✔';
					break;
				}
			case '팔로우 ✔':
				{
					$.ajax({
						
						url: '/deleteFollow'
						,type: 'POST'
						,datatype: 'json'
						,data: {
							iffwFollow : $('#ifmmSeq').val()
							,iffwFollower : ${sessSeq}
						},
						success:function(result){ 
							$("#countFollower").html(result.followCount); 
						},
						error:function(){
							alert("팔로우 ✔ ajax error...!");
						}
						
					});
				
					my.textContent = '팔로우';
					break;
				}
			}
		};
		
		commentBtn = function() {
			$("#writecomm").focus();
		};
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
