<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>

<html>
<head>
	<%@include file="../../../common/xdmin/include/head.jsp"%>
	<title>유기동물 검색</title>

	<style type="text/css">
	
		#imgsize {
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
	.btn {
		border: 0px;
		background-color: white;
		color: black;
		float: right;
		padding: 0px;
	}
	
	.left {
		background-color: #F0F0F0;
		border: 1px solid black;
		width: 75px;
	}
	
	.down {
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
	
	.image-dropping, .image-upload-wrap:hover {
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
	
	.fade {
		opacity: 100;
	}
</style>

</head>

<body>
	<!-- header s -->
	<%@include file="../../../common/xdmin/include/header.jsp"%>
	<!-- header e -->
	<form id="searchForm" method="post">
	<input type="hidden" name="iffpSeq" value="${vo.iffpSeq }">
	<input type="hidden" name="iffpSpotLocation" id="iffpSpotLocation" value="">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<div class="totalContent">
		<div class="container" style="width: 1175px;">
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
			<br> <br>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contentss">
					<span>사용 방법: Start -> 파일 첨부 -> Predict</span>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contents">
					<span>보다 정확한 결과를 위해 얼굴이 잘 보이는 선명한 사진으로 올려주세요. (한 장만 업로드
						해주세요.)</span>
				</div>
			</div>
			<!-- 이미지 업로드 코드 -->
			<div class="file-upload">
				<button class="file-upload-btn" type="button" id="start"
					onclick="init()">시작하기</button>
				<div class="image-upload-wrap" id="uploadBox">
					<input class="file-upload-input" type='file'
						onchange="readURL(this);" accept="image/*" />
					<div class="drag-text">
						<h3>Drag and drop a file or select add Image</h3>
					</div>
				</div>
				<div class="file-upload-content">
					<!-- <img class="file-upload-image" src="#" alt="your image" /> -->
					<img class="file-upload-image" id="upload-image" src="#"
						alt="your image" />
					<div class="image-title-wrap">
						<button type="button" onclick="removeUpload()"
							class="remove-image">
							Remove <span class="image-title">Uploaded Image</span>
						</button>
					</div>
				</div>
				<br>
				<button class="file-upload-btn" type="button" id="searching"
					onclick="predict()">검색하기</button>
			</div>
			<!-- <div class="row" style="float: right">
				<button type="button" class="left" onclick="predict()">Predict</button>
			</div> -->
			<br><br>
			<div id="label-container" style="display: none;"></div>
			<ul class="nav nav-tabs">
				<c:forEach items="${codeList }" var="item" varStatus="status" begin="0" end="17" step="1">
					<li class="nav-item">
						<a class="nav-link" id="category${item.ifcdSeq}" name="crArea${item.ifcdSeq}" onclick="area(${item.ifcdSeq})" aria-current="page" href="#"><c:out value="${item.ifcdName }" /></a>
					</li>
				</c:forEach> 
			</ul>
			<div class="content" style="padding-top: 50px;">
		        <div class="container">
		            <div class="row">
		            	<c:forEach items="${categorylist }" var="categorylist" varStatus="status">
			                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
			                    <div class="project-img mb30">
			                        <a href="javascript:goView(${categorylist.iffpSeq })" class="imghover">
			                        	<img id="imgsize" src="${categorylist.path }${categorylist.uuidName}" class="img-responsive" alt="">
			                        </a>
			                    </div> 
			                </div>
		                </c:forEach>
		            </div>
		        </div>
				<!-- pagination s -->
				<%@include file="../../../common/xdmin/include/pagination.jsp"%>
				<!-- pagination e -->
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

	<script
		src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
	<script class="jsbin"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

	<script type="text/javascript">
	
		var iffpSpotLocation = $("input:hidden[name=iffpSpotLocation]");
	    var seq = $("input:hidden[name=iffpSeq]");
	    var form = $("#searchForm");
	    
	   	var goUrlView = "/findpet/findpetView";
	   	var goUrlList = "/findpet/findpetSearchForm";
	   	
	   	goView = function(iffpSeq) {
	    	seq.attr("value", iffpSeq);
	    	form.attr("action", goUrlView).submit();
	    }
	   	goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action",goUrlList).submit();
		}
	   	
	    $("#chat").on("click", function(){
	    	location.href = "/chat/";
		});
	    
	    //지역 탭
	    area = function(key) {
    		//$("#asdfq").addClass('active');
    		//name="category" 
    		for(var i=11; i<28; i++){
    			$('a[name*="crArea"]' ).removeClass('active');
    			/* category.removeClass('active'); */
    		}
    		//내가 클릭한 이 태그에 addClass('active');
    		
    		// ajax(txt = html 태그 넣고  어쩌구.html(txt))로 할것인가 submit(새페이지 불러오고 대신 선택했던 지역탭에 addClass('active'))으로 할것인가 
			iffpSpotLocation.val(key)
    		form.attr("action" , "/findpet/findpetSearchForm").submit();
    		
    		$("#category"+key).addClass('active');
	    };
	    
	    $("#uploadBox").hide();
		$("#searching").hide();
	    //시작하기 버튼 누르기 전까진 파일첨부, 검색하기 박스 안 뜸
	    /* $(function(){
			$("#uploadBox").hide();
			$("#searching").hide();
			$("#start").change(function() {
				$("#uploadBox").show();
				$("#searching").show();
			}) 
		}); */
	    
	</script>
    	<!-- const M = 3, N = 4;        // 참고 2차원은 여기에서 관련이 없습니다.
    	 
    	var arr = [];
    	for (var i = 0; i < M; i++) {
    	     arr[i] = [];
    	}
    
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
	   	}); -->
	   	
	<script type="text/javascript">
	    
	    //이미지 찾기
	    const URL = "https://teachablemachine.withgoogle.com/models/3SWU0cqiQ/";
	
	    let model, labelContainer, maxPredictions;
	
	    // Load the image model and setup the webcam
	    async function init() {
	    	$("#uploadBox").show();
			$("#searching").show();
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
	        } // 출력
	        
	    }
	    
	    var animal = [];
    	var result = [];
    	var temp = [];
    	var finalAnimal = "";
    	var finalValue;
    	
	    // run the webcam image through the image model
	    async function predict() {
	    	var image = document.getElementById("upload-image");
	    	const prediction = await model.predict(image, false);
	        // predict can take in an image, video or canvas html element
	        
	       /*  $("#mySpinner").hide();
	        $("#mySpinner").show(); */
	        
	        for (let i = 0; i < maxPredictions; i++) {
	        	animal[i] = prediction[i].className;
	        	temp[i] = prediction[i].probability.toFixed(2);
	        	result[i] = prediction[i].probability.toFixed(2);
	        	
	            const classPrediction = prediction[i].className + ": " + prediction[i].probability.toFixed(2);
	            labelContainer.childNodes[i].innerHTML = classPrediction;
	            
	        } // 출력 형식
	        
	        result.sort(); // 
	        finalValue = result[result.length - 1];  // 배열의 마지막 값 출력

	        for(var i=0; i<temp.length; i++){
	        	if(temp[i] === finalValue){
	        		finalAnimal = animal[i];
	        		break;
	        	}
	        }        
	        
	        console.log("이 친구의 품종은" + " " + finalAnimal);
	        console.log(finalValue);
	       	/* const percent = Math.max.apply(null, result); */
	        /*  $("#mySpinner").hide(); */
	       
	        $.ajax({
				async: true
				,cach: false
				,method: "post"
				,url: "/findpet/findpetResult"
				,dataType: 'json'
				,data: {
					iffpBreed : finalAnimal 
				} 
				,success: function(response){
					for(var i=0; i<response.petList.length; i++){
						var txt="";
							txt += '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">';
							txt += '<div class="project-img mb30">';
							txt += '<a href="javascript:goView(';
							txt += response.petList[i].iffpSeq;
							txt += ')" class="imghover">';
							txt += '<img id="imgsize" src="';
							txt += response.petList[i].path + response.petList[i].uuidName;
							txt += '"';
							txt += 'class="img-responsive">';
							txt += '</a>';
							txt += '</div>';
							txt += '</div>';
							
							$("#petListArea").html(txt);
					}
					
					//location.href ="/findpet/findpetSearchForm"
					//이대로 넘기면 vo에 텅 사실 그냥 버튼 눌러서 오는 기본페이지 불러오는 곳
				}
				,error : function(){ 
					alert("ajax error..");
				}
			});
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