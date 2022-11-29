<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <title>예약 수정</title>
	<%@include file="../../../common/xdmin/include/head.jsp"%>
    
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
	/* 	
		.form-select {
			height: 50px;
			font-size: 13px;
			text-align: center;
			border: 1px solid #e2dcdb;
		}
	 */	
		.form-control, .form-select {
			border-radius: 6px;
		}
		
		#cbtn {
			margin-top: 20px;
		}
		
		#btnReturn {
			/* background-color: white;
			color: #372d2b; */
			border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	color: #372d2b;
	    	text-align: center;
	    	width: 100px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
		}
			
		.okBtn {
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
	    .okBtn:hover, #btnReturn:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    .cancelBtn {
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
	</style>

	<title>내 예약 정보</title>
	
</head>
<body>

    <%@include file="../../../common/xdmin/include/header.jsp"%>
    
    <form id="form" name="reserform" method="post">
    	<input type="hidden" id="ifrsSeq" name="ifrsSeq" value="${resv.ifrsSeq}">
    	<input type="hidden" id="ifmmSeq" value="${info.ifmmSeq}">
    	<input type="hidden" id="ifrsPlace" name="ifrsPlace" value="${resv.ifrsPlace}">
    	<input type="hidden" id="ifrsLocation" name="ifrsLocation" value="${resv.ifrsLocation}">
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
			                                <input type="text" class="form-control" id="ifmmName" name="ifmmName" value="<c:out value="${info.ifmmName}" />" readonly>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPetName">예약자명</label>
			                                <input type="text" class="form-control" id="ifrsPetName" name="ifrsPetName" value="<c:out value="${resv.ifrsPetName}" />">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifmmTel">연락처</label><br>
											<input class="form-control" type="text" id="ifmmTel" name="ifmmTel" value="<c:out value="${info.ifmmTel}" />" readonly>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group">
				                            <label class="control-label" for="ifrsHopeDate">예약 희망 날짜</label>
				                            <input class="form-control" type="datetime-local" id="ifrsHopeDate" name="ifrsHopeDate" value="<c:out value="${resv.ifrsHopeDate}" />">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsLocation">위치</label>
			                                <input type="text" class="form-control" id="ifrsLocation" name="ifrsLocation" value="<c:out value="${resv.ifrsLocation}" />" readonly>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPlace">예약 장소</label>
			                                <input type="text" class="form-control" id="ifrsPlace" name="ifrsPlace" value="<c:out value="${resv.ifrsPlace}" />" readonly>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="ifrsPurpose">예약 목적</label>
			                                <input type="text" class="form-control" id="ifrsPurpose" name="ifrsPurpose" value="<c:out value="${resv.ifrsPurpose}" />">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group">
				                            <label class="control-label" for="ifrsRequest">요청사항</label>
				                            <textarea class="form-control" id="ifrsRequest" name="ifrsRequest" rows="3" value="<c:out value="${resv.ifrsRequest}" />"></textarea>
				                        </div>
				                    </div>
				                    <div class="buttongroup">
				                    	<div class="col-md-2" id="cbtn">
					                        <div class="form-group">
				                        		<button type="button" id="btnChange" class="btn okBtn" onclick="javascript:goView(${resv.ifrsSeq})"/>변경 완료</button>
					                        </div>
					                    </div>
					                    <div class="col-md-2" id="cbtn">
					                        <div class="form-group">
					                        	<a href="reservationPage">
					                            	<button type="button" id="btnReturn" class="btn cancelBtn">취소</button>
					                            </a>
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
    
    	var form = $("form[name=reserform]");
    	
    	var goUrlUpdt = "/reservation/changeInfo";
    	
		goView = function(key) {
			ifrsSeq.attr("value", key); 
			form.attr("action", goUrlUpdt).submit();
		}
    	
    	/* $("#btnChange").on("click", function(){
       		form.attr("action", goUrlUpdt).submit();
    	}); */
    
    </script>
</body>

</html>
