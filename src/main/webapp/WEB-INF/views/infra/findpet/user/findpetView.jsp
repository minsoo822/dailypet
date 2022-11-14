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
	.propileImg {
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
    .btnSave {
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
    .btnSave:hover {
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
	<div class="totalContent">
	    <div class="content">
	        <div class="container">
				<div class="row mb-5">
	                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="post-block">
							<div class="post-img">
							    <a href="#"><img class="petImg" src="/resources/images/findpet/zz.jpg" alt="Interior Design Website Templates Free Download" class="img-responsive"></a>
							</div>
						</div>
					</div>	
	                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" style="width: 650px; margin-left: 30px;">
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								이름
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text">
								-
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								품종
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text">
								병아리
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								나이
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text">
								-
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								성별
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text">
								-
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								위탁장소
							</div>
							<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 ge-1 text">
								12110
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								경기도 남양주시 별내3로 23 (별내동, 미리내마을4-4단지)
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text textbtm">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								4401동 8501호
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text textbtm">
								발견장소
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								4401동 오른쪽 화단
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text textbtm">
								발견일시
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								2022-10-22 오후 07:31
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								특이사항
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 text">
								발바닥에 검은색 점이있어요
							</div>
						</div>
	                </div>
				</div>
				<div class="row">
					<div class="col" style="display: flex; justify-content: flex-end;">
						<button type="button" class="btnSave">목록</button>
						<button type="button" class="btnSave">수정</button>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					    <div class="comment-area">
					        <div class="row">
					            <div class=" col-lg-12 col-md-12">
					                <div class="comment-title">
					                    <h2>댓글(3)</h2>
					                </div>
					                <ul class="comment-list">
					                    <li>
					                        <div class="comment-body">
					                            <div class="comment-author"><img src="/resources/images/findpet/puppy-g12ba81e5a_1920.jpg" alt class="propileImg"></div>
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
					                                    <div class="comment-author"><img src="/resources/images/findpet/dog-g22e2a8936_1280.jpg" alt class="propileImg"></div>
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
					                </ul>
					                <ul class="comment-list">
					                    <li>
					                        <div class="comment-body">
					                            <div class="comment-author"><img src="/resources/images/findpet/maltese-g892b1f5c5_1280.jpg" alt class="propileImg"></div>
					                            <div class="comment-info">
					                                <div class="comment-header">
					                                    <h3 class="comments-title">먼지</h3>
					                                    <div class="meta"> <span class="meta-date">April 23, 2020</span> </div>
					                                </div>
					                                <div class="comment-content">
					                                    <p>울고있는 소리가 여기까지 들려요 ㅠㅠㅠ  </p>
					                                </div>
					                                <div class="reply"><a href="#" class="btn-link"><i class="fa fa-mail-reply"></i> Reply</a></div>
					                            </div>
					                        </div>
					                    </li>
					                </ul>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
	        </div>
	    </div>
    </div>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    	
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
	
    </script>
    
</body>

</html>