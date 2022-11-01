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
    <title>ì ê¸°ëë¬¼ ê²ì</title>
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
    } */
    .imgsize {
    	width: 258px;
    	height: 218px;
    	max-width: 100%;
    	max-height: 100%;
    }
    .Search {
    	margin-top: 50px; 
    	display: flex; 
    	justify-content: end;
    }
    .Reserbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .Reserbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .contents {
    	margin-bottom: 30px;
    	color: red;
    	font-size: 10pt;
    	font-weight: bold;
    	width: 50%;
    	text-align: center;
    }
    /* inputfile ì»¤ì¤í s */
    .filebox {
    	text-align: center;
    }
    .filebox .upload-name {
	    display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	    border: 1px solid #dddddd;
	    width: 70%;
	    color: #999999;
	}
    .filebox label {
	    display: inline-block;
	    padding: 10px 10px;
	    vertical-align: middle;
	    background: #f3f0eb;
    	color: #372d2b;
	    width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
	    margin-left: 10px;
	}
	.filebox label:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	/* inputfile ì»¤ì¤í e */
	/* ì´ë¯¸ì§ íë¦¬ë·° s */
	.preview {
		margin-bottom: 50px;
	}
    .imgs_wrap {
		background: gray;
		height: 200px
	}
	.imgs_wrap img {
		height: 180px;
		width: 180px;
		max-width: 100%;
		max-height: 100%;
		padding: 20px 0px 0px 40px;
	}
    /* ì´ë¯¸ì§ íë¦¬ë·° e */
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
    <div class="container">
	    <div class="row Search">
		    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
		    	<div class="filebox">
				    <input type="text" class="upload-name" value="ì²¨ë¶íì¼" placeholder="ì²¨ë¶íì¼">
				    <label for="input_imgs"><i class="fa-solid fa-magnifying-glass"></i></label> 
    				<button class="Reserbtn" id="reset"><i class="fa-solid fa-rotate-left"></i></button>
				    <input type="file" id="input_imgs" multiple />
				</div>
	    	</div>
	    </div>
	    <div class="row contents">
		    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			   <span>ë³´ë¤ ì íí ê²°ê³¼ë¥¼ ìí´ ì ëªí ì¬ì§ì¼ë¡ ì¬ë ¤ì£¼ì¸ì.</span>
	    	</div>
	    </div>
	    <div class="row preview">
		    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	    		<div class="imgs_wrap">
					<!-- <img> -->
				</div>
	    	</div>
	    </div>
	    <div class="row">
		    <div class="col">
			   	<ul class="nav nav-tabs">
				  <li class="nav-item">
				    <a class="nav-link active" aria-current="page" href="#">ì êµ­</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ìì¸</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ê²½ê¸°</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì¸ì²</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ë¶ì°</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ëêµ¬</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ëì </a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì ë¨</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ê²½ë¨</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì¶©ë¨</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ê´ì£¼</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì¸ì°</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ê²½ë¶</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì ë¶</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì¶©ë¶</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ê°ì</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì ì£¼</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">ì¸ì¢</a>
				</ul>
			</div>
		</div>
    </div>
    <!-- /.page header -->
    <div class="content" style="padding-top: 50px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="findpetView.html" class="imghover"><img class="imgsize" src="../images/findpet/zz.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/coco.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/dog2.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img imghover mb30">
                        <a href="service-detail.html"><img class="imgsize" src="../images/findpet/fox.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/galina-bugorra.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/gogog.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/hiena.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img imghover mb30">
                        <a href="service-detail.html"><img class="imgsize" src="../images/findpet/miAcat.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/mm.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/siba.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img mb30">
                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="../images/findpet/sudal.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <div class="project-img imghover mb30">
                        <a href="service-detail.html"><img class="imgsize" src="../images/findpet/taiger.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
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
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/menumaker.js"></script>
    <script src="../js/navigation.js" type="text/javascript"></script>
    
    <script type="text/javascript">

    $("#file").on('change',function(){
    	  var fileName = $("#file").val();
    	  $(".upload-name").val(fileName);
    	});
    
    var sel_files = [];

    $(document).ready(function() {
        $("#input_imgs").on("change", handleImgsFilesSelect);
    }); 

    function handleImgsFilesSelect(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function(f) {
            if(!f.type.match("image.*")) {
                alert("íì¥ìë ì´ë¯¸ì§ íì¥ìë§ ê°ë¥í©ëë¤.");
                return;
            }

            sel_files.push(f);

            var reader = new FileReader();
            reader.onload = function(e) {
                var img_html = "<img src=\"" + e.target.result + "\" />";
                $(".imgs_wrap").append(img_html);
            }
            reader.readAsDataURL(f);
        });
    }
    
    $("#input_imgs").on('change',function(){
    	  var fileName = $("#input_imgs").val();
    	  $(".upload-name").val(fileName);
    	});
    
    </script>
    
    
    
</body>

</html>
