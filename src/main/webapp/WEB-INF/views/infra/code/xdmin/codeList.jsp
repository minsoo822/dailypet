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
    <title>반려동물 리스트</title>
    <!-- Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="../../css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    
    .category {
    	text-align: right;
    	height: 500px;
    	background: white;
    	border: 1px solid gray;
    }
    .searchBox {
    	max-width: 100%;
    	background: gray;
    	height: 200px;
    	padding: 37px 20px;
    }
    .searchBtn, .resetBtn {
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
    .searchBtn:hover, .resetBtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .post-block {
    	margin-top: 30px;
    }
    
    </style>
    
</head>

<body>
	<!-- 헤더 s -->
    <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="index.html"><img src="../../images/logo.png" alt="Interior Design Website Templates Free Download"></a>
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
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">내 주변 편의시설</a>
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
    <!-- 헤더 e -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                       <!--  <h1 class="page-title">latest news</h1>
                        <p>Praesent sit amet dapibus dui, non ullamcorper nisecenas ac
                            <br> nulla non urna ullamcorper iaculis nec eu leo. </p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row">
            	 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="widget widget-categories category" >
                        <!-- widget categories -->
                        <!-- widget start -->
                        <h3 class="widget-title"> 대시보드 </h3>
                        <ul class="listnone">
                            <li><a href="https://easetemplate.com/downloads/interior-exterior/free-website-template/">회원 리스트 </a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-websites-templates-free-download/">반려동물 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free-download/">유기동물 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free/">코드 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free/">코드그룹 리스트</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="row">
                    	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="row">
                            	<div class="col searchBox">
                            		<div class="row">
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control">
                            					<option>삭제유무</option>
                            					<option></option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control">
                            					<option>선택</option>
                            					<option></option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="date" class="form-control">
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="date" class="form-control">
                            			</div>
                            		</div>
                            		<div class="row">
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control">
                            					<option>사용유무</option>
                            					<option></option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control">
                            					<option>검색옵션</option>
                            					<option></option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="text" class="form-control" placeholder="검색어">
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="display: flex; justify-content: space-between; width: 150px;">
                            				<button type="button" class="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>
                            				<button type="button" class="resetBtn"><i class="fa-solid fa-rotate-left"></i></button>
                            			</div>
                            		</div>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="post-block">
                               <div class="row">
	                               <div class="col"> 
		                           		<h1>코드 리스트</h1>
	                               </div>
							   </div>
							   <div class="row" style="display: flex; justify-content: space-between; height: 30px;">
	                               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"> 
		                           		 <p class="meta">total: 0</p>
	                               </div>
	                               <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8"> 
		                           		&nbsp;
	                               </div>
	                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"> 
	                                	<select class="form-control">
	                                		<option>10</option>
	                                		<option>20</option>
	                                		<option>30</option>
	                                		<option>40</option>
	                                	</select>
	                               </div>
							   </div>
                            </div>
                            <hr>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="row">
								<div class="col">
									<table class="table table-striped">
										<tr>
											<th>
												<input type="checkbox">
											</th>
											<th>#</th>
											<th>이름</th>
											<th>성별</th>
											<th>연락처</th>
											<th>이메일</th>
											<th>주소</th>
										</tr>
										<tr>
											<td>
												<input type="checkbox">
											</td>
											<td>1</td>
											<td>김민수</td>
											<td>남자</td>
											<td>01023456789</td>
											<td>minsoo822@naver.com</td>
											<td>강남구 테헤란로123</td>
										</tr>
									</table>
								</div>
							</div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
    <script src="../../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/menumaker.js"></script>
    <script src="../../js/navigation.js" type="text/javascript"></script>
</body>

</html>
