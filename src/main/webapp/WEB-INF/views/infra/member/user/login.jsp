<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>로그인</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
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
			font-size: 25px;
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
		
    </style>
</head>

<body>
   <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="/animal/home"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="index.html" title="Home">홈</a></li>
		                        <li class="has-sub"><a href="service-list.html" title="Service List">유기동물 찾기</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">유기동물 찾기</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">전국 유기동물</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><a href="../searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
		                            <ul>
		                                <li><a href="../searchingPlace.html" title="Projects">편의시설 찾기</a></li>
		                                <li><a href="../reservationForm.html" title="Projects Detail">내 예약 정보</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">반려동물 일기</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">육아수첩</a>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
								<li><a href="../diaryForm.html" title="Projects">일기 쓰기</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
	                            <li><a href="error.html" title="Error">로그인</a> </li>
	                            <li><a href="error.html" title="Error">회원가입</a> </li>
	                        </ul>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <div class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                    <!-- <h1 class="hero-title"><strong>Interior-exterior</strong><br>
          Free Webstite template</h1>
                    <a href="#" class="btn btn-white">REad more <i class="fa fa-plus"></i></a>  -->&nbsp;</div>
            </div>
        </div>
    </div>
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
                                                <input type="text" class="form-control" id="ifmmID" name="ifmmID" placeholder="아이디 입력" value="admnin12">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-11"> 
                                        <div class="form-group has-feedback">
                                            <label class="control-label" for="pw">Password</label>
                                            <div class="input-group"> <span class="input-group-addon"><div class="top"><i class="fa-solid fa-lock"></i></div></span>
                                                <input type="password" class="form-control" id="ifmmPW" name="ifmmPW" placeholder="비밀번호 입력 (8~12자 영문자 + 숫자 + 특수문자)" value="1234">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check form-switch left1">
									  	<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked">
									  	<label class="form-check-label" for="flexSwitchCheckChecked">&nbsp;자동로그인</label>
									</div>
									<div class="col-md-11">
										<span class="right">비밀번호 찾기</span> 
										<span class="right">|</span>
										<span class="right">아이디 찾기</span>
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
									  <button class="btn btn-warning right" type="button"><i class="fa-solid fa-comments"></i> Kakao로 시작하기</button>
									</div>
									<div class="d-grid gap-2 btn-sm">
									  <button class="btn btn-success right" type="button"><i class="fa-brands fa-neos"></i> Naver로 시작하기</button>
									</div>
									<div class="d-grid gap-2 btn-sm">
									  <button class="btn btn-danger right" type="button"><i class="fa-brands fa-google"></i> Google로 시작하기</button>
									</div>
									<div class="d-grid gap-2 btn-sm">
										<button class="btn btn-primary right" type="button"><i class="fa-brands fa-facebook"></i> Facebook으로 시작하기</button>
										<br>
										<br>
									</div>
                                </div>
                               	<span class="mem">아직 회원이 아니신가요?</span>
		                       	<span class="reg">회원가입</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 top2">
                    <div class="contact-pic mb30"> <img src="/resources/images/headerLogo.png" class="img-responsive" alt=""> </div>
                    <div class="contact-info">
                        <h2>#Daily Pet</h2>
                        <address>
                            서울특별시 서초구 서초대로77길 55 
                            <br> 에이프로스퀘어 3층
                        </address>
                        <address>
                            <span class="text-caps">studio:</span> <strong>02-0000-0000</strong>
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
    <div class="footer">
        <!-- footer-->
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-widget">
                        <h3 class="widget-title">About us</h3>
                        <p>Phasellus hendrerit mauris vitae odio suscip pimus donec consequat cursus viverra varius natoque penatibus magnis dis parturient.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-widget">
                        <!-- social block -->
                        <h3 class="widget-title">Our Address</h3>
                        <p>1309 Roosevelt Wilson Lane
                            <br> Colton, CA 92324</p>
                    </div>
                    <!-- /.social block -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="footer-widget">
                        <!-- newsletter block -->
                        <h3 class="widget-title">e-mail Us</h3>
                        <p>info@yourwebsitedomain.com</p>
                    </div>
                    <!-- newsletter block -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="footer-widget">
                        <!-- newsletter block -->
                        <h3 class="widget-title">Call us</h3>
                        <p>180-874-5234</p>
                        <p>180-752-3957</p>
                    </div>
                    <!-- newsletter block -->
                </div>
            </div>
        </div>
    </div>
    <div class="tiny-footer">
        <!-- tiny footer block -->
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                    <div class="copyright-content">
                      Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="footer-social">
                        <ul class="listnone">
                            <li> <a href="#"><i class="fa fa-facebook-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-twitter-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-google-plus-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-youtube-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-pinterest-square"></i></a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.footer-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
    
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
    
    
    <script src="https://kit.fontawesome.com/d843c66cc1.js" crossorigin="anonymous"></script>
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>

</html>
