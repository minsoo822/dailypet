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
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <title>비밀번호 변경</title>
    <style type="text/css">
    .changePwBack {
    	background: #f3f0eb;;
    	height: 450px;
    	text-align: center;
    }
    .titlePw {
    	text-align: center;
    	font-size: 20pt;
    	font-weight: bolder;
    	margin: 60px 0px;
    }
    .form-control {
    	color: #000;
    	border-radius: 8px;
    }
    .password{
    	width: 450px;
    	margin-left: auto;
    	margin-right: auto;
    }
    .Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 70px;
    	height: 50px;
    	border-radius: 8px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: 10px;
    }
    .Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .text {
    	padding-top: 10px;
    }
    .myPage {
    	margin-bottom: 30px;
    	font-weight: bold;
    }
    
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <div class="totalContent">
    <div class="content">
        <div class="container">
            <div class="row">
            	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="widget widget-categories" style="text-align: right; background: #fff;">
                        <!-- widget categories -->
                        <!-- widget start -->
                        <h3 class="widget-title myPage"> 마이페이지 </h3>
                        <ul class="listnone">
                            <li><a href="/member/changePW">비밀번호 변경 </a></li>
                            <li><a href="/member/memberDel1">회원탈퇴</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 changePwBack">
                        	<div class="row">
                        		<div class="col titlePw">
                        			비밀번호 변경
                        		</div>
                        	</div>
                        	<div class="row password">
                        		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text">기존 비밀번호</div>
                        		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        			<input type="text" class="form-control">
                        		</div>
                        	</div>
                        	<div class="row password">
                        		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text">변경할 비밀번호</div>
                        		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        			<input type="text" class="form-control">
                        		</div>
                        	</div>
                        	<div class="row password">
                        		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text">비밀번호 확인</div>
                        		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        			<input type="text" class="form-control">
                        		</div>
                        	</div>
                        </div>  
                    </div>
                </div>
            </div>
            <div class="row">
            	<div class="col" style="display: flex; justify-content: flex-end; margin-top: 50px;">
            		<div class="btn-group">
            		<button type="button" class="Searchbtn">취소</button>
            		<button type="button" class="Searchbtn">변경</button>
            		</div>
            	</div>
            </div>
        </div>
    </div>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
</body>

</html>