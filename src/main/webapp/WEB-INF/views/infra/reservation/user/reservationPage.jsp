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
		width: 1500px;
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
    	font-size: 13pt;
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
    	font-size: 13pt;
    	font-weight: bold;
	}
	
	.in{
		cursor: pointer;
	}
</style>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" name="reserform">
    	<input type="hidden" id="ifrsSeq" name="ifrsSeq">
    	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="${sessSeq}">
    	<%-- <input type="hidden" id="sessSeq" value="${sessSeq }"> --%>
		<div class="totalContent">
		    <div class="content">
		        <div class="container2">
		        	<div class="bg-light pinside30">
					    <div class="row">
					        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row">
									<div class="col">
										<table class="table table-striped">
											<tr>
												<th><input class="form-check-input" type="checkbox" name="check" id="allcheck"></th>
												<th>#</th>
												<th>예약장소</th>
												<th>위치</th>
												<th>전화번호</th>
												<th>예약자명</th>
												<th>예약목적</th>
												<th>예약희망날짜</th>
												<th>요청사항</th>
												<th>신청일</th>
											</tr>
											<tr>
											<!-- <tr> -->
												<c:choose>
													<c:when test="${fn:length(list) eq 0 }">
														<td colspan="10" style="text-align: center;">데이터가 존재하지 않습니다</td>
													</c:when>
													<c:otherwise>	
														<c:forEach items="${list}" var="list" varStatus="status">
															<%-- <tr onclick="goForm(${list.ifrsSeq })" class="in"> --%>
															<tr onclick="javascript:goForm(${list.ifrsSeq })" class="in">
																<td onClick="event.cancelBubble = true"><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.ifrsSeq }"/>"></td>
																<td>
																	<%-- <a href="javascript:goForm(<c:out value="${list.ifrsSeq }"/>)"><c:out value="${list.ifrsSeq  }"/></a> --%>
																	<c:out value="${list.ifrsSeq }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsPlace }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsLocation }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsTel }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsPetName }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsPurpose }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsHopeDate }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsRequest }"/>
																</td>
																<td>
																	<c:out value="${list.ifrsRegDate }"/>
																</td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row" style="margin-top: 20px;">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
										<button type="button" class="btn btn-warning"><i class="fa-solid fa-trash-can"></i></button>
										<button type="button" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
								    </div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="display: flex; justify-content: flex-end;">
										<button type="button" class="btn btn-success"><i class="fa-regular fa-file-excel"></i></button>
										<a href="/reservation/reservationView"><button type="button" class="btn btn-primary" id="regbtn" style="margin-left: 5px;"><i class="fa-solid fa-plus"></i></button></a>
									</div>
								</div>
							</div> -->
					    </div>
					</div>
		        </div>
		    </div>
	    </div>
	</form>
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    
    <script type="text/javascript">
    	
	    $(document).ready(function() {
			$("#allcheck").click(function() {
				if($("#allcheck").is(":checked")) $("input[name=check]").prop("checked", true);
				else $("input[name=check]").prop("checked", false);
			});
		
			$("input[name=check]").click(function() {
				var total = $("input[name=check]").length;
				var checked = $("input[name=check]:checked").length;
		
				if(total != checked) $("#allcheck").prop("checked", false);
				else $("#allcheck").prop("checked", true); 
			});
		});
	    
	</script>
	
    <script type="text/javascript">
    
	    var ifrsSeq = $("#ifrsSeq");
	    var ifmmSeq = $("#ifmmSeq");
	    
	    var goUrlForm = "/reservation/reservationView";
	    
	    goForm = function(key) {
			ifrsSeq.attr("value", key);
			form.attr("action", goUrlForm).submit();
		}
		
		var form = $("form[name=reserform]");
//		var formVo = $("form[name=formVo]");
		
    	var goUrlDele = "/reservation/deleteInfo";
    
	    /* $("#btnDel").on("click", function(){
			formVo.attr("action", goUrlDele).submit();
		}); */
    
    </script>
    
</body>

</html>