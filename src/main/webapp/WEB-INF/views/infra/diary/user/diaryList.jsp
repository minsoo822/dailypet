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
		margin-bottom: 50px;
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
	
	.commentForm {
		width: 400px;
		border: none;
		margin: 0;
		display: inline;
	}
	
	#commSubmit {
		margin-left: 30px;
		display: inline;
	}
	
	.cmprofileView {
		padding-left:0px;
		padding-right:0px;
		width: 40px;
	    height: 40px;
	    border-radius: 70%;
	    overflow: hidden;
	    display: inline-block; 
		position: relative;
		top: 10px;
	}
	
	.cmId {
		font-size: 8pt;
	}
	
	.cmTime {
		font-size: 5pt;
	} 
</style>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="diaryForm">
    <!-- <input type="hidden" name="ifdaSeq"> -->
    <input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${item.ifmmSeq }">
    <input type="hidden" id="sessSeq" name="sessSeq" value="${sessSeq }">
    <input type="hidden" id="loginUser" name="loginUser" value="${sessSeq }">
    
		<div class="diaryheader">
			<nav class="icon">
				<span style="font-size: 20px"><a href="diaryList"><i class="fa-sharp fa-solid fa-house"></i></a></span>
				<span style="font-size: 25px"><a href="diaryForm"><i class="fa-regular fa-square-plus"></i></a></span>
				<span><div class="profileheader"><a href="diaryMypage"><img src="${item.memberPath}${item.memberuuidName }" class="profilepic" alt=""></a></div></span>
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
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4" onclick="javascript:goUser(${list.ifmmSeq})" style="cursor: pointer;">
								<div class="profileView">
									<img src="${list.memberPath }${list.memberuuidName}" class="profilepic" alt="">
							   	</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							    <h5 style="margin: 10px 0 0 -25px; font-size: 13px"><b><c:out value="${list.ifmmID }"/></b></h5>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">&nbsp;</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4" style="vertical-align: middle">
								<!-- 삭제버튼 -->
								<c:if test="${list.ifmmSeq eq sessSeq }">
									<button style="margin-left: 25px;" type="button" onclick="delPost(${list.ifdaSeq})"><i class="fa-regular fa-trash-can fa-lg"></i></button>
								</c:if><c:if test="${list.ifmmSeq ne sessSeq }">
								
								</c:if>
							</div>
						</div>
						<!-- 상단바 e -->
						<!-- 일기 사진 s -->
						<div class="row">
							<div class="col" style="overflow: hidden; padding-left: 0px; padding-right: 0px;" >
								<div class="service-img" style="width: 500px; margin-left: auto; margin-right: auto;">
								    <a href="#" class="imghover"><img src="${list.diaryPath}${list.diaryuuidName}" class="img-responsive" alt=""></a>
								</div>
							</div>
						</div>
						<!-- 일기 사진 e -->
						<div class="service-content">
							<!-- 좋아요 댓글 버튼 s -->
							<div class="postbtn">
								<c:choose>
									<c:when test="${list.like_ing eq 1 }">
										<button type="button" id="like">
											<span class="heart" style="font-size: 25px"><i id="likedBtn${list.ifdaSeq}" style="color: rgb(225, 0, 0);" onclick="liked(${list.ifdaSeq})" class="fa-solid fa-heart"></i></span>
										</button>
									</c:when>
									<c:otherwise>
										<button type="button" id="like">
											<span class="heart" style="font-size: 25px"><i id="likedBtn${list.ifdaSeq}" style="color: rgb(0, 0, 0);" onclick="liked(${list.ifdaSeq})" class="fa-regular fa-heart"></i></span>
										</button>
									</c:otherwise>
								</c:choose>
								<button type="button" id="comment">
									<span class="comm" style="font-size: 25px"><i onclick="goComment(${list.ifdaSeq})" class="fa fa-comment-o"></i></span>
								</button>
							</div>
							<!-- 좋아요 댓글 버튼 e -->
							<!-- 좋아요 갯수	 s -->
							<c:choose>
								<c:when test="${list.likeCount eq 0 }"><br></c:when>
								<c:otherwise>
									<p><b>좋아요 <b id="postlikeCount${list.ifdaSeq}"><c:out value="${list.likeCount }"/></b>개</b></p>
								</c:otherwise>
							</c:choose>	
							<!-- 좋아요 갯수	 e -->
							<!-- contents s -->
							<div class="cardcontent">
								<h5 style="font-size: 13px; margin: 0 10px 0 0; display: inline">
									<b><c:out value="${list.ifmmID }"/></b>
								</h5>
								<p style="font-size: 13px; display: inline;"><c:out value="${list.ifdaContents }"/></p>
								<p style="font-size: 11px; color: lightgray"><c:out value="${list.ifdaRegDate }"/></p>
							<!-- contents e -->
								<!-- Comment s -->
								<c:choose>
									<c:when test="${list.commentCount eq 0 }">
										<a>
											<p style="font-size: 13px; color: lightgray; margin-bottom: 5px;" id="cm${list.ifdaSeq}">댓글이 없습니다</p>
										</a>
									</c:when>
									<c:otherwise>
										<a onclick="openCm(${list.ifdaSeq})" >
											<p style="font-size: 13px; color: lightgray; margin-bottom: 5px;" id="cm${list.ifdaSeq}">댓글 ${list.commentCount }개 보기</p>
										</a>
									</c:otherwise>
								</c:choose>
								<div class="row mt-2 mb-2" id="cmList${list.ifdaSeq}" style="display: flex;">
									<c:forEach items="${cmList }" var="cmList" varStatus="status">
										<div class="row">
											<div class="col">
												<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 cmprofileView">
													<img src="${cmList.mmPath }${cmList.mmuuidName}" class="profilepic" alt="">
												</div>
												<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
													<div class="row">
														<div class="col-2 cmId">
															<c:out value="${cmList.ifmmID }"></c:out>
														</div>
														<div class="col cmTime">
															<c:out value="${cmList.ifcmRegDate }"></c:out>
														</div>
													</div>
													<div class="row">
														<div class="col">
															<c:out value="${cmList.ifcmContent }"></c:out>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
								<!-- Comment e -->
							</div>
						</div>
						<!-- Comment s -->
						<div class="cardcomment" style="margin-bottom: 20px; margin-left: 5px; margin-right: 5px;">
							<div class="commentBox">
						  	 	<input class="form-control commentForm" type="text" placeholder="댓글 달기" name="ifcmContent" id="ifcmContent${list.ifdaSeq}">
						  	 	<button onclick="commSubmit(${list.ifdaSeq})"><i class="fa-regular fa-paper-plane"></i></button>
						   	</div>
					   </div>
					   <!-- Comment e -->
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
    	
	    var sessSeq = $("#sessSeq").val();
	    var ifdaSeq = $("input:hidden[name=ifdaSeq]");
	    var ifmmSeq = $("input:hidden[name=ifmmSeq]");
		var seq = $("input:hidden[name=ifmmSeq]");
		var form = $("#diaryForm")
		
		goUser = function(key) {
			if(key == sessSeq ) {
				form.attr("action", "/diary/diaryMypage").submit();	 //똑같아 그래서 하나의 컨트롤러에 내 정보로 갈땐 vo.seq == null 인상태로 다른사람 정보는 vo.seq = N 
			} else {
				ifmmSeq.val(key);
				form.attr("action" ,"/diary/diaryUserpage").submit();
			}
		};
		delPost = function(key) {
			ifdaSeq.val(key);
			form.attr("action", "/diary/diaryDel").submit();
		};

		liked = function(key){
			
			var likedUrl ="";
			var likedBtn = $("#likedBtn"+key);
			var status = $("#likedBtn"+key).css('color');
			
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
					ifdaSeq : key
					//누가 눌렀는지 seq
					,loginUser : $("#loginUser").val()
				},
				success:function(result){
					if(result.list != null){
	    				//좋아요 count 숫자 변경 
	        			$("#postlikeCount"+key).html(result.likeCount);
						
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
		
		
		
		//댓글펼치고접기
		function openCm(key){
			
		   let status = $('#cmList'+key).css('display');
	       if (status == 'flex') {
	            $('#cmList'+key).hide();
	            $('#cm'+key).text('댓글보기');
	
	       } else {
	            $('#cmList'+key).show();
	            $('#cm'+key).text('댓글 숨기기');
	
	       }
	    };
		
		commSubmit = function(key){
			$.ajax({
				url: '/diary/drListCmInst',
				type: 'POST',
				datatype: 'json',
				data: {
					ifdaSeq : key,
					ifcmContent: $("#ifcmContent"+key).val(),
					ifmmSeq: $("#ifmmSeq").val()
				},
				success:function(result){
					var txt = "";
						txt +='<div class="row">';
						txt +='<div class="col">';
						txt +='<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 cmprofileView">';
						txt +='<img src="'+ result.img +'" class="profilepic" alt="">';
						txt +='</div>';
						txt +='<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">';
						txt +='<div class="row">';
						txt +='<div class="col-2 cmId">'+ result.writer +'</div>';
						txt +='<div class="col cmTime">방금전</div>';
						txt +='</div>';
						txt +='<div class="row">';
						txt +='<div class="col">'+ result.comment +'</div>';
						txt +='</div>';
						txt +='</div>';
						txt +='</div>';
						txt +='</div>';
						
						$("cmList").prepend(txt);
						$("#ifcmContent").val("");
					},
				error:function(){
					alert("ajax error..!");
				}
			})
		};
		
		commentBtn = function() {
			$("#writecomm").focus();
		};
    </script>
    
</body>

</html>

