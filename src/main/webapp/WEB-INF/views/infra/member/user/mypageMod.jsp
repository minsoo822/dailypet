<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">
<head>


<%@include file="../../../common/xdmin/include/head.jsp"%>
	
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
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    
    <div class="content">
        <div class="container">
            <div class="row">
            	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="widget widget-categories" style="text-align: right; background: #fff;">
                        <!-- widget categories -->
                        <!-- widget start -->
                        <h3 class="widget-title myPage"> 마이페이지 </h3>
                        <ul class="listnone">
                            <li><a href="#">비밀번호 변경 </a></li>
                            <li><a href="#">회원탈퇴</a></li>
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
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이름</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">아이디</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">닉네임</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">휴대폰</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">연락처</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control">
								</div>                            	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이메일</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control">
								</div>                            	
                            </div>
                            <div class="row">
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text text">위탁장소</div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 ge-1" style="padding-right: 0px;">
									<input type="text" class="form-control" placeholder="우편번호">
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
									<input type="text" class="form-control" placeholder="도로명주소">
								</div>                            	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">&nbsp;</div>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input type="text" class="form-control" placeholder="상세주소">
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
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">집사이름</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">성별</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이름</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">나이</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>                      	
                            </div>
                            <div class="row" >
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">칩</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<select class="form-control">
										<option></option>
										<option></option>
									</select>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">접종</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<select class="form-control">
										<option></option>
										<option></option>
									</select>
								</div>                      	
                            </div>
                            <div class="row">
                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">품종</div>
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
            		<button type="button" class="otherbtn">목록으로</button>
            		<button type="button" class="otherbtn">저장하기</button>
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
    
	//주인이미지 미리보기
    $("#fileM").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#imageM").attr("src", img);
	});
  	//반려동물 이미지 미리보기
    $("#fileP").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#imageP").attr("src", img);
	});
    
    
    
    </script>
    
    
    
</body>

</html>
