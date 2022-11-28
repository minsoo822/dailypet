<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>유기동물 검색 결과</title>
	
	<style type="text/css">
	/* div {
		border: 1px solid orange;
	} */	
	.form-control {
		color: black;
	}
	.petImg {
		width: 446px;
		height: 550px;
		max-height: 100%;
		max-width: 100%;
	}
	.profileImg {
		width: 80px;
		height: 80px;
		max-height: 100%;
		max-width: 100%;
	}
	.text {
		text-align: left;
		font-size: 13pt;
		font-weight: bold;
		margin-top: 14px;
	}
	.Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 45px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: auto;
    	margin-right: auto;
   	}
   	.Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .btnStyle {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 55px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-top: 30px;
    	margin-right: 20px;
    }
    .btnStyle:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .textbtm {
    	text-align: left;
		font-size: 13pt;
		font-weight: bold;
		margin-top: 14px;
    	margin-bottom: 20px;
    }
	</style>
</head>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="findpetViewForm">
    <input type="hidden" id="iffpSeq" name="iffpSeq" value="${item.iffpSeq }">
    <input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${sessSeq }">
	<div class="totalContent">
	    <div class="content">
	        <div class="container">
				<div class="row mb-5">
	                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="post-block">
							<div class="post-img">
							    <a href="#"><img class="petImg" src="${item.path }${item.uuidName}" alt="Interior Design Website Templates Free Download" class="img-responsive"></a>
							</div>
						</div>
					</div>	
	                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" style="width: 650px; margin-left: 30px;">
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								이름
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text">
								<c:out value="${item.iffpName }"/>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								품종
							</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 text">
								<c:out value="${item.iffpBreed }"/>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								성별
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text">
								<c:out value="${item.iffpGender }"/>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								특징
							</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 text">
								<c:out value="${item.iffpCharacteristic }"/>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								위탁장소
							</div>
							<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 ge-1 text">
								<c:out value="${item.iffpAnimalShelterzipCode }"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								<c:out value="${item.iffpAnimalShelter1 }"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text textbtm">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								<c:out value="${item.iffpAnimalShelter2 }"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								발견지역
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text">
								<c:out value="${item.iffpSpotLocation }"/>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								발견장소
							</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 text">
								<c:out value="${item.iffpSpotPlace }"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text textbtm">
								발견일시
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								<c:out value="${item.iffpSpotDate }"/>
							</div>
						</div>
	                </div>
				</div>
				<div class="row">
					<c:if test="${item.mm_ifmmSeq eq sessSeq }">
						<div class="col" style="display: flex; justify-content: flex-end;">
							<button type="button" class="btnStyle" id="backBtn">목록</button>
							<button type="button" class="btnStyle" id="modBtn">수정</button>
						</div>
					</c:if>
					<c:if test="${item.mm_ifmmSeq ne sessSeq }">
						<div class="col" style="display: flex; justify-content: flex-end;">
							<button type="button" class="btnStyle" id="backBtn">목록</button>
							<button type="button" class="btnStyle" id="goChat" style="width: 90px;">채팅하기</button>
						</div>
					</c:if>
				</div>
				<hr>
				<div class="row">
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
						<input type="text" class="form-control" name="ifcmContent" id="ifcmContent" placeholder="댓글달기">
					</div>
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
						<button type="button" class="btnStyle" id="commentSave" style="margin-top: 0px;">등록</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		                <div class="comment-title">
		                    <h2>댓글(<c:out value="${item.commentcount }"/>)</h2>
		                </div>
				        <div class="row">
				            <div class=" col-lg-12 col-md-12" id="comment-area">
				            	<!-- 댓글 s -->
				            	<c:forEach items="${commentList }" var="commentList" varStatus="status">
					                <ul class="comment-list">
					                    <li>
					                        <div class="comment-body">
					                            <div class="comment-author"><img src="${commentList.path }${commentList.uuidName}" alt class="profileImg"></div>
					                            <div class="comment-info">
					                                <div class="comment-header">
					                                    <h3 class="comments-title"><c:out value="${commentList.ifmmID }"/></h3>
					                                    <div class="meta"> <span class="meta-date"><c:out value="${commentList.ifcmRegDate }"/></span> </div>
					                                </div>
					                                <div class="comment-content">
					                                    <p><c:out value="${commentList.ifcmContent }"/></p>
					                                </div>
					                                <!-- <div class="reply"><a href="#" class="btn-link"><i class="fa fa-mail-reply"></i> Reply</a></div> -->
					                            </div>
					                        </div>
					                    </li>
					                </ul>
				                </c:forEach>
				                <!-- 댓글 e -->
				                <!-- <ul class="comment-list">
				                    <li>
				                        <div class="comment-body">
				                            <div class="comment-author"><img src="/resources/images/findpet/puppy-g12ba81e5a_1920.jpg" alt class="profileImg"></div>
				                            <div class="comment-info">
				                                <div class="comment-header">
				                                    <h3 class="comments-title">키키</h3>
				                                    <div class="meta"> <span class="meta-date">April 24, 2020</span> </div>
				                                </div>
				                                <div class="comment-content">
				                                    <p>빨리 주인을 찾았으면 좋겠네요 ㅠㅠ </p>
				                                </div>
				                                <div class="reply"><a href="#" class="btn-link"><i class="fa fa-mail-reply"></i> Reply</a></div>
				                            </div>
				                        </div>
				                        <ul class="comment-list childern">
				                            <li>
				                                <div class="comment-body">
				                                    <div class="comment-author"><img src="/resources/images/findpet/dog-g22e2a8936_1280.jpg" alt class="profileImg"></div>
				                                    <div class="comment-info">
				                                        <div class="comment-header">
				                                            <h3 class="comments-title">연탄</h3>
				                                            <div class="meta"> <span class="meta-date">April 24, 2020</span> </div>
				                                        </div>
				                                        <div class="comment-content">
				                                            <p>이렇게 작고 소중한 개나리가.... ㅠㅠ </p>
				                                        </div>
				                                        <div class="reply"><a href="#" class="btn-link"><i class="fa fa-mail-reply"></i> Reply</a></div>
				                                    </div>
				                                </div>
				                            </li>
				                        </ul>
				                    </li>
				                </ul> -->
				            </div>
				        </div>
					</div>
				</div>
	        </div>
	    </div>
    </div>
    </form>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    
    
    var form = $("#findpetViewForm");

	//목록으로 돌아가기
	$("#backBtn").on("click", function(){
		form.attr("action", "/findpet/findpetList").submit();
	});
	//수정하기
	$("#modBtn").on("click", function(){
		form.attr("action", "/findpet/findpetMod").submit();
	});
	
	
    /* 카카오지도API */
  	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                // 커서를 상세주소로 이동한다
                document.getElementById('address_detail').focus();
                
            }
        }).open();
    }
	
	//주소 리셋
	$("#address_reset").on("click", function() {
		$("#zip_code").val('');
		$("#address").val('');
		$("#address_detail").val('');
	})
	//댓글
	$("#commentSave").on("click", function() {
		
		$.ajax({
			url: '/findpet/commentInst',
			type: 'POST',
			datatype: 'json',
			data: {
				iffpSeq : $("#iffpSeq").val(),
				ifcmContent : $("#ifcmContent").val(),
				ifmmSeq : $("#ifmmSeq").val(),
			},
			success:function(result){
				
				var txt = "";
				
				txt +='<ul class="comment-list">';
				txt +='<li>';
				txt +='<div class="comment-body">';
				txt +='<div class="comment-author"><img src="'+ result.img +'" alt class="profileImg"></div>';
				txt +='<div class="comment-info">';
				txt +='<div class="comment-header">';
				txt +='<h3 class="comments-title">'+ result.writer +'</h3>';
				txt +='<div class="meta"> <span class="meta-date">방금전</span> </div>';
				txt +='</div>';
				txt +='<div class="comment-content">';
				txt +='<p>'+ result.comment +'</p>';
				txt +='</div>';
				txt +='<div class="reply"><a href="#" class="btn-link"><i class="fa fa-mail-reply"></i> Reply</a></div>';
				txt +='</div>';
				txt +='</div>';
				txt +='</li>';
				txt +='</ul>';
				
				$("#comment-area").prepend(txt);
				$("#ifcmContent").val("");
			},
			error:function(){
				alert("ajax error..!");
				
			}
		})
	});
	
	
	
	
	
	
	
	
	
	
    </script>
    
</body>

</html>