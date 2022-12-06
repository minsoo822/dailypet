<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>유기동물 등록 및 수정</title>

	<style type="text/css">
	
		.content {
			margin-top: 5%;
		}
		
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
		
		.div2 {
		    display: flex;
			margin-left: 30px;
		}
		
		.foot{
			font-size: 50px;
		}
		
		.top{	
			margin-top: 20px;
		}
	
		.top2{
			margin-top: 10px;
		}
		
		.foot2{
			color: #b5b5b5; 
			font-size: 50px;
		} 
		
		#mydiv {
	        height: 300px;
	        overflow: scroll;
	        background-color: #fcfcfc;
	    }
	    
	    #mydiv2 {
	    	background-color: #fcfcfc;
	    }
	    
	    .btnGroup .btn {
	    	padding: 10px 10px;
	    	width: 38px;
	    	margin: 0 5px;
	    }
	    
	    .gray {
	    	background-color: #e2e2e2;
	    	font-size: 16px;
	    	text-align: center;
	    	width: 150px;
	    	height: 35px;
	    	margin-top: 6px;
	    }
	
		hr{
			margin-top: 5px;
			margin-bottom: 3px;
		}
		
		hr1{
			margin-top: 10px;
			margin-bottom: 10px;
		}
		
		.form-control{
			color: black;
		}
		
		.form-select{
			width: 370px;
	    	height: 35px;
	    	font-size: 13px;
	   	    border: 1px solid #e2dcdb;
			margin-top: 5px;
		}
		
		.top3{
			margin-top: 6px;
		}
		
		.top4{
			margin-top: 4px;
		}
		
		label{
			font-size: 14px;
			font-weight: nomal;
		}
		
		.input{
			height: 35px;
			margin-top: 6px;
		}
		
		.form-check{
			margin-top: 10px;
		}
		
		.addScroll{
			overflow-y:auto;
			background-color:#E9ECEF;
			width: 475px;
			height: 180px;
		}
		
		.btn-secondary {
			background-color: #6C757D;
			color: white;
		}
		
		.btn-dark {
			background-color: black;
			color: white;
		}
		
		.btn-danger, #btnDelete {
			background-color: #DC3545;
			color: white;
		}
		
		.btn-outline-danger, #btnUelete {
			background-color: white;
			color: #DC3545;
		}
		
		.btn-warning, #btnReset {
			background-color: #FFC107;
			color: white;
		}
		
		.form-select {
			width: 325px;
		}
		
		.btn-close{
	    	background-color: transparent;
	    	border-color: transparent;
	    	margin-left: 480px;
	    }
	    
	    .modal-header{
	   		display: inline-flex;
	    }
	    
	    #addrClear {
	    	width: 35px;
	    	height: 35px; 
	    	margin-top: 6px; 
	    	border: none;
	    	border-radius: 6px;
	    }
	    
	    #iffpSpotDate {
	    	margin-top: 6px;
	    	width: 325px;
	    	height: 35px;
	    }
	    
	    #iffpName, #iffpSpotPlace, #iffpCharacteristic {
	    	width: 325px;
	    }
	    
	    .Scroll {
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
	 	
		.input-file-button {
			padding: 4px 25px;
			background-color:#FF6600;
			border-radius: 4px;
			color: white;
			cursor: pointer;
		}
		
		img {
			width: 100px;
			height: 100px;
		}
		 
	</style>
</head>

<body>
	
	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
    <!-- /.page header -->
    <form id="form" name="fpform" method="post" enctype="multipart/form-data">
    <input type="hidden" id="iffpSeq" value="${item.iffpSeq}">
	<div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2><b>유기동물 수정</b></h2>
                            </div>
                        </div>
                        <br>
                        <br>
                        <hr>
                        <div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">이미지 첨부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control" id="imagefile" name="findpet_img" type="file" multiple="multiple">
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div id="UploadedImagePreview" class="Scroll">
									<c:forEach items="${listimg }" var="listimg" varStatus="status">
										<img src="${listimg.path }${listimg.uuidName }">
									</c:forEach>
								</div>
							</div>
						</div>
						<hr>
                        <div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">삭제여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="iffpDelNY">
									<option selected>::선택::</option>
									<option value="1" <c:if test="${item.iffpDelNY eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.iffpDelNY eq 0}">selected</c:if>>N</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">지역</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="iffpSpotLocation">
									<option value="">::지역::</option>
									<c:forEach items="${listA}" var="listA" varStatus="status">
										<option value="<c:out value="${listA.ifcdSeq}"/>" <c:if test="${listA.ifcdSeq eq item.iffpSpotLocation }"> selected</c:if>><c:out value="${listA.ifcdName }"/></option>
									</c:forEach>
								</select>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">품종</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="iffpBreed">
									<option value="">::품종::</option>
									<c:forEach items="${listB}" var="listB" varStatus="status">
										<option value="<c:out value="${listB.ifcdSeq}"/>" <c:if test="${listB.ifcdSeq eq item.iffpBreed }"> selected</c:if>><c:out value="${listB.ifcdName }"/></option>
									</c:forEach>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">이름</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="iffpName" id="iffpName" value="<c:out value="${item.iffpName }"/>">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">발견장소</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="iffpSpotPlace" id="iffpSpotPlace" value="<c:out value="${item.iffpSpotPlace }"/>">
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">위탁장소</label>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1">
								<input class="form-control input" type="text" name="iffpAnimalShelterzipCode" id="iffpAnimalShelterzipCode" value="${item.iffpAnimalShelterzipCode }" placeholder="주소 찾기" readonly>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1" style="max-width: 50px">
								<button type="button" id="addrClear"><i class="fa-solid fa-rotate-left"></i></button>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="iffpAnimalShelter1" id="iffpAnimalShelter1" value="${item.iffpAnimalShelter1 }" readonly>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<input class="form-control input" type="text" name="iffpAnimalShelter2" id="iffpAnimalShelter2" value="${item.iffpAnimalShelter2 }">
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">발견일시</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control" type="datetime-local" id="iffpSpotDate" name="iffpSpotDate" value="${item.iffpSpotDate }">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">특이사항</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<textarea class="form-control" type="textarea" name="iffpCharacteristic" id="iffpCharacteristic" style="height: 100px; margin-top: 6px"><c:out value="${item.iffpCharacteristic }"/></textarea>
							</div>
						</div>
						<hr class="hr1">
						<br>
						<div class="btnGroup">
							<button type="button" class="btn btn-secondary" id="btnList"><i class="fa-solid fa-list"></i></button>
							<button type="button" class="btn btn-dark right" id="btnSubmit"><i class="fa-solid fa-check"></i></button>
							<button type="button" class="btn btn-danger right" data-toggle="modal" data-target="#deleteModal"><i class="fa-solid fa-trash"></i></button>
							<button type="button" class="btn btn-outline-danger right" data-toggle="modal" data-target="#ueleteModal"><i class="fa-solid fa-x"></i></button>
							<button type="button" class="btn btn-warning right" id="btnReset" data-toggle="modal" data-target="#resetModal"><i class="fa-solid fa-rotate-left"></i></button>
						</div>

						<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="deleteModalLabel" data-dismiss="modal">내용 취소</h5>
										<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x"></i></button>
									</div>
									<div class="modal-body">해당 데이터를 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-secondary" id="btnDelete">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="ueleteModal" tabindex="-1" role="dialog" aria-labelledby="ueleteModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="ueleteModalLabel" data-dismiss="modal">내용 취소</h5>
										<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x"></i></button>
									</div>
									<div class="modal-body">해당 데이터를 비활성화하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-secondary" id="btnUelete">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="resetModal" tabindex="-1" role="dialog" aria-labelledby="resetModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="resetModalLabel" data-dismiss="modal">내용 취소</h5>
										<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x"></i></button>
									</div>
									<div class="modal-body">입력한 데이터를 모두 삭제하시겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary">취소</button>
										<button type="button" class="btn btn-secondary" id="btnReset">삭제</button>
									</div>
								</div>
							</div>
						</div>
						<br>
                    </div>
                </div>
            </div> 
        </div>
    </div>
    </form>
    <form name="formVo" id="formVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="findpetVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
	<script type="text/javascript">
	
		var goUrlList = "/findpet/findpetxdList";
		var goUrlInst = "/findpet/findpetxdInst";
		var goUrlUpdt = "/findpet/findpetxdUpdt";
		var goUrlUele = "/findpet/findpetUele";
		var goUrlDele = "/findpet/findpetDele";
		var goUrlForm = "/findpet/findpetForm";
		
		var iffpSeq = $("#iffpSeq");
	
		var form = $("form[name=fpform]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSubmit").on("click", function(){
			if (iffpSeq.val() == "0" || iffpSeq.val() == ""){
		   		form.attr("action", goUrlInst).submit();
		   	} else {
		   		form.attr("action", goUrlUpdt).submit();
		   	}
		}); 
		
		$("#btnList").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		});
		
		$("#btnReset").on("click", function(){
			formVo.attr("action", goUrlForm).submit();
		});
		
		$("#btnDelete").on("click", function(){
			formVo.attr("action", goUrlDele).submit();
		});
		
		$("#btnUelete").on("click", function(){
			formVo.attr("action", goUrlUele).submit();
		});
	
	</script>
	
	<script type="text/javascript">
		
		$("#iffpAnimalShelterzipCode").on("click", function() {
			here();
		});
		
		function here() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('iffpAnimalShelterzipCode').value = data.zonecode;
	                document.getElementById("iffpAnimalShelter1").value = roadAddr;
	                // 커서를 상세주소로 이동한다
	                document.getElementById('iffpAnimalShelter2').focus();
	                
	            }
	        }).open();
	    }
		
		$("#addrClear").on("click", function() {
			$("#iffpAnimalShelterzipCode").val('');
			$("#iffpAnimalShelter1").val('');
			$("#iffpAnimalShelter2").val('');
		});
	
	</script>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>