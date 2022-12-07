<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>회원 등록 및 수정</title>

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
			font-size: 14px;
			margin-bottom: 15px;
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
	    
	    .Scroll {
			overflow-y:auto;
			width: 550px;
			height: 120px;
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
    <form id="form" name="memform" method="post" enctype="multipart/form-data">
    <input type="hidden" name="seq">
    <input type="hidden" id="ifmmSeq" value="${item.ifmmSeq}">
	<div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h2><b>회원 등록 및 수정</b></h2>
                            </div>
                        </div>
                        <br>
                        <hr>
                        <div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">이미지 첨부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control" id="imagefile" name="user_image" type="file" multiple="multiple" style="margin-top: 6px; height: 35px">
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
								<label class="top4">탈퇴여부</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<select class="form-select" name="ifmmDelNy">
									<option selected>::선택::</option>
									<option value="1" <c:if test="${item.ifmmDelNy eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.ifmmDelNy eq 0}">selected</c:if>>N</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">번호</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifmmSeq" id="ifmmSeq" value="<c:out value="${item.ifmmSeq }"/>" readonly>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">회원 이름</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifmmName" id="ifmmName" value="<c:out value="${item.ifmmName }"/>" readonly>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">아이디</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifmmID" id="ifmmID" value="<c:out value="${item.ifmmID }"/>" readonly>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">닉네임</label>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifmmNickname" id="ifmmNickname" value="<c:out value="${item.ifmmNickname }"/>">
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">연락처</label>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1">
								<select class="form-select" name="ifmmTelecom">
									<option value="">::선택::</option>
									<option value="1" <c:if test="${item.ifmmTelecom eq 1}">selected</c:if>>SKT</option>
									<option value="2" <c:if test="${item.ifmmTelecom eq 2}">selected</c:if>>KT</option>
									<option value="3" <c:if test="${item.ifmmTelecom eq 3}">selected</c:if>>LG</option>
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
                        		<input class="form-control input" type="text" name="ifmmTel" id="ifmmTel" value="${item.ifmmTel}" placeholder="ex)010-0000-0000">
                        	</div>
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">이메일</label>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<input class="form-control input" type="text" name="ifmmEmailID" id="ifmmEmailID" value="${item.ifmmEmailID}">
							</div>
							<div class="col-1" style="max-width: 10px; margin: 7px 10px 0 0">
								<span>@</span>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<select class="form-select" name="ifmmEmailDomain" style="max-width: 165px">
									<option value="">::선택::</option>
									<option value="4" <c:if test="${item.ifmmEmailDomain eq 4}">selected</c:if>>naver.com</option>
									<option value="5" <c:if test="${item.ifmmEmailDomain eq 5}">selected</c:if>>gmail.com</option>
									<option value="6" <c:if test="${item.ifmmEmailDomain eq 6}">selected</c:if>>hanmail.net</option>
									<option value="7" <c:if test="${item.ifmmEmailDomain eq 7}">selected</c:if>>nate.com</option>
									<option value="8" <c:if test="${item.ifmmEmailDomain eq 8}">selected</c:if>>daum.com</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">주소</label>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1">
								<input class="form-control input" type="text" name="ifmmZipcode" id="ifmmZipcode" value="${item.ifmmZipcode }" placeholder="주소 찾기" readonly>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1" style="max-width: 50px">
								<button type="button" id="addrClear"><i class="fa-solid fa-rotate-left"></i></button>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4">
								<input class="form-control input" type="text" name="ifmmAddr1" id="ifmmAddr1" value="${item.ifmmAddr1 }" readonly>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<input class="form-control input" type="text" name="ifmmAddr2" id="ifmmAddr2" value="${item.ifmmAddr2 }">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2">
								<input class="form-control input" type="text" name="ifmmAddr3" id="ifmmAddr3" value="${item.ifmmAddr3 }" readonly>
							</div>
						</div>
						<hr>
						<div class="row div2 left">
							<div class="col-lg-2 col-md-2 col-sm-2 gray">
								<label class="top4">자기소개</label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9">
								<input class="form-control input" type="text" name="ifmmIntroduction" id="ifmmIntroduction" value="${item.ifmmIntroduction }" >
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
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
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
	
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
		var goUrlForm = "/member/memberForm";
		
		var ifmmSeq = $("#ifmmSeq");
	
		var form = $("form[name=memform]");
		var formVo = $("form[name=formVo]");
	
		$("#btnSubmit").on("click", function(){
			if (ifmmSeq.val() == "0" || ifmmSeq.val() == ""){
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
		
		$("#ifmmZipcode").on("click", function() {
			here();
		});
		
		function here() {
		    new daum.Postcode({
		          oncomplete: function(data) {
		       	    var addr = '';
		  		    var extraAddr = '';
		
					if (data.userSelectedType === 'R') { 
		                  addr = data.roadAddress;
		              } else { 
		                  addr = data.jibunAddress;
		              }
		
		              if(data.userSelectedType === 'R'){
		                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                      extraAddr += data.bname;
		                  }
		                  if(data.buildingName !== '' && data.apartment === 'Y'){
		                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                  }
		                  if(extraAddr !== ''){
		                      extraAddr = ' (' + extraAddr + ')';
		                  }
		                  document.getElementById("ifmmAddr3").value = extraAddr;
		              
		              } else {
		                  document.getElementById("ifmmAddr3").value = '';
		              }
		
		              document.getElementById('ifmmZipcode').value = data.zonecode;
		              document.getElementById('ifmmAddr1').value = addr;
		              document.getElementById('ifmmAddr2').focus();
		              
					}
		    
		    }).open();
		}
		
		$("#addrClear").on("click", function() {
			$("#ifmmZipcode").val('');
			$("#ifmmAddr1").val('');
			$("#ifmmAddr2").val('');
			$("#ifmmAddr3").val('');
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