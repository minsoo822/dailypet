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
    <title>ì ê¸°ëë¬¼ ë±ë¡</title>
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
	.form-control {
		color: black;
	}
	.petImg {
		background: #f3f0eb;
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
    .form-control {
    	color: #000;
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                        <!-- <h1 class="page-title">News Single</h1>
                        <p> Maecenas ac nulla non urna ullamcorper iaculis necauris
                            <br> maximus libero non magna faucibus congue. </p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
			<div class="row mb-5">
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
					<div class="row">
						<div class="col">
						    <img class="petImg" src="" id="image">
						</div>
					</div>	
					<div class="row">
						<div class="col">
							<input type="file" id="file" class="form-control" style="width: 446px;">
						</div>
					</div>	
				</div>	
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ì´ë¦
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" placeholder="">
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							íì¢
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" placeholder="">
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ëì´
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" placeholder="">
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ì±ë³
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" placeholder="">
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ìíì¥ì
						</div>
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 ge-1">
							<input type="text" class="form-control" placeholder="ì°í¸ë²í¸" id="zip_code">
						</div>
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12" style="padding: 0px 0px;">
							<button type="button" class="Searchbtn" onclick="sample4_execDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
						</div>
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12" style="padding: 0px 0px;">
							<button type="button" class="Searchbtn" id="address_reset"><i class="fa-solid fa-rotate-left"></i></button>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							&nbsp;
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							<input type="text" class="form-control" placeholder="ëë¡ëª ì£¼ì" id="address">
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							&nbsp;
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							<input type="text" class="form-control" placeholder="ìì¸ ì£¼ì" id="address_detail">
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ë°ê²¬ì¥ì
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							<input type="text" class="form-control" placeholder="ì íí ì¥ìë¥¼ ìë ¥í´ì£¼ì¸ì.">
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							ë°ê²¬ì¼ì
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							<input class="form-control" type="datetime-local" id="hopedate" name="hopedate">
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
							í¹ì´ì¬í­
						</div>
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							<input type="text" class="form-control">
						</div>
					</div>
                </div>
			</div>
			<div class="row">
				<div class="col" style="display: flex; justify-content: flex-end;">
					<button type="button" class="btnSave">ì·¨ì</button>
					<button type="button" class="btnSave">ì ì¥</button>
				</div>
			</div>
			<hr>
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
    <!-- ì¹´ì¹´ë ì§ë API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/menumaker.js"></script>
    <script src="../js/navigation.js" type="text/javascript"></script>
    
    <script type="text/javascript">
    	
    /* ì¹´ì¹´ì¤ì§ëAPI */
  	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // íììì ê²ìê²°ê³¼ í­ëª©ì í´ë¦­íìë ì¤íí  ì½ëë¥¼ ìì±íë ë¶ë¶.

                // ëë¡ëª ì£¼ìì ë¸ì¶ ê·ì¹ì ë°ë¼ ì£¼ìë¥¼ íìíë¤.
                // ë´ë ¤ì¤ë ë³ìê° ê°ì´ ìë ê²½ì°ì ê³µë°±('')ê°ì ê°ì§ë¯ë¡, ì´ë¥¼ ì°¸ê³ íì¬ ë¶ê¸° íë¤.
                var roadAddr = data.roadAddress; // ëë¡ëª ì£¼ì ë³ì
                var extraRoadAddr = ''; // ì°¸ê³  í­ëª© ë³ì

                // ë²ì ëëªì´ ìì ê²½ì° ì¶ê°íë¤. (ë²ì ë¦¬ë ì ì¸)
                // ë²ì ëì ê²½ì° ë§ì§ë§ ë¬¸ìê° "ë/ë¡/ê°"ë¡ ëëë¤.
                if(data.bname !== '' && /[ë|ë¡|ê°]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // ê±´ë¬¼ëªì´ ìê³ , ê³µëì£¼íì¼ ê²½ì° ì¶ê°íë¤.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // íìí  ì°¸ê³ í­ëª©ì´ ìì ê²½ì°, ê´í¸ê¹ì§ ì¶ê°í ìµì¢ ë¬¸ìì´ì ë§ë ë¤.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // ì°í¸ë²í¸ì ì£¼ì ì ë³´ë¥¼ í´ë¹ íëì ë£ëë¤.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                // ì»¤ìë¥¼ ìì¸ì£¼ìë¡ ì´ëíë¤
                document.getElementById('address_detail').focus();
                
            }
        }).open();
    }
	
	//ì£¼ì ë¦¬ì
	$("#address_reset").on("click", function() {
		$("#zip_code").val('');
		$("#address").val('');
		$("#address_detail").val('');
	})
	//ì´ë¯¸ì§ ë¯¸ë¦¬ë³´ê¸°
    $("#file").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#image").attr("src", img);
	});
    
    
    
    
    </script>
    
</body>

</html>