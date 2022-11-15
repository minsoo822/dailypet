<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko"> 
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>일기 작성</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
   <!-- Font Awesome --> 
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    
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
	.imgPreview {
		width: 550px;
		height: 400px;
	}
	.imgPreview img {
		width: 550px;
		height: 450px;
		margin-left: 10px;
		margin-right: 10px;
	}
	
</style>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<div class="diaryheader">
		<nav class="icon">
			<span style="font-size: 20px"><a href="diaryList.html"><i class="fa-sharp fa-solid fa-house"></i></a></span>
			<span style="font-size: 25px"><a href="diaryForm.html"><i class="fa-regular fa-square-plus"></i></a></span>
			<span><div class="profileheader"><a href="diaryMypage.html"><img src="/resources/images/jennieprofile.jpg" class="profilepic" alt=""></a></div></span>
		</nav>
	</div>
	<form  method = "POST" id="mainForm"  enctype="multipart/form-data"> 
    <div class="content">
	<input type="hidden" name="ifmmSeq" value="${sessSeq}">
        <div class="container2">
        	<div class="boxheader">
        		<span class="headercen">새 게시물 만들기</span>
        		<button type="button" id="diarySaveBtn">
        			<span class="headerrig">공유하기</span> 
        		</button>
        	</div>
        	<hr>
            <div class="row" id="whole">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12" id="filebox" style="border-right:1px solid lightgray; height: 490px;">
                	<div id="attachbox">
                		<button type="button" class="upload-Btn">파일 첨부  
							<input type="file" id="diary_image" name="diary_image"  multiple="multiple">  
						</button>
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
					<textarea class="form-control" placeholder="문구 입력..." name="ifdaContents" id="diarycontent"style="height: 400px"></textarea>
					
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
    
    <script>
    	
    	//var seq = $("input:hidden[name=ifmmSeq]");
    	var form = $("#mainForm");
    
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
