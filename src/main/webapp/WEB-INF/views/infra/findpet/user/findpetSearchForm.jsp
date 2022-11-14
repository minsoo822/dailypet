<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
   <title>유기동물 검색</title>
     
    <style type="text/css">
    /* div {
    	border: 1px solid orange;
    } */
    .imgsize {
    	width: 258px;
    	height: 218px;
    	max-width: 100%;
    	max-height: 100%;
    }
    .Search {
    	margin-top: 50px; 
    	display: flex; 
    	justify-content: end;
    }
    .Reserbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .Reserbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .contents {
    	margin-bottom: 30px;
    	color: red;
    	font-size: 10pt;
    	font-weight: bold;
    	width: 50%;
    	text-align: center;
    }
    /* inputfile 커스텀 s */
    .filebox {
    	text-align: center;
    }
    .filebox .upload-name {
	    display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	    border: 1px solid #dddddd;
	    width: 70%;
	    color: #999999;
	}
    .filebox label {
	    display: inline-block;
	    padding: 15px 15px;
	    vertical-align: middle;
	    background: #f3f0eb;
    	color: #372d2b;
	    width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
	    margin-left: 10px;
	    margin-bottom: 5px;
	}
	.filebox label:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	/* inputfile 커스텀 e */
	/* 이미지 프리뷰 s */
	.preview {
		margin-bottom: 50px;
	}
    .imgs_wrap {
		background: gray;
		height: 200px
	}
	.imgs_wrap img {
		height: 180px;
		width: 180px;
		max-width: 100%;
		max-height: 100%;
		padding: 20px 0px 0px 40px;
	}
    /* 이미지 프리뷰 e */
    </style>
    
</head>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <div class="totalContent">
    	<div class="container">
		    <div class="row Search">
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
			    	<div class="filebox">
					    <input type="text" class="upload-name" value="첨부파일" placeholder="첨부파일">
					    <label for="input_imgs"><i class="fa-solid fa-magnifying-glass"></i></label> 
	    				<button class="Reserbtn" id="reset"><i class="fa-solid fa-rotate-left"></i></button>
					    <input type="file" id="input_imgs" multiple />
					</div>
		    	</div>
		    </div>
		    <div class="row contents">
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				   <span>보다 정확한 결과를 위해 선명한 사진으로 올려주세요.</span>
		    	</div>
		    </div>
		    <div class="row preview">
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		    		<div class="imgs_wrap">
						<!-- <img> -->
					</div>
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
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    <script type="text/javascript">

    $("#file").on('change',function(){
    	  var fileName = $("#file").val();
    	  $(".upload-name").val(fileName);
    	});
    
    var sel_files = [];

    $(document).ready(function() {
        $("#input_imgs").on("change", handleImgsFilesSelect);
    }); 

    function handleImgsFilesSelect(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function(f) {
            if(!f.type.match("image.*")) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }

            sel_files.push(f);

            var reader = new FileReader();
            reader.onload = function(e) {
                var img_html = "<img src=\"" + e.target.result + "\" />";
                $(".imgs_wrap").append(img_html);
            }
            reader.readAsDataURL(f);
        });
    }
    
    $("#input_imgs").on('change',function(){
    	  var fileName = $("#input_imgs").val();
    	  $(".upload-name").val(fileName);
    	});
    
    </script>
    
</body>

</html>
