<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html lang="ko">

<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <!-- 카카오 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   
    <title>로그인</title>
    
    <style type="text/css">
    	h1{
			font-weight: bold;
		}
		
	    .input-group-addon, .input-group-btn {
		    width: 10%;
		    white-space: nowrap;
		    vertical-align: middle;
		}
		
		.top{
	    	margin-top: 10px;
	    }
	    
	    .form-control{
			font-size: 12px;
		}
    
	    .btn-default { 
			color: #fff; 
			background-color: #372d2b; 
		}
		
		.btn { 
			display: inline-block; 
			padding: 14px 20px; 
			margin-bottom: 0; 
			font-size: 14px; 
			font-weight: 800; 
			letter-spacing: 1px; 
			line-height: 1.42857143; 
			text-align: center; 
			border: none; 
			text-transform: uppercase; 
			border-radius: 8px; 
			font-family: 'Raleway', sans-serif; 
			-webkit-font-smoothing: antialiased; 
			width: 493px;
			text-rendering: optimizeLegibility; 
		}
		
		address{
			font-size: 14px;    
			font-family: 'NanumSquareNeo-Variable';
		}
		
		strong{
			font-size: 14px;
	   		color: #464241;
		}
	
		.text-caps {
		    font-size: 14px;
   			font-family: 'NanumSquareNeo-Variable';
		}
		
		.text{
			font-size: 20px;
		}
		
		.mid{
			text-align: center;
		}
		
		.left{
			margin-left: 20px;
		}
		
		.left1{
			margin-left: 8px;
		}
		
		.pinside30{
			width: 600px;
		}
		
		.form-switch .form-check-input {
	    	width: 25px;
	    	height: 15px;
	    }
	    
	    .form-check-label{
			font-size: 14px;
		}
		
		.form-check-input:checked {
		    background-color: #000;
		}
		
		.right{
			float: right;
			font-size: 12px;
		}
		
		hr{
			color: #565656 !important;
			width: 500px !important;
		}
    
    	.right{
    		margin-right: 10px;
    	}
    	
    	.mem{
			font-size: 13px;
		}
		
		.reg{
			font-size: 13px;
			margin-left: 5px;
			color: blue;
			text-decoration: underline;
		}	
		
		.content{
			margin-left: 200px;
		}
		
		.size{
			width: 350px;
			height: 380px;
		}
		
		.btnBlue{
			background-color: #0D6EFD;
			color: white;
		}
    </style>
    
</head>

