<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

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
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    
   	<title>유기동물 검색</title>
     
    <style type="text/css">
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
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .Reserbtn:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    
	    .contents {
	    	color: red;
	    	font-size: 13px;
	    	font-weight: bold;
	    	width: 50%;
	    	margin-left: 190px;
	    }
	    
	    .contentss {
	    	color: red;
	    	font-size: 17px;
	    	font-weight: bold;
	    	width: 50%;
	    	margin-left: 190px;
	    }
	    
	    /* inputfile 커스텀 s */
	   /*  .filebox {
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
		    padding: 12px 10px;
		    vertical-align: middle;
		    background: #f3f0eb;
	    	color: #372d2b;
		    width: 50px;
	    	height: 50px;
	    	border-radius: 10px; 
	    	font-size: 13px;
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
		} */
		/* inputfile 커스텀 e */
		
		/* 이미지 프리뷰 s */
		/* .preview {
			margin-bottom: 50px;
		}
		
	    .imgs_wrap {
			background: #E9ECEF;
			height: 200px;
		}
		
		.imgs_wrap img {
			height: 180px;
			width: 180px;
			max-width: 100%;
			max-height: 100%;
			padding: 20px 0px 0px 40px;
		} */
	    /* 이미지 프리뷰 e */
	    
	    .btn{
	    	border: 0px;
	    	background-color: white;
			color: black;
			float: right;
			padding: 0px;
	    }
	    
	    .down{
	    	margin-top: 5px;
	    } 
	    
	    /* 이미지 첨부 */
	    .file-upload {
		    background-color: #ffffff;
		    width: 800px;
		    margin: 0 auto;
		    padding: 20px;
		}
		
		.file-upload-btn {
		    width: 100%;
		    margin: 0;
		    color: #372d2b;
		    background: #f3f0eb;
		    border: none;
		    padding: 10px;
		    border-radius: 4px;
		    transition: all .2s ease;
		    outline: none;
		    text-transform: uppercase;
		    font-weight: 700;
		}
		
		.file-upload-btn:hover {
		    background: #372d2b;
		    color: #ffffff;
		    transition: all .2s ease;
		    cursor: pointer;
		}
		
		.file-upload-btn:active {
		    border: 0;
		    transition: all .2s ease;
		}
		
		.file-upload-content {
		    display: none;
		    text-align: center;
		}
		
		.file-upload-input {
		    position: absolute;
		    margin: 0;
		    padding: 0;
		    width: 100%;
		    height: 100%;
		    outline: none;
		    opacity: 0;
		    cursor: pointer;
		}
		
		.image-upload-wrap {
		    margin-top: 20px;
		    border: 4px dashed #c3b9b6;
		    position: relative;
		}
		
		.image-dropping,
		.image-upload-wrap:hover {
		    background-color: #ffffff;
		    border: 4px dashed #372d2b;
		}
		
		.image-title-wrap {
		    padding: 0 15px 15px 15px;
		    color: #222;
		}
		
		.drag-text {
		    text-align: center;
		}
		
		.drag-text h3 {
		    font-weight: 100;
		    text-transform: uppercase;
		    color: #3d423f;
		    padding: 60px 0;
		}
		
		.file-upload-image {
		    max-height: 200px;
		    max-width: 200px;
		    margin: auto;
		    padding: 20px;
		}
		
		.remove-image {
		    width: 200px;
		    margin: 0;
		    color: #fff;
		    background: #cd4535;
		    border: none;
		    padding: 5px;
		    border-radius: 4px;
		    transition: all .2s ease;
		    outline: none;
		    text-transform: uppercase;
		    font-size: 14px;
		}
		
		.remove-image:hover {
		    background: #c13b2a;
		    color: #ffffff;
		    transition: all .2s ease;
		    cursor: pointer;
		}
		
		.remove-image:active {
		    border: 0; 
		    transition: all .2s ease;
		}
		
		.nav-tabs {
		    border-bottom: 1px solid #ddd;
		}
		
		.nav {
		    padding-left: 0;
		    margin-bottom: 0;
		    list-style: none;
		}
		
		.nav-tabs>li {
		    float: left;
		    margin-bottom: -1px;
		}
		
		.nav>li {
		    position: relative;
		    display: block;
		}
		
		.nav-tabs>li>.active {
		    margin-right: 2px;
		    line-height: 1.42857143;
		    border: 1px solid transparent;
		    border-radius: 4px 4px 0 0;
		    background-color: #C9AF96 !important;
		    color: white !important;
		}
		
		.nav-tabs>li>.nav-link {
		    margin-right: 2px;
		    line-height: 1.42857143;
		    border: 1px solid transparent;
		    border-radius: 4px 4px 0 0;
		    color: #aa9144;
		}
		
		.nav>li>.nav-link {
		    position: relative;
		    background-color: transparent;
		    display: block;
		    padding: 10px 15px;
		}
		
    </style>
    
