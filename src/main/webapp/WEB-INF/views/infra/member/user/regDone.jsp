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
    <title>회원가입</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
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
			text-align: center;
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
		
		.btnLog {
	    	border: 1px solid #efefef;
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	text-align: center;
	    	width: 60px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnLog:hover {
	    	background: #f3f0eb;
	    	color: #372d2b;
	    	cursor: pointer;
	    }
	    
	    .btnHome {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	text-align: center;
	    	width: 60px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnHome:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
		
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="mainForm">
	    <div class="totalContent">
		    <div class="content">
		    	<div class="totalContent">
			        <div class="container">
			            <div class="row">
			                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                    <div class="bg-light pinside30">
			                        <div class="row">
			                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                                <h1>회원가입</h1>
			                                <p>#Daily Pet 회원 가입으로 다양한 서비스를 만나보세요.</p>
			                                <br>
			                                <div class="row div1 reg">
			                               		<div class="col-1 wid"> 	
			                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>약관동의</span>
			                               		</div>
			                               		<div class="col-1 top">
			                               			<i class="fa-solid fa-angle-right"></i>
			                               		</div>
			                               		<div class="col-1 wid">
			                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>정보입력</span>
			                               		</div>
			                               		<div class="col-1 top">
			                               			<i class="fa-solid fa-angle-right"></i>
			                               		</div>
			                               		<div class="col-1 wid">
			                               			<span class="foot"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>가입완료</span>
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
			                        	<img src="/resources/images/xdmin/done.jpg">
			                        	<br>
			                        	<span>#Daily Pet 회원 가입을 축하합니다.</span>
			                        	<br>
			                        	<span>로그인 후 #Daily Pet의 다양한 기능을 이용해보세요.</span>
			                        </div>
									<br>                        
			                        <div class="mid">
			                        	<button type="button" class="btn btnHome">홈으로</button>
			                       		<button type="button" class="btn btnLog">로그인</button>
			                       	</div>
								</div>
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
</body>

</html>