<body>
	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
	<div class="totalContent">
	    <div class="content">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	                    <div class="bg-light pinside30">
	                        <div class="row">
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 left">
	                                <h1>LOGIN</h1>
	                                <br>
	                                <div class="row">
	                                    <div class="col-md-11">
	                                        <div class="form-group has-feedback">
	                                            <label class="control-label" for="id">ID</label>
	                                            <div class="input-group"> <span class="input-group-addon"><div class="top"><i class="fa fa-user"></i></div></span>
	                                                <input type="text" class="form-control" id="ifmmID" name="ifmmID" placeholder="아이디 입력" value="iu">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-11"> 
	                                        <div class="form-group has-feedback">
	                                            <label class="control-label" for="pw">Password</label>
	                                            <div class="input-group"> <span class="input-group-addon"><div class="top"><i class="fa-solid fa-lock"></i></div></span>
	                                                <input type="password" class="form-control" id="ifmmPW" name="ifmmPW" placeholder="비밀번호 입력 (8~12자 영문자 + 숫자 + 특수문자)" value="123">
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="form-check form-switch left1">
										  	<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked">
										  	<label class="form-check-label" for="flexSwitchCheckChecked">&nbsp;자동로그인</label>
										</div>
										<div class="col-md-11">
											<a href="#" style="color: #000" id="findpw"><span class="right">비밀번호 찾기</span></a> 
											<span class="right">|</span>
											<a href="/member/findID" style="color: #000" id=""><span class="right">아이디 찾기</span></a>
											<br>
											<br>
											<br> 
										</div>
	                                    <div class="col-md-12">
	                                        <div class="form-group">
	                                            <button type="button" id="btnLogin" name="singlebutton" class="btn btn-default">로그인</button>
	                                        	<br>
	                                   			<br>
	                                        </div>
	                                    </div>
	                                    <hr class="hr">
	                                    <br>
										<div class="d-grid gap-2 btn-sm">
										  <button class="btn btn-warning right" type="button" id="kakaoLogin"><i class="fa-solid fa-comments"></i> Kakao로 시작하기</button>
										</div>
										<div class="d-grid gap-2 btn-sm">
										  <button class="btn btn-danger right" type="button"><i class="fa-brands fa-google"></i> Google로 시작하기</button>
										</div>
										<!-- <div class="d-grid gap-2 btn-sm">
										  <button class="btn btn-success right" type="button"><i class="fa-brands fa-neos"></i> Naver로 시작하기</button>
										</div>
										<div class="d-grid gap-2 btn-sm">
											<button class="btn btnBlue right" type="button"><i class="fa-brands fa-facebook"></i> Facebook으로 시작하기</button>
											<br>
											<br> -->
										</div>
	                                </div>
	                               	<span class="mem">아직 회원이 아니신가요?</span>
			                       	<span class="reg"><a href="/member/regForm1">회원가입</a></span>
	                            </div>
	                        </div>
	                    </div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 top2">
						    <div class="contact-pic mb30"><img src="/resources/images/headerLogo.png" class="img-responsive size" alt=""> </div>
						    <div class="contact-info">
						        <h2>#Daily Pet</h2>
						        <address>
						            서울특별시 서초구 서초대로77길 55 
						            <br> 에이프로스퀘어 3층
						        </address>
						        <address>
						            <span class="text-caps">studio:</span> <strong>02-000-0000</strong>
						            <br>
						            <span class="text-caps">Mobile:</span> <strong>02-0000-0000</strong>
						        </address>
						        <address>
						            <span class="text-caps">e-mail:</span> <strong>ezen@itAcademy.com</strong>
						        </address>
						    </div>
						    <!-- /.widget search -->
						</div>
	                 </div>
	            </div>
	        </div>
       </div>
       
    <form name="form">
    	<input type="hidden" name="snsID"/>
    	<input type="hidden" name="ifmmName"/>
    	<input type="hidden" name="ifmmTel"/>
    	<input type="hidden" name="ifmmEmail"/>
    	<input type="hidden" name="snsImg"/>
    	<input type="hidden" name="token"/>
    </form> 

	<%@include file="../../../common/xdmin/include/footer.jsp"%>
	<%@include file="../../../common/xdmin/include/footScript.jsp"%>
    
    <script type="text/javascript">
		$("#btnLogin").on("click", function(){
			/* if(validation() == false) return false; */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "ifmmID" : $("#ifmmID").val(), "ifmmPW" : $("#ifmmPW").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/animal/home";     
					} else if($("#ifmmID").val() == "" || $("#ifmmPW").val() == "") {
						alert("아이디와 비밀번호를 입력해주세요.");
					} else{
						alert("아이디 또는 비밀번호를 잘못 입력했습니다. 다시 입력해주세요.");
					}
				}
			});
		});
	</script>
	
	<!-- 카카오로그인 -->
	<script type="text/javascript">
	
		Kakao.init('b2c3303d6ae0328f82f572d94aa8946b'); 
		console.log(Kakao.isInitialized());
		
		$("#kakaoLogin").on("click", function() {
			
			Kakao.Auth.login({
			      success: function (response) {
			        Kakao.API.request({
			          url: '/v2/user/me',
			          success: function (response) {
			        	  
			        	  var accessToken = Kakao.Auth.getAccessToken();
			        	  Kakao.Auth.setAccessToken(accessToken);
	
			        	  var account = response.kakao_account;
			        	  
			        	  console.log(response)
	   		        	  console.log("email : " + account.email);
	   		        	  console.log("name : " + account.name);
	   		        	  console.log("nickname : " + account.profile.nickname);
	   		        	  console.log("picture : " + account.profile.thumbnail_image_url);
		        	  
			        	  $("input[name=snsID]").val("카카오");
		  	        	  $("input[name=ifmmName]").val(account.profile.nickname);
		  	        	  $("input[name=ifmmTel]").val(account.profile.phone_number);
		  	        	  $("input[name=ifmmEmail]").val(account.email);
		  	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
		  	        	  $("input[name=token]").val(accessToken);
	  	        	  
		  	        	  $.ajax({
							async: true
							,cache: false
							,type:"POST"
							,url: "/member/kakaoLoginProc"
							,data: { 
									"name": $("input[name=ifmmName]").val(), 
									"phone": $("input[name=ifmmTel]").val(), 
									"email": $("input[name=ifmmEmail]").val(), 
									"snsImg": $("input[name=snsImg]").val(), 
									"token": $("input[name=token]").val()
									}
							,success : function(response) {
								if (response.rt == "fail") {
									alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
									return false;
								} else {
									window.location.href = "/animal/home";
								}
							},
							error : function(jqXHR, status, error) {
								alert("알 수 없는 에러 [ " + error + " ]");
							}
						});
			          },
			          fail: function (error) {
			            console.log(error)
			          },
			        })
			      },
			      fail: function (error) {
			        console.log(error)
			      },
			 })
		});
		
	</script>
		
	<script type="text/javascript">
	
		$("#findpw").on("click", function(){
	   		alert("준비 중입니다.");
	   		return false;
		});
		
		$("#findid").on("click", function(){
	   		alert("준비 중입니다.");
	   		return false;
		});
	
	</script>
    
</body>
</html>