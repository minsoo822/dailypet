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
/* -------------------------------------------------------------- */
	.modal_overlay {
    	z-index: 999;
        width: 100%;
        height: 100%;
        display: none;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    .modal_window {
		z-index: 999;
        background: white;
        backdrop-filter: blur(13.5px);
        -webkit-backdrop-filter: blur(13.5px);
        border-radius: 10px;
        border: 1px solid rgba(0, 0, 0, 0.18);
        text-align: center;
        width: 550px;
        height: 300px;
        position: relative;
        bottom: 750px;
       
    }
     .modal_title{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        font-weight: bold;
        font-size: 20px;
        margin-top: 10px;
        ma
    }
	.modal_body {
		width: 500px;
		height: 170px;
		margin: auto;
		padding-top: 70px;
	}
	.modal_footer {
		width: 300px;
		margin: auto;
		display: flex;
		justify-content: space-between;
	}
    .modal_title_side{
        flex: 0 0 40px;
        text-align: center;
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
					                        		<button type="button" class="btn btnDelete" id="add_feed">예약 취소</button>
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
	    
		<!-- Modal s -->
		<div id="modal_add_feed" class="modal_overlay">
			<div class="modal_window">
				<div class="modal_title">
					<div class="modal_title_side"></div>
					<div style="margin-bottom: 7px"> 예약 취소 </div>
					<div class="modal_title_side">
						
					</div>
				</div>
				<div class="modal_body">
					해당 예약을 삭제하시겠습니까? 삭제 시 복구는 불가합니다.
				</div>
				<div class="modal_footer">
					<button type="button" class="btn btn-secondary" id="close_modal" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-danger" id="btnDel">삭제</button>
				</div>
			</div>
		</div>
		<!-- Modal e -->
		
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
	 // 모달 띄우기 코드
    	const modal = document.getElementById("modal_add_feed");
	    const buttonAddFeed = document.getElementById("add_feed");
	   
			buttonAddFeed.addEventListener("click", e => {
				modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
		    	modal.style.display = "flex";
		        
				document.body.style.overflowY = "hidden"; // 스크롤 없애기
	        
			}); 
		
	 	// 모달 닫기 코드
	    const buttonCloseModal = document.getElementById("close_modal");
	    		
		buttonCloseModal.addEventListener("click", e => {
			modal.style.display = "none";
			document.body.style.overflowY = "visible";
		});
    </script>
    
</body>

</html>