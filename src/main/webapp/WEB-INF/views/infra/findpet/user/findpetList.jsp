<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>유기동물 리스트</title>
    
    <style type="text/css">
    /* div {
    	border: 1px solid orange;
    } */
    .Search {
    	margin-top: 50px; 
    	margin-bottom: 20px;
    	display: flex; 
    	justify-content: end;
    }
    .Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 80px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .imgsize {
    	width: 258px;
    	height: 218px;
    	max-width: 100%;
    	max-height: 100%;
    }
    
    </style>
    
</head>

<body>
	<!-- header s -->
   	<%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<form action="" id="searchForm">
	    <div class="container">
	    	<div class="totalContent">
			    <div class="row">
				    <div class="col Search">
			    		<button class="Searchbtn" type="button" id="searchGo"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
			    		<button class="Searchbtn" type="button" id="formGo" style="margin-left: 20px;"><i class="fa-regular fa-plus"></i></button>
			    	</div>
			    </div>
				<div class="row">
				    <div class="col">
					   	<ul class="nav nav-tabs">
						  <li class="nav-item">
						    <a class="nav-link active" aria-current="page" href="#">전국</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">서울</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">경기</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">인천</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">부산</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">대구</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">대전</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">전남</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">경남</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">충남</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">광주</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">울산</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">경북</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">전북</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">충북</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">강원</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">제주</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="#">세종</a>
						</ul>
					</div>
				</div>
	    	</div>
		    <!-- /.page header -->
		    <div class="content" style="padding-top: 50px;">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="findpetView.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/zz.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/coco.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/dog2.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img imghover mb30">
		                        <a href="service-detail.html"><img class="imgsize" src="/resources/images/findpet/fox.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/galina-bugorra.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/gogog.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/hiena.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img imghover mb30">
		                        <a href="service-detail.html"><img class="imgsize" src="/resources/images/findpet/miAcat.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/mm.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/siba.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img mb30">
		                        <a href="service-detail.html" class="imghover"><img class="imgsize" src="/resources/images/findpet/sudal.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
		                    <div class="project-img imghover mb30">
		                        <a href="service-detail.html"><img class="imgsize" src="/resources/images/findpet/taiger.jpg" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
		                    </div>
		                </div>
		            </div>
		            <!-- pagination s -->
					<%@include file="../../../common/xdmin/include/pagination.jsp"%>
					<!-- pagination e -->
		        </div>
		    </div>
	    </div>
	    <!-- footer s -->
	    <%@include file="../../../common/xdmin/include/footer.jsp"%>
	    <!-- footer e -->
	    </div>
    </form>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    
	    var goUrlList = "/findpet/findpetSearchForm";
	    var goUrlForm = "/findpet/findpetMod";
	    
	    $("#searchGo").on("click", function(){
	    	$(location).attr("href", goUrlList).submit();
		});
	
	    $("#formGo").on("click", function(){
	    	$(location).attr("href", goUrlForm).submit();
		});
	    
    </script>
    
</body>

</html>
