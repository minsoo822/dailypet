<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>나의 예약 정보</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<style type="text/css">

	.form-control {
		color: black;
	}
	
	.form-select {
		height: 50px;
		font-size: 13px;
		text-align: center;
		border: 1px solid #e2dcdb;
	}
	
	.form-control, .form-select {
		border-radius: 6px;
	}
	
	#cbtn {
		margin-top: 20px;
	}
	
	#returnbtn {
		background-color: white;
		color: #372d2b;
	}
	.changebtn {
		border: 1px solid #372d2b;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 130px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
	}
	.changebtn:hover {
		background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
	}
</style>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<div class="totalContent">
	    <div class="content">
	        <div class="container">
	        	<div class="bg-light pinside30">
				    <div class="row">
				        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				            <h1><b>나의 예약 정보</b></h1>
				            <!-- <p>Please complete the form below. We'll do everything we can to respond to you as quickly as possible.</p> -->
				            <form>
				                <div class="row">
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="name">고객명</label>
			                                <p>여기에</p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="petname">예약자명</label>
			                                <p>value값을</p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="phone">연락처</label><br>
			                                <select class="form-select" name="telecom" id="telecom" style="width: 22%; display: inline">
												<option selected>::통신사::</option>
												<option value="1">SKT</option>
												<option value="2">KT</option>
												<option value="3">LG</option>
											</select>
											<p style="width: 77%; display: inline">불러</p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="purpose">예약 목적</label>
			                                <p>옵니다</p>
				                        </div>
				                    </div>
				                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                        <div class="form-group">
				                            <label class="control-label" for="textarea">예약 희망 날짜</label>
				                            <input class="form-control" type="datetime-local" id="reserdate" name="reserdate"></textarea>
				                        </div>
				                    </div>
				                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                        <div class="form-group">
				                            <label class="control-label" for="textarea">요청사항</label>
				                            <p>짜잔</p>
				                        </div>
				                    </div>
				                    <div class="buttongroup">
				                    	<div class="col-md-2" id="cbtn">
					                        <div class="form-group">
					                        	<a href="/reservation/reservationForm">
					                        		<button type="button" id="" class="btn changebtn">내용 변경</button>
					                        	</a>
					                        </div>
					                    </div>
				                    </div>
				                </div>
				            </form>
				        </div>
				    </div>
				</div>
	        </div>
	    </div>
    </div>
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
</body>

</html>