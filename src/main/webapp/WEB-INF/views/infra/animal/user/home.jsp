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
    .mid{
    	margin-left: 8rem;
    }
    
    h2 { 
    	font-size: 24px; 
    	line-height: 32px; 
    	margin: 0; 
    	padding: 0; 
    	margin-bottom: 10px; 
    	color: #383433; 
    	font-weight: 400; 
    	text-transform: uppercase; 
    	font-family: 'Raleway', sans-serif; 
    	-webkit-font-smoothing: antialiased; 
    	text-rendering: optimizeLegibility;
    }
    
    a { 
    	color: #aa9144; 
    	text-decoration: none; 
    	-webkit-transition: all 0.3s; 
    	-moz-transition: all 0.3s; 
    	transition: all 0.3s; 
    }
    
    a:focus, a:hover { 
    	text-decoration: none; 
    	color: #e7a625; 
    }
    
    p { 
    	margin: 0 0 20px; 
    }

	p:last-child { 
		margin-bottom: 0px; 
	}
	
	body { 
		font-size: 16px; 
		background-color: #fff; 
		color: #464241; 
		font-family: 'Raleway', sans-serif; 
		line-height: 28px; 
		font-weight: 300; 
	    font-family: 'NanumSquareNeo-Variable';
	}
	
	@font-face {
	    font-family: 'NanumSquareNeo-Variable';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
	.btn-default { 
		color: #fff; 
		background-color: #372d2b; 
	}
	
	.btn { 
		display: inline-block; 
		padding: 14px 30px; 
		margin-bottom: 0; 
		font-size: 13px; 
		font-weight: 800; 
		letter-spacing: 1px; 
		line-height: 1.42857143; 
		text-align: center; 
		border: none; 
		text-transform: uppercase; 
		border-radius: 40px; 
		-webkit-font-smoothing: antialiased; 
		text-rendering: optimizeLegibility; 
	}
	
	.btnGo {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 150px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13px;
    	font-weight: bold;
    }
    
    .btnGo:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    
    .img-responsive{
    	width: 420px;
    	height: 235px;
    }
     
    .awesome{
    	font-size: 55px;
    	color: #A39492;
    }
    </style>
    
    <title>#Daily Pet</title>
    
</head>

<body>

	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
<form method="post" id="mainForm">
	<input type="hidden" name="ifmmSeq" value="${sessSeq}">
    <img src="/resources/images/xdmin/back.jpg" style="width: 100%">
    <br>
    <br>
    <div class="container">
		<div class="row" id="scrollContent">
	        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
	            <a href="#scroll_move1" class="scroll_move">
					<div class="outline pinside30 text-center mb30">
					   	<div class="mb30"><span class="awesome"><i class="fa-solid fa-magnifying-glass"></i></span></div>
					    <div class="">
					        <h2><b>???????????? ??????</b></h2>
					        <p>????????? ????????? ????????? ??????????????????????</p>
					    </div>
					</div>
	            </a>
	        </div>
	        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
	            <a href="#scroll_move2" class="scroll_move">
					<div class="outline pinside30 text-center mb30">
					    <div class="mb30"><span class="awesome"><i class="fa-regular fa-map"></i></span></div>
					    <div class="">
					        <h2><b>??? ?????? ????????????</b></h2>
					        <p>??? ????????? ?????? ??????????????? ??????????????????.</p>
					    </div>
					</div>
	            </a>
	        </div>
		    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<a href="#scroll_move3" class="scroll_move">
					<div class="outline pinside30 text-center mb30">
						<div class="mb30"><span class="awesome"><i class="fa-regular fa-pen-to-square"></i></span></div>
							<div class="">
							    <h2><b>????????????</b></h2>
							    <p>?????? ???????????? ??????????????? ????????? ???????????????.</p>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div data-bs-spy="scroll" data-bs-target="#scrollContent">
	    <div class="space-medium" id="scroll_move1">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
	                    <div class="mb60 text-center section-title">
	                        <!-- section title start-->
	                        <h1>???????????? ??????</h1>
	                    </div>
	                    <!-- /.section title start-->
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
	                    <div class="project-img mb30">
	                        <a href="/findpet/findpetList"><img src="/resources/images/xdmin/list.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
	                    <div class="testimonial-block bg-light pinside30">
	                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
	                        <div class="testimonial-content">
	                            <p>???????????? ??????????????? ??????????????????? <br>????????? ???????????? ????????? ??????????????? ????????? ???????????? ????????? ??????????????????.</p>
	                        </div> 
	                    </div>
	                </div>
	            </div>
	            <br>
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="/findpet/findpetList" class="btn btnGo">????????????</a></div>
	            </div>
	        </div>
	    </div>
	    <div class="space-medium bg-light" id="scroll_move2">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
	                    <div class="section-title mb60 text-center">
	                        <!-- section title start-->
	                        <h1>??? ?????? ????????????</h1>
	                    </div>
	                    <!-- /.section title start-->
	                </div>
	            </div>
	            <div class="row" id="scroll_move2">
	                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
	                    <div class="testimonial-block bg-white pinside30">
	                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
	                        <div class="testimonial-content">
	                            <p>????????????, ????????????/?????????/????????? ????????? ????????? ?????????! <br> ??? ?????? ??????????????? ?????? ?????????????????? ??????????????????.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
	                    <div class="project-img mb30">
	                        <a href="/reservation/searchingPlace"><img src="/resources/images/xdmin/reservation.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
	            </div>
	            <br>
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="/reservation/searchingPlace" class="btn btnGo">????????????</a></div>
	            </div>
	        </div>
	    </div>
	   	<div class="space-medium" id="scroll_move3">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
	                    <div class="mb60 text-center section-title">
	                        <!-- section title start-->
	                        <h1>????????????</h1>
	                    </div>
	                    <!-- /.section title start-->
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
	                    <div class="project-img mb30">
	                        <a href="/diary/diaryList"><img src="/resources/images/xdmin/diary.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
	                    </div>
	                </div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
	                    <div class="testimonial-block bg-light pinside30">
	                        <div class="quote-left"> <i class="fa fa-quote-left"></i> </div>
	                        <div class="testimonial-content">
	                            <p>???????????? ???????????? ??????????????? ????????? ?????? ????????? ??????????????????. <br> ??? ??????????????? ????????? ?????? ???????????? ??????????????? ?????? ??? ????????????.</p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <br>
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"><a href="/diary/diaryList" class="btn btnGo">????????????</a></div>
	            </div>
	        </div>
	    </div>
    </div>
</form>

<%@include file="../../../common/xdmin/include/footer.jsp"%>

<%@include file="../../../common/xdmin/include/footScript.jsp"%>

<script type="text/javascript">
    
    var seq = $("input:hidden[name=ifmmSeq]");
    var form = $("#mainForm");
    
    goMypage = function(key) {
		seq.attr("value", key);
		form.attr("action", "/member/myPage").submit();
	}
    
</script>
    
</body>
</html>
