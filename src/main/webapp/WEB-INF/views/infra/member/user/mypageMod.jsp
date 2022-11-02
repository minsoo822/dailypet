<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>ë§ì´íì´ì§ ìì </title>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="../css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
   	/* div {
    	border: 1px solid orange;
    }  */
    .otherbtn{
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 90px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: auto;
    	margin-right: auto;
    }
    .Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 50px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: auto;
    	margin-right: auto;
   	}
   	.Searchbtn:hover , .otherbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .post-img  {
    	background: gray;
    	width: 220px;
    	height: 250px;
    	max-width: 100%;
    	max-height: 100%;
    }
    .petImg {
    	max-width: 100%;
    	max-height: 100%;
    }
    .text {
    	padding-top: 10px;
    	padding-left: 15px;
    }
    .form-control {
    	color: #000;
    }
    .myPage {
    	margin-bottom: 30px;
    	font-weight: bold;
    }
    .post-block {
    	margin-bottom: 5px;
    }
    </style>
</head>

<body>
    <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="index.html"><img src="../images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="index.html" title="Home">í</a></li>
		                        <li class="has-sub"><a href="service-list.html" title="Service List">ì ê¸°ëë¬¼ ì°¾ê¸°</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">ì ê¸°ëë¬¼ ì°¾ê¸°</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">ì êµ­ ì ê¸°ëë¬¼</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><a href="../searchingPlace.html" title="Portfolio">ë´ ì£¼ë³ í¸ììì¤</a>
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
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">ë´ ì£¼ë³ í¸ììì¤</a>
	<!-- 						ë©ë´êµ¬íx ì¼ë¨ ë§í¬ë§ ìì±						
								<li><a href="../diaryMypage.html" title="Contact Us">ì¡ììì²©</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">ì¼ê¸° ìì¸</a></li>
								<li><a href="../diaryForm.html" title="Projects">ì¼ê¸° ì°ê¸°</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">í¼ë§</a> </li> -->
	                            <li><a href="error.html" title="Error">ë¡ê·¸ì¸</a> </li>
	                            <li><a href="error.html" title="Error">íìê°ì</a> </li>
	                        </ul>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <div class="page-header">
        <!-- page header -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                        <!-- <h2 class="page-title">Our projects</h2>
                        <p>Nullam tincidunt quis ligula vitae sollicitudin. Phasellus ut leo ut
                            <br> purus interdum dapibus quis at arcu scelerisque maximus.</p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row">
            	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="widget widget-categories" style="text-align: right; background: #fff;">
                        <!-- widget categories -->
                        <!-- widget start -->
                        <h3 class="widget-title myPage"> ë§ì´íì´ì§ </h3>
                        <ul class="listnone">
                            <li><a href="#">ë¹ë°ë²í¸ ë³ê²½ </a></li>
                            <li><a href="#">íìíí´</a></li>
                        </ul>
                    </div>
                    <!-- /.widget categories -->
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="post-block">
                                <!-- post block -->
                                <div class="post-img">
                                    <img src="" class="petImg" id="imageM">
                                </div>
                                <!-- /.post block -->
                            </div>
                            <div>
                            	<input type="file" id="fileM" class="form-control" style="width: 220px; height: 30px;">
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì´ë¦</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ìì´ë</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ëë¤ì</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">í´ëí°</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì°ë½ì²</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control">
								</div>                            	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì´ë©ì¼</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control">
								</div>                            	
                            </div>
                            <div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text text">ìíì¥ì</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 ge-1" style="padding-right: 0px;">
									<input type="text" class="form-control" placeholder="ì°í¸ë²í¸">
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">
									<button type="button" class="Searchbtn"><i class="fa-solid fa-magnifying-glass"></i></button>
								</div>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12" style="margin-left: 10px;">
									<button type="button" class="Searchbtn"><i class="fa-solid fa-rotate-left"></i></button>
								</div>
							</div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">&nbsp;</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control" placeholder="ëë¡ëªì£¼ì">
								</div>                            	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">&nbsp;</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control" placeholder="ìì¸ì£¼ì">
								</div>                            	
                            </div>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="post-block">
                                <!-- post block -->
                                <div class="post-img">
                                    <img src="" class="petImg" id="imageP">
                                </div>
                                <!-- /.post block -->
                            </div>
                            <div>
                            	<input type="file" id="fileP" class="form-control" style="width: 220px; height: 30px;">
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì§ì¬ì´ë¦</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì±ë³</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì´ë¦</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ëì´</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì¹©</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<select class="form-control">
										<option></option>
										<option></option>
									</select>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">ì ì¢</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<select class="form-control">
										<option></option>
										<option></option>
									</select>
								</div>                      	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">íì¢</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control">
								</div>                            	
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            	<div class="col" style="display: flex; justify-content: flex-end; margin-right: 20px;">
            		<div class="btn-group">
            		<button type="button" class="otherbtn">ëª©ë¡ì¼ë¡</button>
            		<button type="button" class="otherbtn">ì ì¥íê¸°</button>
            		</div>
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
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/menumaker.js"></script>
    <script src="../js/navigation.js" type="text/javascript"></script>
    <script type="text/javascript">
    
	//ì£¼ì¸ì´ë¯¸ì§ ë¯¸ë¦¬ë³´ê¸°
    $("#fileM").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#imageM").attr("src", img);
	});
  	//ë°ë ¤ëë¬¼ ì´ë¯¸ì§ ë¯¸ë¦¬ë³´ê¸°
    $("#fileP").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#imageP").attr("src", img);
	});
    
    
    
    </script>
    
    
    
</body>

</html>