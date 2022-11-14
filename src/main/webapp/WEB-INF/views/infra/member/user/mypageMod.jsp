<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html lang="ko">
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <title>마이페이지 수정</title>
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
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="modForm">
    <input type="hidden" name="ifmmSeq" value="${ sessSeq}">
	    <div class="totalContent">
		    <div class="content">
		        <div class="container">
		            <div class="row">
		            	<div class="col-lg-3 cl-md-3 col-sm-3 col-xs-12">
		                    <div class="widget widget-categories" style="text-align: right; background: #fff;">
		                        <!-- widget categories -->
		                        <!-- widget start -->
		                        <h3 class="widget-title myPage"> 마이페이지 </h3>
		                        <ul class="listnone">
		                            <li><a href="/member/changePW">비밀번호 변경 </a></li>
		                            <li><a href="/member/memberDel1">회원탈퇴</a></li>
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
	    </div>
	</form>
	<!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
	
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
