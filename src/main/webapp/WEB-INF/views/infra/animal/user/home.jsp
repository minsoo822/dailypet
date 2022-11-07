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
    <title>#Daily Pet</title>
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
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js "></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js "></script>
<![endif]-->


    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>   
    
    <style type="text/css">
    .header-collapse{
    	color: #f7ca35;
    	background-color:#f7ca35;
    }
    
    .mid{
    	margin-left: 8rem;
    }
    
    h2 { 
    	font-size: 24px; 
    	line-height: 32px; 
    	margin: 0; 
    	padding: 0; 
    	margin-bottom: 10px; 
    	color: #383433; 
    	font-weight: 400; 
    	text-transform: uppercase; 
    	font-family: 'Raleway', sans-serif; 
    	-webkit-font-smoothing: antialiased; 
    	text-rendering: optimizeLegibility;
    }
    
    a { 
    	color: #aa9144; 
    	text-decoration: none; 
    	-webkit-transition: all 0.3s; 
    	-moz-transition: all 0.3s; 
    	transition: all 0.3s; 
    }
    
    a:focus, a:hover { 
    	text-decoration: none; 
    	color: #e7a625; 
    }
    
    p { 
    	margin: 0 0 20px; 
    }

	p:last-child { 
		margin-bottom: 0px; 
	}
	
	body { 
		font-size: 16px; 
		background-color: #fff; 
		color: #464241; 
		font-family: 'Raleway', sans-serif; 
		line-height: 28px; 
		font-weight: 300; 
	}
	
	.btn-default { 
		color: #fff; 
		background-color: #372d2b; 
	}
	
	.btn { 
		display: inline-block; 
		padding: 14px 30px; 
		margin-bottom: 0; 
		font-size: 13px; 
		font-weight: 800; 
		letter-spacing: 1px; 
		line-height: 1.42857143; 
		text-align: center; 
		border: none; 
		text-transform: uppercase; 
		border-radius: 40px; 
		font-family: 'Raleway', sans-serif; 
		-webkit-font-smoothing: antialiased; 
		text-rendering: optimizeLegibility; 
	}
	
    </style>
</head>