</head>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <div class="totalContent">
    	<div class="container">
		    <!-- <div class="row Search">
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
			    	<div class="filebox">
					    <input type="text" class="upload-name" value="첨부파일" placeholder="첨부파일">
					    <label for="input_imgs" class="down"><i class="fa-solid fa-magnifying-glass"></i></label>
	    				<button class="Reserbtn" id="reset"><i class="fa-solid fa-rotate-left"></i></button>
					    <input type="file" id="input_imgs" multiple />
					</div>
		    	</div>
		    </div> -->
		    <!-- <div class="row preview">
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		    		<div class="imgs_wrap">
						<img>
						<button type="button" onclick="init()">시작</button>
						<button type="button" onclick="predict()">찾아보기</button>
					</div>
		    	</div>
		    </div> -->
		  	<br>
		  	<br>
		  	<div class="row">
		  		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contentss">
				   <span>사용 방법: Start -> 파일 첨부 -> Predict</span>
		    	</div>
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contents">
				   <span>보다 정확한 결과를 위해 얼굴이 잘 보이는 선명한 사진으로 올려주세요. (한 장만 업로드 해주세요.)</span>
		    	</div>
	   		</div>
		  	<!-- 이미지 업로드 코드 -->
		    <div class="file-upload">
		        <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">Add Image</button>
		        <div class="image-upload-wrap">
		            <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
		            <div class="drag-text">
		                <h3>Drag and drop a file or select add Image</h3>
		            </div>
		        </div>
		        <div class="file-upload-content">
		            <!-- <img class="file-upload-image" src="#" alt="your image" /> -->
		            <img class="file-upload-image" id="upload-image" src="#" alt="your image" />
		            <div class="image-title-wrap">
		                <button type="button" onclick="removeUpload()" class="remove-image">Remove <span class="image-title">Uploaded Image</span></button>
		            </div>
		        </div>
		    </div>
		    <div class="row" style="float: right">
		    	<button type="button" class="left" onclick="init()">Start</button>
			    <button type="button" class="left" onclick="predict()">Predict</button>
		    </div>
		    		    	</div>
		    </div> -->
		  	<br>
		  	<br>
		  	<div class="row">
		  		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contentss">
				   <span>사용 방법: Start -> 파일 첨부 -> Predict</span>
		    	</div>
			    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contents">
				   <span>보다 정확한 결과를 위해 얼굴이 잘 보이는 선명한 사진으로 올려주세요. (한 장만 업로드 해주세요.)</span>
		    	</div>
	   		</div>
		  	<!-- 이미지 업로드 코드 -->
		    <div class="file-upload">
		        <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">Add Image</button>
		        <div class="image-upload-wrap">
		            <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
		            <div class="drag-text">
		                <h3>Drag and drop a file or select add Image</h3>
		            </div>
		        </div>
		        <div class="file-upload-content">
		            <!-- <img class="file-upload-image" src="#" alt="your image" /> -->
		            <img class="file-upload-image" id="upload-image" src="#" alt="your image" />
		            <div class="image-title-wrap">
		                <button type="button" onclick="removeUpload()" class="remove-image">Remove <span class="image-title">Uploaded Image</span></button>
		            </div>
		        </div>
		    </div>
		    <div class="row" style="float: right">
		    	<button type="button" class="left" onclick="init()">Start</button>
			    <button type="button" class="left" onclick="predict()">Predict</button>
		    </div>
		    <br>
		    <br>
		    <div id="label-container"></div>
			<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 1158.2px">
				<li class="nav-item" role="presentation">
					<button class="nav-link active" id="korea-tab" data-bs-toggle="tab" data-bs-target="#koreaTab" type="button" role="tab" aria-controls="koreaTab" aria-selected="true">전국</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="seoul-tab" data-bs-toggle="tab" data-bs-target="#seoulTab" type="button" role="tab" aria-controls="seoulTab" aria-selected="false">서울</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="gyeonggi-tab" data-bs-toggle="tab" data-bs-target="#gyeonggiTab" type="button" role="tab" aria-controls="gyeonggiTab" aria-selected="false">경기</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="incheon-tab" data-bs-toggle="tab" data-bs-target="#incheonTab" type="button" role="tab" aria-controls="incheonTab" aria-selected="false">인천</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="gangwon-tab" data-bs-toggle="tab" data-bs-target="#gangwonTab" type="button" role="tab" aria-controls="gangwonTab" aria-selected="false">강원</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="busan-tab" data-bs-toggle="tab" data-bs-target="#busanTab" type="button" role="tab" aria-controls="busanTab" aria-selected="false">부산</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="daegu-tab" data-bs-toggle="tab" data-bs-target="#daeguTab" type="button" role="tab" aria-controls="daeguTab" aria-selected="false">대구</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="daejeon-tab" data-bs-toggle="tab" data-bs-target="#daejeonTab" type="button" role="tab" aria-controls="daejeonTab" aria-selected="false">대전</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="gwangju-tab" data-bs-toggle="tab" data-bs-target="#gwangjuTab" type="button" role="tab" aria-controls="gwangjuTab" aria-selected="false">광주</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="ulsan-tab" data-bs-toggle="tab" data-bs-target="#ulsanTab" type="button" role="tab" aria-controls="ulsanTab" aria-selected="false">울산</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="sejong-tab" data-bs-toggle="tab" data-bs-target="#sejongTab" type="button" role="tab" aria-controls="sejongTab" aria-selected="false">세종</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="chungbuk-tab" data-bs-toggle="tab" data-bs-target="#chungbukTab" type="button" role="tab" aria-controls="chungbukTab" aria-selected="false">충북</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="chungnam-tab" data-bs-toggle="tab" data-bs-target="#chungnamTab" type="button" role="tab" aria-controls="chungnamTab" aria-selected="false">충남</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="gyeongbuk-tab" data-bs-toggle="tab" data-bs-target="#gyeongbukTab" type="button" role="tab" aria-controls="gyeongbukTab" aria-selected="false">경북</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="gyeongnam-tab" data-bs-toggle="tab" data-bs-target="#gyeongnamTab" type="button" role="tab" aria-controls="gyeongnamTab" aria-selected="false">경남</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="jeonbuk-tab" data-bs-toggle="tab" data-bs-target="#jeonbukTab" type="button" role="tab" aria-controls="jeonbukTab" aria-selected="false">전북</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="jeonnam-tab" data-bs-toggle="tab" data-bs-target="#jeonnamTab" type="button" role="tab" aria-controls="jeonnamTab" aria-selected="false">전남</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="jeju-tab" data-bs-toggle="tab" data-bs-target="#jejuTab" type="button" role="tab" aria-controls="jejuTab" aria-selected="false">제주</button>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="koreaTab" role="tabpanel" aria-labelledby="korea-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="seoulTab" role="tabpanel" aria-labelledby="seoul-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="gyeonggiTab" role="tabpanel" aria-labelledby="gyeonggi-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="incheonTab" role="tabpanel" aria-labelledby="incheon-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="gangwonTab" role="tabpanel" aria-labelledby="gangwon-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="busanTab" role="tabpanel" aria-labelledby="busan-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="daeguTab" role="tabpanel" aria-labelledby="daegu-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="daejeonTab" role="tabpanel" aria-labelledby="daejeon-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="gwangjuTab" role="tabpanel" aria-labelledby="gwangju-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="ulsanTab" role="tabpanel" aria-labelledby="ulsan-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="sejongTab" role="tabpanel" aria-labelledby="sejong-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="chungbukTab" role="tabpanel" aria-labelledby="chungbuk-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="chungnamTab" role="tabpanel" aria-labelledby="chungnam-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="gyeongbukTab" role="tabpanel" aria-labelledby="gyeongbuk-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="gyeongnamTab" role="tabpanel" aria-labelledby="gyeongnam-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="jeonbukTab" role="tabpanel" aria-labelledby="jeonbuk-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="jeonnamTab" role="tabpanel" aria-labelledby="jeonnam-tab" tabindex="0"></div>
				<div class="tab-pane fade" id="jejuTab" role="tabpanel" aria-labelledby="jeju-tab" tabindex="0"></div>
			</div>		
	    </div>
	    <div class="content" style="padding-top: 50px;">
	        <div class="container">
	            <div class="row">
		            	<c:forEach items="${list }" var="list" varStatus="status">
			                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
			                    <div class="project-img mb30">
			                        <a href="javascript:goView(${list.iffpSeq })" class="imghover"><img class="imgsize" src="${list.path }${list.uuidName}" class="img-responsive" alt="Interior Design Website Templates Free Download"></a>
			                    </div>
			                </div>
		                </c:forEach>
		            </div>
	            <!-- pagination s -->
				<%@include file="../../../common/xdmin/include/pagination.jsp"%>
				<!-- pagination e -->
				<br>
				<button type="button" class="btn" id="chat">관리자와 채팅하기</button>
	        </div>
	    </div>
    </div>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
    <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		    
    <script type="text/javascript">
	   /*  $("#file").on('change',function(){
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
	    
	    $("#chat").on("click", function(){
	    	location.href = "/chat/";
		});  */
	    
	    
	    //이미지 찾기
	    const URL = "https://teachablemachine.withgoogle.com/models/3SWU0cqiQ/";
	
	    let model, labelContainer, maxPredictions;
	
	    // Load the image model and setup the webcam
	    async function init() {
	        const modelURL = URL + "model.json";
	        const metadataURL = URL + "metadata.json";
	
	        // load the model and metadata
	        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
	        // or files from your local hard drive
	        // Note: the pose library adds "tmImage" object to your window (window.tmImage)
	        model = await tmImage.load(modelURL, metadataURL);
	        maxPredictions = model.getTotalClasses();
	
	        // append elements to the DOM
	        labelContainer = document.getElementById("label-container");
	        for (let i = 0; i < maxPredictions; i++) { // and class labels
	            labelContainer.appendChild(document.createElement("div"));
	        }
	    }
	
	    // run the webcam image through the image model
	    async function predict() {
	    	var image = document.getElementById("upload-image");
	    	const prediction = await model.predict(image, false);
	        // predict can take in an image, video or canvas html element
	        
	       /*  $("#mySpinner").hide();
	        $("#mySpinner").show(); */
	        
	        for (let i = 0; i < maxPredictions; i++) {
	            const classPrediction =
	                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
	            labelContainer.childNodes[i].innerHTML = classPrediction;
	        }
	       /*  $("#mySpinner").hide(); */
	    }
	
	    // 이미지 업로드 JavaScript 코드
	    function readFile(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	
	            reader.onload = function (e) {
	                var htmlPreview =
	                    '<img width="200" src="' + e.target.result + '" />' +
	                    '<p>' + input.files[0].name + '</p>';
	                var wrapperZone = $(input).parent();
	                var previewZone = $(input).parent().parent().find('.preview-zone');
	                var boxZone = $(input).parent().parent().find('.preview-zone').find('.box').find('.box-body');
	
	                wrapperZone.removeClass('dragover');
	                previewZone.removeClass('hidden');
	                boxZone.empty();
	                boxZone.append(htmlPreview);
	            };
	
	            reader.readAsDataURL(input.files[0]);
	        }
	    }
	
	    function reset(e) {
	        e.wrap('<form>').closest('form').get(0).reset();
	        e.unwrap();
	    }
	
	    $(".dropzone").change(function () {
	        readFile(this);
	    });
	
	    $('.dropzone-wrapper').on('dragover', function (e) {
	        e.preventDefault();
	        e.stopPropagation();
	        $(this).addClass('dragover');
	    });
	
	    $('.dropzone-wrapper').on('dragleave', function (e) {
	        e.preventDefault();
	        e.stopPropagation();
	        $(this).removeClass('dragover');
	    });
	
	    $('.remove-preview').on('click', function () {
	        var boxZone = $(this).parents('.preview-zone').find('.box-body');
	        var previewZone = $(this).parents('.preview-zone');
	        var dropzone = $(this).parents('.form-group').find('.dropzone');
	        boxZone.empty();
	        previewZone.addClass('hidden');
	        reset(dropzone);
	    });
	
	    function readURL(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	                $('.image-upload-wrap').hide();
	                $('.file-upload-image').attr('src', e.target.result);
	                $('.file-upload-content').show();
	                $('.image-title').html(input.files[0].name);
	            };
	            reader.readAsDataURL(input.files[0]);
	        } else {
	            removeUpload();
	        }
	    }
	
	    function readURL(input) {
	        if (input.files && input.files[0]) {
	
	            var reader = new FileReader();
	
	            reader.onload = function (e) {
	                $('.image-upload-wrap').hide();
	
	                $('.file-upload-image').attr('src', e.target.result);
	                $('.file-upload-content').show();
	
	                $('.image-title').html(input.files[0].name);
	            };
	
	            reader.readAsDataURL(input.files[0]);
	
	        } else {
	            removeUpload();
	        }
	    }
	
	    function removeUpload() {
	        $('.file-upload-input').replaceWith($('.file-upload-input').clone());
	        $('.file-upload-content').hide();
	        $('.image-upload-wrap').show();
	    }
	    
	    $('.image-upload-wrap').bind('dragover', function () {
	        $('.image-upload-wrap').addClass('image-dropping');
	    });
	    
	    $('.image-upload-wrap').bind('dragleave', function () {
	        $('.image-upload-wrap').removeClass('image-dropping');
	    });  	
    </script>
    
</body>
</html>