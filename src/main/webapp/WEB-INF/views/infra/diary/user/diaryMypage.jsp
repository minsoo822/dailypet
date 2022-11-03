<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>ì¡ììì²© ë§ì´í¼ë</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<style type="text/css">

	.navbar-fixed-top {
		background-color: black;
	}
	
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

</style>

<body>
    <div class="header navbar-fixed-top header-collapse">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="../index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation"><div id="menu-button">Menu</div>
		                    <ul>
		                        <li class="active"><a href="index.html" title="Home">í</a></li>
		                        <li class="has-sub"><span class="submenu-button"></span><a href="service-list.html" title="Service List">ì ê¸°ëë¬¼ ì°¾ê¸°</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">ì ê¸°ëë¬¼ ì°¾ê¸°</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">ì êµ­ ì ê¸°ëë¬¼</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><span class="submenu-button"></span><a href="../searchingPlace.html" title="Portfolio">ë´ ì£¼ë³ í¸ììì¤</a>
		                            <ul>
		                                <li><a href="../searchingPlace.html" title="Projects">í¸ììì¤ ì°¾ê¸°</a></li>
		                                <li><a href="../reservationForm.html" title="Projects Detail">ë´ ìì½ ì ë³´</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">ë°ë ¤ëë¬¼ ì¼ê¸°</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><span class="submenu-button"></span><a href="../diaryList.html" title="Portfolio">ì¡ììì²©</a>
	<!-- 						ë©ë´êµ¬íx ì¼ë¨ ë§í¬ë§ ìì±						
								<li><a href="../diaryMypage.html" title="Contact Us">ì¡ììì²©</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">ì¼ê¸° ìì¸</a></li>
								<li><a href="../diaryForm.html" title="Projects">ì¼ê¸° ì°ê¸°</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">í¼ë§</a> </li> -->
	                            </li><li><a href="error.html" title="Error">ë¡ê·¸ì¸</a> </li>
	                            <li><a href="error.html" title="Error">íìê°ì</a> </li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <!-- /.page header -->
    <div class="diaryheader">
		<nav class="icon">
			<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
			<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
			<span><div class="profileheader"><a href="diaryMypage.html"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></a></div></span>
		</nav>
	</div>
    <div class="content">
    	<div class="container2">
    		<div class="row">
    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
    			</div>
    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    				<div class="profile mb10">
    					<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
    				</div>
    			</div>
    			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-10">
    				<div class="row">
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    					</div>
    					<div class="col-lg-4 col-md-4 col-sm-4">
    						<h2>jennierubyjerry</h2>
    					</div>
    					<div class="col-lg-4 col-md-4 col-sm-4">
    						<button type="button" id="followbtn">íë¡ì°</button>
    					</div>
    				</div>
    				<br>
    				<div class="row">
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    					</div>
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    						<h4>ê²ìë¬¼ <b>0</b></h4>
    					</div>
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    						<h4>íë¡ì <b>0</b></h4>
    					</div>
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    						<h4>íë¡ì <b>0</b></h4>
    					</div>
    				</div>
    				<div class="row" style="margin-top: 10px">
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    					</div>
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    						<h4><b>ê¹ì ë</b></h4>
    					</div>
    				</div>
    				<div class="row" style="margin-top: 10px">
    					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
    					</div>
    					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
    						<h4>íì ë¦¬ : ìëíì¸ì©</h4>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
    			</div>
    		</div>
    		<br>
    		<hr style="border: 1px solid lightgray; width: 1150px">
    	</div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/IMG_0308.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/IMG_0309.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img imghover mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/IMG_6216.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                       <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-4.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img  mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-5.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-6.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                      <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-7.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-8.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="project-img  mb30">
                        <a href="diaryDetail.html" class="imghover"><img src="/resources/images/project-pic-9.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="st-pagination">
                    <ul class="pagination">
                        <li><a href="#">Previous</a></li>
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
</body>

</html>
