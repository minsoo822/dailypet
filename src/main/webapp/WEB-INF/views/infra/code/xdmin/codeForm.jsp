<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>반려동물 리스트</title>

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
		
		select{
			width: 370px;
	    	height: 35px;	
	   	    border: 1px solid #e2dcdb;
			font-size: 14px;
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
		 
	</style>
</head>

<body>
	
	<%@include file="../../../common/xdmin/include/header.jsp"%>
	
    <!-- /.page header -->
    <form id="form" name="codeform" method="post">
    <input type="hidden" id="ifcdSeq" value="${item.ifcdSeq}">
	<div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2><b>코드 수정</b></h2>
                            </div>
                        </div>
                        <br>
                        <br>
                       <!--  <h3><b>기본 정보</b></h3> -->
                        <hr>
                        <div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">사용여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifcdUseNy">
									<option selected>::선택::</option>
									<option value="1" <c:if test="${item.ifcdUseNy eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.ifcdUseNy eq 0}">selected</c:if>>N</option>
								</select>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">삭제여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifcdDelNy">
									<option selected>::선택::</option>
									<option value="1" <c:if test="${item.ifcdDelNy eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.ifcdDelNy eq 0}">selected</c:if>>N</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">번호</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifcdSeq" id="ifcdSeq" value="<c:out value="${item.ifcdSeq }"/>" readonly>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">코드그룹 이름</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="cg_ifcgSeq">
									<option value="">::코드그룹명::</option>
									<c:forEach items="${add}" var="add" varStatus="status">
										<option value="<c:out value="${add.ifcgSeq}"/>" <c:if test="${add.ifcgSeq eq item.cg_ifcgSeq }"> selected</c:if>><c:out value="${add.ifcgName }"/></option>
									</c:forEach>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">코드 이름(한글)</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifcdName" id="ifcdName" value="<c:out value="${item.ifcdName }"/>">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">코드 이름(영문)</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifcdName_eng" id="ifcdName_eng" value="<c:out value="${item.ifcdName_eng }"/>">
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">설명</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<textarea class="form-control" type="textarea" name="cgcontent" id="cgcontent" style="height: 100px"></textarea>
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
	<%@include file="codeVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
   
	<script type="text/javascript">
	
		var goUrlList = "/code/codeList";
		var goUrlInst = "/code/codeInst";
		var goUrlUpdt = "/code/codeUpdt";
		var goUrlUele = "/code/codeUele";
		var goUrlDele = "/code/codeDele";
		var goUrlForm = "/code/codeForm";
		
		var ifcdSeq = $("#ifcdSeq");
	
		var form = $("form[name=codeform]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSubmit").on("click", function(){
			if (ifcdSeq.val() == "0" || ifcdSeq.val() == ""){
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