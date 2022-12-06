<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>반려동물 등록 및 수정</title>

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
			height: 120px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
			width: 550px;
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
    <form id="form" name="amform" method="post" enctype="multipart/form-data">
    <input type="hidden" id="ifamSeq" value="${item.ifamSeq}">
	<div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2><b>반려동물 수정</b></h2>
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
								<input class="form-control" id="imagefile" name="pet_image" type="file" multiple="multiple" style="margin-top: 6px; height: 35px">
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
								<label class="top4">회원명(주인)</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifmmName">
									<option value="">::회원 찾기::</option>
									<c:forEach items="${with}" var="with" varStatus="status">
										<option value="<c:out value="${with.ifmmSeq}"/>" <c:if test="${with.ifmmSeq eq item.mm_ifmmSeq }"> selected</c:if>><c:out value="${with.ifmmName }"/></option>
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
								<input class="form-control input" type="text" name="ifamName" id="ifamName" value="<c:out value="${item.ifamName }"/>">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">품종</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" id="ifamKind" name="ifamKind" value="${item.ifamKind }">
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">나이</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifamAge" id="ifamAge" value="<c:out value="${item.ifamAge }"/>">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">성별</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifamGender">
									<option selected>::성별::</option>
									<option value="9" <c:if test="${item.ifamGender eq 9}">selected</c:if>>수컷</option>
									<option value="10" <c:if test="${item.ifamGender eq 10}">selected</c:if>>암컷</option>
									<option value="11" <c:if test="${item.ifamGender eq 11}">selected</c:if>>중성화</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">칩 여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifamChipNY">
									<option selected>::칩 여부::</option>
									<option value="0" <c:if test="${item.ifamChipNY eq 0}">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.ifamChipNY eq 1}">selected</c:if>>Y</option>
								</select>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">접종 여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifamVaccinateNY">
									<option selected>::접종 여부::</option>
									<option value="0" <c:if test="${item.ifamVaccinateNY eq 0}">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.ifamVaccinateNY eq 1}">selected</c:if>>Y</option>
								</select>
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
	<%@include file="animalVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
	<script type="text/javascript">
	
		var goUrlList = "/animal/animalList";
		var goUrlInst = "/animal/animalInst";
		var goUrlUpdt = "/animal/animalUpdt";
		var goUrlUele = "/animal/animalUele";
		var goUrlDele = "/animal/animalDele";
		var goUrlForm = "/animal/animalForm";
		
		var ifamSeq = $("#ifamSeq");
	
		var form = $("form[name=amform]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSubmit").on("click", function(){
			if (ifamSeq.val() == "0" || ifamSeq.val() == ""){
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