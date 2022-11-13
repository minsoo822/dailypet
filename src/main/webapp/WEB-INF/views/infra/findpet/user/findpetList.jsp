<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

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
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
     <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <div class="container">
	    <div class="row">
		    <div class="col Search">
	    		<button class="Searchbtn"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
	    		<button class="Searchbtn"style="margin-left: 20px;"><i class="fa-regular fa-plus"></i></button>
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
            <div class="row">
                <div class="st-pagination">
                    <ul class="pagination">
                        <li><a href="#">Previous</a></li>
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    </div>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
</body>

</html>
