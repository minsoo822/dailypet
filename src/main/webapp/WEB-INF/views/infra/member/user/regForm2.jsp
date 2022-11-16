<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- meta, link s -->
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <!-- meta, link e -->
	<title>회원가입</title>
    <style type="text/css">
    	.right{
    		float: right;
    	} 
    	
    	.foot{
    		font-size: 60px;
    	}
    	
    	.reg{
    		text-align: center;
   		}
   		
   		.arrow{
   			font-size: 15px;
			margin-bottom: 10px;   			
   		}
   		
   		.wid{
   			width: 120px;
   		}
   		
		.div1 {
		    display: flex;
		    justify-content: center;
		}
		
		.div2 {
		    display: flex;
			margin-left: 30px;
		}
		
		.foot{
			font-size: 50px;
		}
		
		.top{	
			margin-top: 20px;
		}

		.top2{
			margin-top: 10px;
		}
		
		.foot2{
			color: #b5b5b5; 
			font-size: 50px;
		} 
		
		#mydiv {
	        height: 300px;
	        overflow: scroll;
	        background-color: #fcfcfc;
	    }
	    
	    #mydiv2 {
	    	background-color: #fcfcfc;
	    }
	    
	    .btn{
	    	padding: 10px 10px;
	    }
	    
	    .gray{
	    	background-color: #e2e2e2;
	    	font-size: 16px;
	    	text-align: center;
	    	width: 150px;
	    	height: 35px;
	    	margin-top: 6px;
	    }

		hr{
			margin-top: 5px;
			margin-bottom: 3px;
		}
		
		hr1{
			margin-top: 10px;
			margin-bottom: 10px;
		}
		
		.form-control{
			color: black;
		}
		
		.select1{
			width: 370px;
	    	height: 35px;	
    	    border: 1px solid #e2dcdb;
			font-size: 14px;
			margin-top: 5px;
		}
		
		.select2{
			width: 80px;
	    	height: 35px;	
    	    border: 1px solid #e2dcdb;
			font-size: 14px;
			margin-top: 6px;
		}
		
		.top3{
			margin-top: 6px;
		}
		
		.top4{
			margin-top: 4px;
		}
		
		label{
			font-size: 14px;
			font-weight: nomal;
		}
		
		.input{
			height: 35px;
			margin-top: 6px;
		}
		
		.form-check{
			margin-top: 10px;
		}
		
		.addScroll{
			overflow-y:auto;
			background-color:#E9ECEF;
			width: 475px;
			height: 180px;
		}
		
		#nicknameFeedback.valid-feedback{
			color: green;
			font-size: 12px;
		}
		
		#nicknameFeedback.invalid-feedback{
			color: red;
			font-size: 12px;
		}
		
		#ifmmIDFeedback.valid-feedback{
			color: green;
			font-size: 12px;
		}
		
		#ifmmIDFeedback.invalid-feedback{
			color: red;
			font-size: 12px;
		}
		
		.btnGo {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	color: #372d2b;
	    	text-align: center;
	    	width: 100px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnGo:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .btnBack {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	text-align: center;
	    	width: 58px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnBack:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .btnPlus {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	text-align: center;
	    	width: 40px;
	    	height: 40px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnPlus:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .btnMinus {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	text-align: center;
	    	width: 40px;
	    	height: 40px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnMinus:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .btn-space{
		    margin-right: 5px;
		}
		.userimgBox {
			width: 100px;
			height: 100px;
			border-radius: 50%;	
			background: #E9ECEF;
			overflow: hidden;
		}
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form name="formReg" method="post" enctype="multipart/form-data" autocomplete="off">
	    <div class="content">
	    	<div class="totalContent">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		                    <div class="bg-light pinside30">
		                        <div class="row">
		                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		                                <h1>회원가입</h1>
		                                <p>#Daily Pet 회원 가입으로 다양한 서비스를 만나보세요.</p>
		                                <br>
		                                <div class="row div1 reg">
		                               		<div class="col-1 wid"> 	
		                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
		                               			<br>
		                               			<span>약관동의</span>
		                               		</div>
		                               		<div class="col-1 top">
		                               			<i class="fa-solid fa-angle-right"></i>
		                               		</div>
		                               		<div class="col-1 wid">
		                               			<span class="foot"><i class="fa-solid fa-paw"></i></span>
		                               			<br>
		                               			<span>정보입력</span>
		                               		</div>
		                               		<div class="col-1 top">
		                               			<i class="fa-solid fa-angle-right"></i>
		                               		</div>
		                               		<div class="col-1 wid">
		                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
		                               			<br>
		                               			<span>가입완료</span>
		                               		</div> 
		                               	</div>
		                            </div>
		                        </div>
		                        <br>
		                        <br>
		                        <h3>기본 정보</h3>
		                        <hr>
		                       	<div class="row div2 left">
									<div class="col-lg-6 col-md-6 col-sm-6 top2">
										<div id="" class="userimgBox">
											<img src="" id="userImage" style="width: 100%; height: 100%; object-fit:cover;">
										</div>
									</div>							
								</div>	
								<div class="row div2 left">
									<div class="col-lg-2 col-md-2 col-sm-2 gray">
										<label class="top4">회원사진 첨부</label>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<input class="form-control input" id="userfile" name="userImage" type="file" accept=".jpg,.png,.jpeg">
									</div>
								</div>
		                       	<div class="row div2">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">성명</label>
		                        	</div>
		                        	<div class="col-lg-4 col-md-4 col-sm-4">
		                       			<input class="form-control input" type="text" name="ifmmName" id="ifmmName">
		                        	</div>
		                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">연락처</label>
		                        	</div>
		                        	<div class="col-lg-1 col-md-1 col-sm-1">
		                        		<select class="form-select select2" name="ifmmTelecom">
											<option value="">::선택::</option>
											<option value="1">SKT</option>
											<option value="2">KT</option>
											<option value="3">LG</option>
										</select> 
		                        	</div>
		                        	<div class="col-lg-3 col-md-3 col-sm-3">
		                        		<input class="form-control input" type="text" name="ifmmTel" id="ifmmTel" placeholder="ex)010-0000-0000">
		                        	</div>
		                       	</div>
		                       	<hr>
		                       	<div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">이메일</label>
		                        	</div>
		                        	<div class="col-lg-4 col-md-4 col-sm-4">
										<input type="text" class="form-control input" name="ifmmEmailID" id="ifmmEmailID">
									</div>	
									<div class="col-1 top2">
										<span>@</span>
									</div>
									<div class="col-lg-4 col-md-4 col-sm-4">
										<select class="form-select select1" name="ifmmEmailDomain">
											<option value="">::선택::</option>
											<option value="1">naver.com</option>
											<option value="2">gmail.com</option>
											<option value="3">hanmail.com</option>
											<option value="4">nate.com</option>
											<option value="5">daum.net</option>
										</select> 
									</div>
		                       	</div>
								<hr>
								<br>
								<br>
		                        <h3>필수 입력 사항</h3>
		                        <hr>
		                        <div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">아이디</label>
		                        	</div>
		                        	<div class="col-lg-3 col-md-3 col-sm-3">
		                       			<input type="hidden" id="ifmmIDAllowNY" name="ifmmIDAllowNY" value="0">
										<input class="form-control input" type="text" name="ifmmID" id="ifmmID" placeholder="4자리 이상의 영문 + 숫자">
										<div class="invalid-feedback" id="ifmmIDFeedback"></div>
		                        	</div>
		                       	</div>
		                       	<hr>
		                   	   	<div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">닉네임</label>
		                        	</div>
		                        	<div class="col-lg-3 col-md-3 col-sm-3">
		                       			<input type="hidden" id="nicknameAllowNY" name="nicknameAllowNY" value="0">
										<input type="text" class="form-control input" id="nickname" name="ifmmNickname">
										<div class="invalid-feedback" id="nicknameFeedback"></div>
		                        	</div>
		                       	</div>
		                       	<hr>
		                  		<div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">비밀번호</label>
		                        	</div>
		                        	<div class="col-lg-4 col-md-4 col-sm-4">
		                       			<input class="form-control input" type="password" name="ifmmPW" id="pw">
		                        	</div>
		                       	</div>
		                       	<hr>
								<div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">비밀번호 확인</label>
		                        	</div>
		                        	<div class="col-lg-4 col-md-4 col-sm-4">
		                       			<input class="form-control input" type="password" name="pwCheck" id="pwCheck">
		                        	</div>
		                        	<div class="col-lg-4 col-md-4 col-sm-4">
										<span id="alert-success" style="display: none; color: #097e01; text-align: left; font-size: 15px; margin-top: 9px;"><i class="fa-solid fa-circle-info"></i>&nbsp; 비밀번호가 일치합니다.</span>
										<span id="alert-danger" style="display: none; color: #c53e3e; text-align: left; font-size: 15px; margin-top: 9px;"><i class="fa-solid fa-circle-info"></i>&nbsp; 비밀번호가 일치하지 않습니다.</span>
									</div> 
		                       	</div>  
		                       	<hr>
		                       	<div class="row div2 left">
		                       		<div class="col-lg-2 col-md-2 col-sm-2 gray">
		                        		<label class="top4">주소</label>
		                        	</div>
		                        	<div class="col-lg-10 col-md-10 col-sm-10">
		                        		<div class="row">
				                        	<div class="col-lg-4 col-md-4 col-sm-4">
												<input class="form-control input" type="text" name="ifmmZipcode" id="ifmmZipcode" placeholder="우편번호" readonly>
				                        	</div>
				                        	<div class="col-lg-2 col-md-2 col-sm-2 top3">
				                       			<button type="button" class="btn btn-outline-secondary" id="addrButton"><i class="fa-solid fa-magnifying-glass"></i></button>
												<button class="btn btn-outline-secondary" type="button" id="clearButton"><i class="fa-solid fa-arrow-rotate-left"></i></button>
				                        	</div>
				                       		<div class="col-lg-10 col-md-10 col-sm-10">
				                        		<input class="form-control input" type="text" name="ifmmAddr1" id="ifmmAddr1" placeholder="주소" readonly>
				                        	</div>
				                        	<div class="col-lg-5 col-md-5 col-sm-5">
				                        		<input class="form-control input" type="text" name="ifmmAddr2" id="ifmmAddr2" placeholder="상세주소">
				                        	</div>
				                        	<div class="col-lg-5 col-md-5 col-sm-5">
				                        		<input class="form-control input" type="text" name="ifmmAddr3" id="ifmmAddr3" placeholder="참고항목" readonly>
				                        	</div>
										</div>
									</div>
								</div>
								<hr>
								<br>
								<br>
								<h3>반려동물 정보 등록</h3>
								<hr>
								<div id="petPoint">
									<div class="row div2 left">
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">이미지 첨부</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4">
											<input class="form-control input" id="petfile" name="petImage" type="file" accept=".jpg,.png,.jpeg">
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 top2">
											<div id="UploadedImagePreview" class="addScroll">
												<img src="" id="petImage" style="height: 180px;">
											</div>
										</div>							
									</div>
									<hr>
									<div class="row div2 left">
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">이름</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4">
											<input class="form-control input" type="text" name="ifamName" id="ifamName" placeholder="반려동물의 이름을 적어주세요.">
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">나이</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4">
											<input class="form-control input" type="text" name="ifamAge" id="ifamAge">
										</div>
									</div>
									<hr>
									<div class="row div2 left">
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">품종</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4">
											<input class="form-control input" type="text" name="ifamKind" id="ifamKind" placeholder="ex) 포메라니안">
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">성별</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 top2">
											<input class="form-check-input" type="radio" name="ifamGender" id="gender1" value="9">
											<label class="form-check-label" for="gender1">남아</label>
											&nbsp;&nbsp;
											<input class="form-check-input" type="radio" name="ifamGender" id="gender2" value="10">
											<label class="form-check-label" for="gender2">여아</label>
											&nbsp;&nbsp;
											<input class="form-check-input" type="radio" name="ifamGender" id="gender3" value="11">
											<label class="form-check-label" for="gender3">중성화</label>
										</div>
									</div>
									<hr>
									<div class="row div2 left">
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">칩 여부</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 top2">
											<input class="form-check-input" type="radio" name="ifamChipNY" id="chip1" value="1">
											<label class="form-check-label" for="chip1">예</label>
											&nbsp;&nbsp;
											<input class="form-check-input" type="radio" name="ifamChipNY" id="chip2" value="0">
											<label class="form-check-label" for="chip2">아니오</label>
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 gray">
											<label class="top4">접종 여부</label>
										</div>
										<div class="col-lg-4 col-md-4 col-sm-4 top2">
											<input class="form-check-input" type="radio" name="ifamVaccinateNY" id="vac1" value="1">
											<label class="form-check-label" for="vac1">예</label>
											&nbsp;&nbsp;
											<input class="form-check-input" type="radio" name="ifamVaccinateNY" id="vac2" value="0">
											<label class="form-check-label" for="vac2">아니오</label>
										</div>
									</div>
									<hr class="hr1">
									<button type="button" class="btn btnPlus left" id="btn" onClick="addPet();"><i class="fa-solid fa-plus"></i></button>
									<br>
									<br>
				                </div>
				                <button type="button" class="btn btnGo right" id="btnSave">가입완료 <i class="fa-solid fa-angle-right"></i></button>
								<a href="/member/regForm1">
									<button type="button" class="btn btn-space btnBack right"><i class="fa-solid fa-angle-left"></i>이전 </button>
								</a>
								<br>
								<br>
			                </div>
			            </div> 
			        </div>
		        </div>
			</div>
	    </div>
    </form>

   	<%@include file="../../../common/xdmin/include/footer.jsp"%>

	<%@include file="../../../common/xdmin/include/footScript.jsp"%>
	
	<script type="text/javascript">
	/* 반려동물 등록 */
	var count_pet = 0;	
	
	function addPet() {
	 
	var tmp = ""; 
		
	tmp += '<div id="petDelete' + count_pet + '">'
	tmp += '<hr>';
	tmp += '<div class="row div2 left">';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">이미지 첨부</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4">';
	tmp += '<input class="form-control input" name="MultipartFile" type="file" multiple="multiple" accept=".jpg,.png,.jpeg">';
	tmp += '</div>';
	tmp += '<div class="col-lg-6 col-md-6 col-sm-6 top2">';
	tmp += '<div id="UploadedImagePreview" class="addScroll">';
	tmp += '<c:forEach items="${imageUpload}" var="imageUpload" varStatus="status">';
	tmp += '<img src="${imageUpload.path }${imageUpload.uuidName}" id="img">';
	tmp += '</c:forEach>';
	tmp += '</div>';
	tmp += '</div>';
	tmp += '</div>';
	tmp += '<hr>';
	tmp += '<div class="row div2 left">';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">이름</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4">';
	tmp += '<input class="form-control input" type="text" name="petName" id="petName" placeholder="반려동물의 이름을 적어주세요.">';
	tmp += '</div>';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">나이</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4">';
	tmp += '<input class="form-control input" type="text" name="age" id="age">';
	tmp += '</div>';
	tmp += '</div>';
	tmp += '<hr>';
	tmp += '<div class="row div2 left">';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">품종</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4">';
	tmp += '<input class="form-control input" type="text" name="kind" id="kind" placeholder="ex) 포메라니안">';
	tmp += '</div>';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">성별</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4 top2">';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio1" value="option1">';
	tmp += '<label class="form-check-label" for="inlineRadio4">남아</label> &nbsp; &nbsp;';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio2" value="option2">';
	tmp += '<label class="form-check-label" for="inlineRadio5">여아</label> &nbsp;&nbsp;';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions1" id="inlineRadio3" value="option3">';
	tmp += '<label class="form-check-label" for="inlineRadio5">중성화</label>';
	tmp += '</div>';
	tmp += '</div>';
	tmp += '<hr>';
	tmp += '<div class="row div2 left">';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">칩 여부</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4 top2">';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions2" id="inlineRadio4" value="option4">';
	tmp += '<label class="form-check-label" for="inlineRadio4">예</label> &nbsp; &nbsp;';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions2" id="inlineRadio5" value="option5">';
	tmp += '<label class="form-check-label" for="inlineRadio5">아니오</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-2 col-md-2 col-sm-2 gray">';
	tmp += '<label class="top4">접종 여부</label>';
	tmp += '</div>';
	tmp += '<div class="col-lg-4 col-md-4 col-sm-4 top2">';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions3" id="inlineRadio4" value="option4">';
	tmp += '<label class="form-check-label" for="inlineRadio4">예</label> &nbsp; &nbsp;';
	tmp += '<input class="form-check-input" type="radio" name="inlineRadioOptions3" id="inlineRadio5" value="option5">';
	tmp += '<label class="form-check-label" for="inlineRadio5">아니오</label>';
	tmp += '</div>';
	tmp += '</div>';
	tmp += '<hr class="hr1">';
	tmp += '<button type="button" class="btn btnPlus btn-space left" id="btn" onClick="addPet();"><i class="fa-solid fa-plus"></i></button>';
	tmp += '<button type="button" class="btn btnMinus left" id="btn" onClick="remove(petDelete' + count_pet + ')"><i class="fa-solid fa-minus"></i></button>';
	tmp += '</div>';
	tmp += '<br>'	
	
	
	count_pet += 1; 
	
	$("#petPoint").append(tmp);
	
	}
	
	function remove(id) {
		
		$(id).remove();
	}

	var form = $("form[name=formReg]");
	
	var goUrlJoin = "/member/allInst";
	
	$("#btnSave").on("click", function(){
   		form.attr("action", goUrlJoin).submit();
	}); 
	 
	$("#addrButton").on("click", function(){
		openZipSearch();
	});
	
	$("#clearButton").on("click", function(){
		$("#ifmmZipcode").val('');
		$("#ifmmAddr1").val('');
		$("#ifmmAddr2").val('');
		$("#ifmmAddr3").val('');
	});


	function openZipSearch() {
	    new daum.Postcode({
	          oncomplete: function(data) {
        	    var addr = '';
	  		    var extraAddr = '';

				if (data.userSelectedType === 'R') { 
	                  addr = data.roadAddress;
	              } else { 
	                  addr = data.jibunAddress;
	              }

	              if(data.userSelectedType === 'R'){
	                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                      extraAddr += data.bname;
	                  }
	                  if(data.buildingName !== '' && data.apartment === 'Y'){
	                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                  }
	                  if(extraAddr !== ''){
	                      extraAddr = ' (' + extraAddr + ')';
	                  }
	                  document.getElementById("ifmmAddr3").value = extraAddr;
	              
	              } else {
	                  document.getElementById("ifmmAddr3").value = '';
	              }

	              document.getElementById('ifmmZipcode').value = data.zonecode;
	              document.getElementById("ifmmAddr1").value = addr;
	              document.getElementById("ifmmAddr2").focus();
	              
				}
	    
	    }).open();
	}
	 
	//비밀번호 일치 체크
	$('#pwCheck').focusout(function () {
        var pwd1 = $("#pw").val();
        var pwd2 = $("#pwCheck").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
	
	//아이디 중복 체크
	 $("#ifmmID").on("focusout", function(){
 		$.ajax({
 			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/idCheck"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmID" : $("#ifmmID").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("ifmmID").classList.add('is-valid');

					document.getElementById("ifmmIDFeedback").classList.remove('invalid-feedback');
					document.getElementById("ifmmIDFeedback").classList.add('valid-feedback');
					document.getElementById("ifmmIDFeedback").innerText = "사용 가능한 아이디입니다.";
					
					document.getElementById("ifmmIDAllowNY").value = 1;
				} else {
					document.getElementById("ifmmID").classList.add('is-invalid');
					
					document.getElementById("ifmmIDFeedback").classList.remove('valid-feedback');
					document.getElementById("ifmmIDFeedback").classList.add('invalid-feedback');
					document.getElementById("ifmmIDFeedback").innerText = "이미 사용중인 아이디입니다.";
					
					document.getElementById("ifmmIDAllowNY").value = 0;
				}
			}
		});
 	});
	 	 
	
	//닉네임 중복 체크
	 $("#nickname").on("focusout", function(){
			$.ajax({
				async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/nickCheck"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmNickname" : $("#nickname").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("nickname").classList.add('is-valid');
		
					document.getElementById("nicknameFeedback").classList.remove('invalid-feedback');
					document.getElementById("nicknameFeedback").classList.add('valid-feedback');
					document.getElementById("nicknameFeedback").innerText = "사용 가능한 닉네임입니다.";
					
					document.getElementById("nicknameAllowNY").value = 1;
					
				} else {
					document.getElementById("nickname").classList.add('is-invalid');
					
					document.getElementById("nicknameFeedback").classList.remove('valid-feedback');
					document.getElementById("nicknameFeedback").classList.add('invalid-feedback');
					document.getElementById("nicknameFeedback").innerText = "이미 사용중인 닉네임입니다.";
					
					document.getElementById("nicknameAllowNY").value = 0;
				}
		
			}
		});
	});
	 	 
	//이미지 미리보기
    $("#userfile").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#userImage").attr("src", img);
	});
	
    $("#petfile").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#petImage").attr("src", img);
	});
</script> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>