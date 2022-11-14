<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <title>회원탈퇴(완료)</title>
    <style type="text/css">
    	.right{
    		float: right;
    	}
    	 
    	.foot{
    		font-size: 60px;
    	}
    	
    	.reg{
    		text-align: center;
   		}
   		
   		.arrow{
   			font-size: 15px;
			margin-bottom: 10px;   			
   		}
   		
   		.wid{
   			width: 120px;
   		}
   		
		.div1 {
		    display: flex;
		    justify-content: center;
		}
		
		.div2 {
		    display: flex;
			margin-left: 55px;
		}
		
		.foot{
			font-size: 50px;
		}
		
		.top{	
			margin-top: 20px;
		}

		.top2{
			margin-top: 10px;
		}
		
		.foot2{
			color: #b5b5b5; 
			font-size: 50px;
		} 
		
		#mydiv {
	        height: 300px;
	        overflow: scroll;
	        background-color: #fcfcfc;
	    }
	    
	    #mydiv2 {
	    	background-color: #fcfcfc;
	    }
	    
	    .btn{
	    	padding: 10px 10px;
	    }
		.btnStyle {
    	border: 1px solid #372d2b;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 80px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
	    }
	    .btnStyle:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
		hr{
			margin-top: 0px;
			margin-bottom: 10px;
		}
		
		.form-control{
			color: black;
		}
		
		.top3{
			margin-top: 6px;
		}
		
		.mid{
			width: 200px;
			display: flex;
			justify-content: space-between;
			margin-left: auto;
			margin-right: auto;
		}
		
		.hr2{
			width: 950px;
		}
		
		.mydiv{
			background-color: #f4f1f0;
			text-align: center;
			width: 950px;
			height: 300px;
			margin: auto;
		}
		
		.font{
			font-size: 100px;
		}
		
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<form method="post" id="mainForm">
	<input type="hidden" name="" value="${sessSeq }">
		<div class="totalContent">
		    <div class="content">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		                    <div class="bg-light pinside30">
		                        <div class="row">
		                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		                                <h1>회원탈퇴</h1>
		                                <p>#Daily Pet 또 이용해주세요.</p>
		                                <br>
		                                <div class="row div1 reg">
		                               		<div class="col-1 wid"> 	
		                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
		                               			<br>
		                               			<span>탈퇴약관</span>
		                               		</div>
		                               		<div class="col-1 top">
		                               			<i class="fa-solid fa-angle-right"></i>
		                               		</div>
		                               		<div class="col-1 wid">
		                               			<span class="foot"><i class="fa-solid fa-paw"></i></span>
		                               			<br>
		                               			<span>탈퇴완료</span>
		                               		</div> 
		                               	</div>
		                            </div>
		                        </div>
		                        <br>
		                        <br>
		                        <hr class="hr2">
		                        <div class="mydiv">
		                        	<br>
		                        	<br>
		                        	<img src="">
		                        	<br>
		                        	<span>#Daily Pet 회원 탈퇴가 완료되었습니다</span>
		                        	<br>
		                        	<span>#Daily Pet의 다양한 기능을 다음에 또 이용해주세요.</span>
		                        </div>
								<br>                        
		                        <div class="mid">
		                        	<button type="button" class="btn btnStyle">홈으로</button>
		                       		<button type="button" class="btn btnStyle">로그인</button>
		                       	</div>
							</div>
		                </div st>
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
</body>

</html>
