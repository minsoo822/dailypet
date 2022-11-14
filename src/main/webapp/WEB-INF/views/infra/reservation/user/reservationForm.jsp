<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>

	<style type="text/css">
	
	.form-control {
		color: black;
	}
	
	.form-select {
		height: 50px;
		font-size: 13px;
		text-align: center;
		border: 1px solid #e2dcdb;
	}
	
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
    	width: 70px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
	}
		
	.okBtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 100px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .okBtn:hover, #btnReturn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .cancleBtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
	</style>

	<title>내 예약 정보</title>
	
</head>
<body>

    <%@include file="../../../common/xdmin/include/header.jsp"%>
    
    <form method="post" id="reserForm">
	    <div class="totalContent">
		    <div class="content">
		        <div class="container">
		        	<div class="bg-light pinside30">
					    <div class="row">
					        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					            <h1><b>나의 예약 정보</b></h1>
				                <div class="row">
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="name">고객명</label>
			                                <input type="text" class="form-control" id="ifmmName" name="ifmmName">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="petname">예약자명</label>
			                                <input type="text" class="form-control" id="ifamName" name="ifamName">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="phone">연락처</label><br>
			                                <select class="form-select" name="ifmmTelecom" id="ifmmTelecom" style="width: 22%; display: inline">
												<option selected>::통신사::</option>
												<option value="1">SKT</option>
												<option value="2">KT</option>
												<option value="3">LG</option>
											</select>
											<input class="form-control" type="text" id="ifmmPhone" name="ifmmPhone" style="width: 77%; display: inline">
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="form-group has-feedback">
				                            <label class="control-label" for="purpose">예약 목적</label>
			                                <input type="text" class="form-control" id="ifrsPurpose" name="ifrsPurpose">
				                        </div>
				                    </div>
				                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                        <div class="form-group">
				                            <label class="control-label" for="textarea">예약 희망 날짜</label>
				                            <input class="form-control" type="datetime-local" id="ifrsHopeDate" name="ifrsHopeDate"></textarea>
				                        </div>
				                    </div>
				                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                        <div class="form-group">
				                            <label class="control-label" for="textarea">요청사항</label>
				                            <textarea class="form-control" id="ifrsRequest" name="ifrsRequest" rows="3" placeholder=""></textarea>
				                        </div>
				                    </div>
				                    <div class="buttongroup">
				                    	<div class="col-md-2" id="cbtn">
					                        <div class="form-group">
					                        	<a href="reservationPage">
					                        		<button type="button" id="btnChange" class="btn okBtn">변경 완료</button>
					                        	</a>
					                        </div>
					                    </div>
					                    <div class="col-md-1" id="cbtn">
					                        <div class="form-group">
					                        	<a href="reservationPage">
					                            	<button type="button" id="btnReturn" class="btn cancleBtn">취소</button>
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
</body>

</html>
