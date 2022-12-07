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
    <title>회원탈퇴</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
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
		
		.foot{
			font-size: 50px;
		}
		
		.top{	
			margin-top: 20px;
		}

		.foot2{
			color: #b5b5b5; 
			font-size: 50px;
		} 
		
	    li{
	    	font-size: 14px;
	    	margin-left: 20px;
	    }
	    
	    h2, h4, h5{
	    	font-weight: bold;
	    }
	    
	    .btn{
	    	text-align: center;
	    }
	    
	    .btn-close{
	    	background-color: transparent;
	    	border-color: transparent;
	    	margin-left: 396px;
	    }
	    
	   .btn2 {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	color: #372d2b;
	    	text-align: center;
	    	width: 120px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 14px;
	    	font-weight: bold;
	    }
	    
	    .btn2:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .modal-header{
	   		display: inline-flex;
	    }
	    
	    .modal-body{
	    	margin-top: 15px;
	    	margin-bottom: 15px;
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
	                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                    <div class="bg-light pinside30">
	                        <div class="row">
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                                <h1>회원탈퇴</h1>
	                                <p>#Daily Pet 또 이용해주세요.</p>
	                                <br>
	                                <div class="row div1 reg">
	                               		<div class="col-1 wid"> 	
	                               			<span class="foot"><i class="fa-solid fa-paw"></i></span>
	                               			<br>
	                               			<span>탈퇴약관</span>
	                               		</div>
	                               		<div class="col-1 top">
	                               			<i class="fa-solid fa-angle-right"></i>
	                               		</div>
	                               		<div class="col-1 wid">
	                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
	                               			<br>
	                               			<span>탈퇴완료</span>
	                               		</div> 
	                               	</div>
	                            </div>
	                        </div>
	                        <br>
	                        <br>
	                        <hr>
	                        <h4>회원 탈퇴(이용약관 동의 철회)시 아래 내용을 확인해주세요.</h4>
	                        <hr>
								<li>회원 탈퇴를 신청하시면 현재 로그인 된 아이디는 사용하실 수 없습니다.</li>
								<br>
								<li>회원 탈퇴를 하더라도, 서비스 약관 및 개인정보 취급방침 동의하에 따라 일정 기간동안 회원 개인정보를 보관합니다.</li>
								<br>
								<li>탈퇴 후 7일간 동일한 정보로 재가입하실 수 없습니다.</li>
								<br>
								<li>탈퇴 시 고객님의 활동 내역은 전부 삭제됩니다.</li>
							<hr>
							<br>
							<h5><center>#Daily Pet 회원을 탈퇴하시겠습니까?</center></h5>
							<br>
							<form name="mainForm" method="post">
							<input type="hidden" name="seq" value="<c:out value="${sessSeq }"/>">
								<!-- Button trigger modal -->
								<div style="text-align: center;">
									<button type="button" class="btn btn2" data-toggle="modal" data-target="#staticBackdrop">
										회원 탈퇴
									</button>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h2 class="modal-title fs-5" id="staticBackdropLabel">#Daily Pet</h2>
												<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x"></i></button>
											</div>
											<div class="modal-body">
												정말로 탈퇴하시겠습니까? 탈퇴 시 7일 이후 재가입 하실 수 있습니다. 
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
												<button type="button" class="btn btn-danger" id="delBtn">탈퇴 </button>
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
	
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    <script type="text/javascript">
    	var goUrlDel = "/member/memberUel";
    	var seq = $("input:hidden[name=seq]");		
    	var form = $("form[name=mainForm]");
   		
   		$("#delBtn").on("click", function() {
   			form.attr("action", goUrlDel).submit();	
   		});
    </script>
</body>

</html>
