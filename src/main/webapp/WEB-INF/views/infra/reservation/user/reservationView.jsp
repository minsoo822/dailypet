<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
	<title>나의 예약 정보</title>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
</head>

<style type="text/css">

	.form-control {
		color: black;
	}
	
	.container2 {
		display: flex;
		justify-content : center;
	}
	
	.bg-light {
		width: 1000px;
		background-color: #f8f9fa !important;
	}
	.buttongroup {
		margin-top: 20px;
	}
	
	.form-control, .form-select {
		border-radius: 6px;
	}
	
	#cbtn {
		margin-top: 20px;
	}
	
	#returnbtn {
		background-color: white;
		color: #372d2b;
	}
	.changebtn {
		border: 1px solid #372d2b;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 130px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13px;
    	font-weight: bold;
	}
	.changebtn:hover {
		background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
	}
	
	.btnDelete {
		border: 1px solid #efefef;
    	background: #CC3333;
    	color: #f3f0eb;
    	text-align: center;
    	width: 130px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13px;
    	font-weight: bold;
	}
</style>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form id="form" name="reserform" method="post">
    	<input type="hidden" id="ifrsSeq" name="ifrsSeq" value="${meInfo.ifrsSeq}">
    	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${info.ifmmSeq}">
		<div class="totalContent">
		    <div class="content">
		        <div class="container2">
		        	<div class="bg-light pinside30">
					    <div class="row">
					        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					            <h1><b>나의 예약 정보</b></h1>
				                <div class="row">
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifmmName">고객명</label>
			                                <p><c:out value="${meInfo.ifmmName}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPetName">예약자명</label>
			                                <p><c:out value="${meInfo.ifrsPetName}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifmmTel">연락처</label><br>
											<p><c:out value="${meInfo.ifmmTel}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsHopeDate">예약 희망 날짜</label>
				                            <p><c:out value="${meInfo.ifrsHopeDate}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsLocation">위치</label>
			                                <p><c:out value="${meInfo.ifrsLocation}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPlace">예약 장소</label>
			                                <p><c:out value="${meInfo.ifrsPlace}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPurpose">예약 목적</label>
			                                <p><c:out value="${meInfo.ifrsPurpose}" /></p>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group">
				                            <label class="control-label" for="ifrsRequest">요청사항</label>
				                            <p><c:out value="${meInfo.ifrsRequest}" /></p>
				                        </div>
				                    </div>
				                    <div class="buttongroup">
				                    	<div class="col-md-1" id="cbtn">
					                        <div class="form-group">
				                        		<button type="button" id="listbtn" class="btn listbtn"><i class="fa-solid fa-list-ul fa-2x"></i></button>
					                        </div>
					                    </div>
					                    <div class="row justify-content-center">
					                    	<!-- 예약 삭제 버튼(모달까지) -->
					                    	<div class="col-md-2" id="cbtn">
						                        <div class="form-group">
					                        		<button type="button" class="btn btnDelete" data-toggle="modal" data-target="#deleteModal">예약 취소</button>
						                        	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="deleteModalLabel" data-dismiss="modal">예약 취소</h5>
																	<button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x"></i></button>
																</div>
																<div class="modal-body">해당 예약을 삭제하시겠습니까? 삭제 시 복구는 불가합니다.</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																	<button type="button" class="btn btn-secondary" id="btnDel">삭제</button>
																</div>
															</div>
														</div>
													</div>
						                        </div>
						                    </div>
											<!-- 예약 삭제 버튼(모달까지) -->
					                    	<div class="col-md-2" id="cbtn">
						                        <div class="form-group">
					                        		<button type="button" class="btn changebtn" onclick="javascript:goForm(${meInfo.ifrsSeq})"/>내용 변경</button>
						                        </div>
						                    </div>
					                    </div>
									</div>
				                </div>
					        </div>
					    </div>
					</div>
		        </div>
		    </div>
	    </div>
	</form>
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    
    <script type="text/javascript">
    	
	    var ifrsSeq = $("#ifrsSeq");
	    var ifmmSeq = $("#ifmmSeq");
		
		var form = $("form[name=reserform]");
//		var formVo = $("form[name=formVo]");
		
		var goUrlList = "/reservation/reservationPage";
		var goUrlForm = "/reservation/reservationForm";
    	var goUrlDele = "/reservation/deleteInfo";
    	
		goForm = function(key) {
			ifrsSeq.attr("value", key); 
			form.attr("action", goUrlForm).submit();
		}
		
    	/* $("#changebtn").on("click", function(ifrsSeq){
    		form.attr("action", goUrlForm).submit();
		}); */
    	
    	$("#listbtn").on("click", function(){
    		$(location).attr("href", goUrlList).submit();
		});
    
	    $("#btnDel").on("click", function(){
			form.attr("action", goUrlDele).submit();
		});
    
    </script>
    
</body>

</html>