<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html lang="ko">

<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
   
    <title>아이디 찾기</title>

    <style type="text/css">
    	h1{
			font-weight: bold;
		}
		
	    .input-group-addon, .input-group-btn {
		    width: 10%;
		    white-space: nowrap;
		    vertical-align: middle;
		}
		
		.top{
	    	margin-top: 10px;
	    }
	    
	    .form-control{
			font-size: 12px;
		}
    
	    .btn-default { 
			color: #fff; 
			background-color: #372d2b; 
		}
		
		.btn { 
			display: inline-block; 
			padding: 14px 20px; 
			margin-bottom: 0; 
			font-size: 14px; 
			font-weight: 800; 
			letter-spacing: 1px; 
			line-height: 1.42857143; 
			text-align: center; 
			border: none; 
			text-transform: uppercase; 
			border-radius: 8px; 
			font-family: 'Raleway', sans-serif; 
			-webkit-font-smoothing: antialiased; 
			width: 493px;
			text-rendering: optimizeLegibility; 
		}
		
		@font-face {
		    font-family: 'Unilab';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205-2@1.0/Unilab.woff2') format('woff2');
		    font-weight: bold;
		    font-style: normal;
		}
		
		address{
			font-size: 20px;    
			font-family: 'Unilab';
		}
		
		strong{
			font-size: 25px;
	   		color: #464241;
		}
	
		.text-caps {
		    font-size: 25px;
		}
		
		.text{
			font-size: 20px;
		}
		
		.mid{
			text-align: center;
		}
		
		.left{
			margin-left: 20px;
		}
		
		.left1{
			margin-left: 8px;
		}
		
		.pinside30{
			width: 600px;
		}
		
		.form-switch .form-check-input {
	    	width: 25px;
	    	height: 15px;
	    }
	    
	    .form-check-label{
			font-size: 14px;
		}
		
		.form-check-input:checked {
		    background-color: #000;
		}
		
		.right{
			float: right;
			font-size: 12px;
		}
		
		hr{
			color: #565656 !important;
			width: 500px !important;
		}
    
    	.right{
    		margin-right: 10px;
    	}
    	
    	.mem{
			font-size: 13px;
		}
		
		.reg{
			font-size: 13px;
			margin-left: 5px;
			color: blue;
			text-decoration: underline;
		}	
		
		.content{
			margin-left: 200px;
		}
    </style>
</head>

<body>
  	<%@include file="../../../common/xdmin/include/header.jsp"%>
  
  	<br>
  	<br>
  	<br>
  	<br>
  	<form action="">
    <div class="content">
        <div class="container">
            <div class="row"> 
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 left">
                                <h1>ID 찾기</h1>
                                <h5>아이디가 기억나지 않으신가요?</h5>
                                <br>
                                <br>
                                <div class="row">
                                    <div class="col-md-11">
                                        <div class="form-group has-feedback">
                                            <label class="control-label" for="ifmmName">사용자 이름</label>
                                            <div class="input-group"> <span class="input-group-addon"><div class="top"><i class="fa fa-user"></i></div></span>
                                                <input type="text" class="form-control" name="ifmmName" id="ifmmName" placeholder="이름 입력" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-11">
                                        <div class="form-group has-feedback">
                                            <label class="control-label" for="ifmmEmail">가입하신 이메일</label>
                                            <div class="input-group"> <span class="input-group-addon"><div class="top"><i class="fa-solid fa-envelope"></i></div></span>
                                                <input type="text" class="form-control" name="ifmmEmail" id="ifmmEmail" placeholder="ex) dailypet@naver.com" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-11" id="idHidden" style="display: none;">
										<b>고객님의 아이디는 <strong class="personerId"></strong>입니다</b>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
											<br>
                                            <button type="button" id="singlebutton" name="singlebutton" class="btn btn-default">조회하기</button>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 top2">
                    <div class="contact-pic mb30"> <img src="../images/contact-pic.jpg" class="img-responsive" alt=""> </div>
                    <div class="contact-info">
                        <h2>#Daily Pet</h2>
                        <address>
                            서울특별시 서초구 서초대로77길 55 
                            <br> 에이프로스퀘어 3층
                        </address>
                        <address>
                            <span class="text-caps">studio:</span> <strong>02-0000-0000</strong>
                            <br>
                            <span class="text-caps">Mobile:</span> <strong>02-0000-0000</strong>
                        </address>
                        <address>
                            <span class="text-caps">e-mail:</span> <strong>ezen@itAcademy.com</strong>
                        </address>
                        <div class="social-circle"> <span class="text">Be social: </span> <a href="#"><i class="fa fa-facebook-square"></i></a> <a href="#"><i class="fa fa-twitter-square"></i></a> <a href="#"><i class="fa fa-google-plus-square"></i></a> <a href="#"><i class="fa fa-youtube-square"></i></a> <a href="#"><i class="fa fa-pinterest-square"></i></a> </div>
                    </div>
                    <!-- /.widget search -->
                </div>
            </div>
        </div>
    </div>
    </form>
   	<%@include file="../../../common/xdmin/include/footer.jsp"%>
	<%@include file="../../../common/xdmin/include/footScript.jsp"%>
	<script type="text/javascript">
	$("#singlebutton").on("click", function() {
		
		$.ajax({
			url : '/member/findId'
			,type: 'POST'
			,datatype: 'json' 	
			,data: {
				ifmmName : $("#ifmmName").val()
				,ifmmEmail : $("#ifmmEmail").val()
			},
			success:function(response) {
				if (response.rt == "success") {
					$("#idHidden").css("display", "")
					$(".personerId").html(response.id.id);
				} else {
					alert("정확한 정보를 입력해주세요!!!");
				}
			},
			error:function(){
				alert("ajax error..!")
			}
		})
	});
	
	
	
	</script>
</body>
</html>