<body>
	<form method="post" id="mainForm">
	<input type="hidden" name="ifmmSeq" value="${ sessSeq}">
    <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="../index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="/animal/home" title="Home">홈</a></li>
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
					          		<ul>
					          			<li><a href="javascript:goDiaryForm(${sessSeq })" title="Projects">일기 쓰기</a></li>
					          		</ul>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
								
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
                            	<c:if test="${sessSeq eq null}">
					        		<!-- 로그인전 -->
					        		<li><a href="/member/login" title="로그인">로그인</a></li>
			        				<li><a href="/member/regForm1" type" title="회원가입">회원가입</a></li>
					        	</c:if>
						        <c:if test="${sessSeq ne null}">
					        		<li><a href="#" type="button"><c:out value="${sessId }"/>님, 반갑습니다</a></li>
									<li><a href="/member/logoutProc" title="로그아웃" type="button" id="btnLogout">로그아웃</a></li>
					            </c:if>
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
    
    <img src="/resources/images/xdmin/cat.jpg">
    
    <div class="container">
    <br>
    <br>
		<div class="row mid">
             <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                 <a href="#scroll_move1">
			<div class="outline pinside30 text-center mb30">
			    <div class="mb30"> <img src="/resources/images/creative-ideas.png" class="" alt="Interior Design Website Templates Free Download"> </div>
			    <div class="">
			        <h2>유기동물 찾기</h2>
			        <p>소중한 두번째 가족을 찾고 계신가요?</p>
			    </div>
			</div>
                 </a>
             </div>
             <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                 <a href="#scroll_move2">
                  <div class="outline pinside30 text-center mb30">
                      <div class="mb30"> <img src="/resources/images/creative-ideas.png" class="" alt="Interior Design Website Templates Free Download"> </div>
                      <div class="">
                          <h2>내 주변 편의시설</h2>
                          <p>내 주변에 있는 편의시설을 검색해보세요.</p>
                      </div>
                  </div>
                 </a>
             </div>
             <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                 <a href="#scroll_move4">
                  <div class="outline pinside30 text-center mb30">
                      <div class="mb30"> <img src="/resources/images/creative-ideas.png" class="" alt="Interior Design Website Templates Free Download"> </div>
                      <div class="">
                          <h2>육아수첩</h2>
                          <p>매일 달라지는 반려동물의 모습을 담아보세요.</p>
                      </div>
                  </div>
                 </a>
             </div>
         </div>
     </div>
    <div class="space-medium">
        <div class="container">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="mb60 text-center section-title">
                        <!-- section title start-->
                        <h1>유기동물찾기</h1>
                    </div>
                    <!-- /.section title start-->
                </div>
            </div>
            <div class="row" id="#scroll_move1">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="project-img mb30">
                        <a href="../service-detail.html" class="imghover"><img src="/resources/images/xdmin/lonelydog.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                    <div class="testimonial-block bg-light pinside30">
                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
                        <div class="testimonial-content">
                            <p>설명</p>
                            <div class="testimonial-info"> <span class="testimonial-name">- Ruby Burns</span> <span class="testimonial-meta">Market research analyst</span> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="../service-detail.html" class="btn btn-default">바로가기</a></div>
            </div>
        </div>
    </div>
    <div class="space-medium bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="section-title mb60 text-center">
                        <!-- section title start-->
                        <h1>내 주변 편의시설</h1>
                    </div>
                    <!-- /.section title start-->
                </div>
            </div>
            <div class="row" id="#scroll_move2">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                    <div class="testimonial-block bg-white pinside30">
                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
                        <div class="testimonial-content">
                            <p>ff and pupils. Both projects have been well managed, within budget and worth every penny of our investment.We greatly look forward to working with him and his team again in the future.”</p>
                            <div class="testimonial-info"> <span class="testimonial-name">- Ruby Burns</span> <span class="testimonial-meta">Market research analyst</span> </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="project-img mb30">
                        <a href="../service-detail.html" class="imghover"><img src="/resources/images/xdmin/walk.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="service-detail.html" class="btn btn-default">바로가기</a></div>
            </div>
        </div>
    </div>
    <div class="space-medium">
        <div class="container">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="section-title mb40 text-center">
                        <!-- section title start-->
                        <h1>육아수첩</h1>
                    </div>
                    <!-- /.section title start-->
                </div>
            </div>
            <div class="row" id="#scroll_move4">
            	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="project-img mb30">
                        <a href="../service-detail.html" class="imghover"><img src="/resources/images/xdmin/diary.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                    <div class="testimonial-block bg-light pinside30">
                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
                        <div class="testimonial-content">
                            <p>ff and pupils. Both projects have been well managed, within budget and worth every penny of our investment.We greatly look forward to working with him and his team again in the future.”</p>
                            <div class="testimonial-info"> <span class="testimonial-name">- Ruby Burns</span> <span class="testimonial-meta">Market research analyst</span> </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="service-detail.html" class="btn btn-default">바로가기</a></div>
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
    <!-- /.footer-->
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
    </form>
<!-- /.tiny footer block -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/js/bootstrap.min.js"></script>
  <script src="/resources/js/menumaker.js"></script>
  <script src="/resources/js/navigation.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('a').click(function (){
            $('html, body').animate({scrollTop: $(this.hash).offset.top}, 300);
        });
    });
    
    $("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/login";
				} else {
					alert("다시 시도해주세요.")
				}
			}
		});
	});
    
    
    var seq = $("input:hidden[name=ifmmSeq]");
    var form = $("#mainForm");
    
    goDiaryForm = function(key) {
    	seq.attr("value", key);
    	form.attr("action", "/diary/DiaryForm").submit();
    }
</script>
    
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
