<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>일기 작성</title>
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
	.content {
		display: flex;
		justify-content: center;
	}
	
	.container2 {
		margin-top: 5%;
		width: 1000px;
		height: 550px;
		border: 1px solid lightgray;
		border-radius: 8px;
	}
	
	.diaryheader {
		position: fixed;
		margin-top: 100px;
		margin-bottom: 5%;
		border: 1px solid lightgray;
		background-color: white;
		top: 0;
		left: 0;
		padding: 1.5rem;
		height: 60px;
		width: 100%;
		z-index: 1;
	}
	
	.profileheader {
		width: 30px;
	    height: 30px;
	    border-radius: 70%;
	    overflow: hidden;
	    display: inline-block;
	}
	
	.icon {
		margin-right: 400px;
		float: right;
	}
	
	.icon span {
		margin: 0 15px;
		vertical-align: middle;
	}
	
	.icon i {
		margin-bottom: 10px;
		color: black;
	}
	
	#whole {
		width: 1000px;
	}
	
	.profilepic {
		width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	.profileView {
		width: 30px;
	    height: 30px; 
	    border-radius: 70%;
	    overflow: hidden;
	    margin-left: 20px;
	}
	
	.boxheader {
		font-weight: bold;
		display: inline;
		font-size: 15px;
	}
	
	.headercen {
		margin-left: 440px;
		margin-top: 10px;
	}
	
	.headerrig {
		float: right;
		color: brown;
		margin: 5px 10px;
	}
	
	
	hr {
		margin: 10px 0;
	}
	
	#diarycontent {
		margin: 10px 0;
		border: 1px solid lightgray;
		border-radius: 4px;
		resize: none;
	}
	
	textarea:focus {
		outline: none;
		background-color: none;
	}
	 
	#attachbox {
		height: 280px;
		text-align: center;
	}
	
	#filebox label {
		padding: .5em .75em;
		color: #fff;
		font-size: inherit;
		line-height: normal;
		background-color: #aa9144;
		cursor: pointer;
		border: 1px solid #aa9144;
		border-radius: .25em;
		-webkit-transition: background-color 0.2s;
		transition: background-color 0.2s;
	}

	#filebox label:hover {
		background-color: #e2dcdb;
		color: black;
	}

	#filebox label:active {
		background-color: #367c36;
	}

	#filebox input[type="file"] {
		position: absolute;
		width: 1px;
		height: 1px;
		padding: 0;
		margin: -1px;
		overflow: hidden;
		clip: rect(0, 0, 0, 0);
		border: 0;
	}
	
	.btnUpload:hover {
		background: lightgray;
		color: #fff;
	}
	
	.form-control {
		color: black;
	}
	
	.box{
		border-color: black;
	}
</style>

<body>
	<form method="post" id="mainForm" enctype="multipart/form-data">
	<input type="hidden" name="ifmmSeq" value="${item.ifmmSeq}">
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <!-- /.page header -->
	<div class="diaryheader">
		<nav class="icon">
			<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
			<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
			<span><div class="profileheader"><a href="diaryMypage.html"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></a></div></span>
		</nav>
	</div>
    <div class="content">
        <div class="container2">
        	<div class="boxheader">
        		<span class="headercen">새 게시물 만들기</span>
        		<a href="#" id="diarySaveBtn">
        			<span class="headerrig">공유하기</span>
        		</a>
        	</div>
        	<hr>
            <div class="row" id="whole">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" id="filebox" style="border-right:1px solid lightgray; height: 490px;">
                	<div id="attachbox">
                		<label for="imagefile">
               			파일 업로드하기
                		<input class="form-control" type="file" id="imagefile" name="diary_image" style="display: none" accept=".jpg,.png,.jpeg,.mp4,.mkv" onchange="setThumbnail(event);"/>
	                	</label>
	                	<div id="imgPreview" class="imgPreview"></div>
                	</div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="row">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
							<div class="profileView">
								<img src="/resources/images/jennieprofile.jpg" class="profilepic" alt="">
						   	</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						    <h5 style="margin: 10px 0 0 -10px; font-size: 13px"><b><c:out value="${item.ifmmID }"/></b></h5>
						</div>
					</div>
					<textarea class="form-control" placeholder="문구 입력..." name="ifdaContents" id="diarycontent" maxlength="2000" style="height: 400px"></textarea>
                </div>
            </div>
        </div>
    </div>
  	<!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    </form>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    <script>
    	
    	var seq = $("input:hidden[name=ifmmSeq]");
    	var form = $("#mainForm")
    	
    	$("#diarySaveBtn").on("click", function() {
    		
    		form.attr("action" , "/diary/diaryInst").submit();
    	});
    
    
		function setThumbnail(event) {
		  var reader = new FileReader();
		
		  reader.onload = function(event) {
		    var img = document.createElement("img");
		    img.setAttribute("src", event.target.result);
		    document.querySelector("div#imgPreview").appendChild(img);
		  };
		
		  reader.readAsDataURL(event.target.files[0]);
		}
    </script>
    
    
</body>

</html>
