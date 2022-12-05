<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
    <title>코드그룹 리스트</title>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    
    <style type="text/css">
    
	    .category {
	    	text-align: left;
	    	height: 500px;
	    	background: white;
	    	border: none;
	    }
	    
	    .listtitle {
	    	font-weight: bold;
	    	font-size: 19px;
	    }
	    
	    .listmenu {
	    	margin-left: 15px;
	    }
	    
	    .searchBox {
	    	max-width: 100%;
	    	background: gray;
	    	height: 200px;
	    	padding: 37px 20px;
	    }
	    .form-control {
	    	color: black;
	    }
	    .searchBtn, .resetBtn {
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
	    .searchBtn:hover, .resetBtn:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
	    .post-block {
	    	margin-top: 30px;
	    }
	    
	    .in:hover {
	    	cursor: pointer;
	    	background-color: #372d2b;
	    }
	    
	    #rowNum {
	    	max-width: 100px;
	    }
	    
	    th, td {
	    	text-align: center;
	    }
	    
	    .pagination>.active>a {
	    	background-color: #808080;
	    	border-color: #808080;
	    }
	    
	    .pagination>li>a {
	    	color: #808080;
	    }
    
    </style>
    
</head>

<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<div class="totalContent">
	    <div class="content">
	        <div class="container">
	            <div class="row">
	            	 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
	                    <div class="widget widget-categories category" >
	                        <!-- widget categories -->
	                        <!-- widget start -->
	                        <ul class="listnone">
	                        	<li class="listtitle">Setting</li>
	                            <li class="listmenu"><a href="/member/memberList">회원 리스트 </a></li>
	                            <li class="listmenu"><a href="/findpet/findpetList">반려동물 리스트</a></li>
	                            <li class="listmenu"><a href="/animal/animalList">유기동물 리스트</a></li>
	                            <br>
	                            <li class="listtitle">Code</li>
	                            <li class="listmenu"><a href="/code/codeList">코드 리스트</a></li>
	                            <li class="listmenu" style="color: #808080"><a href="/codegroup/codegroupList"><b>코드그룹 리스트</b></a></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
	                    <div class="row">
	                    	<form method="post" name="cgform">
						    <input type="hidden" name="ifcgSeq">
							<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
							<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
							<input type="hidden" name="checkboxSeqArray">
	                    	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                            <div class="row">
	                            	<div class="col searchBox">
	                            		<div class="row">
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<select class="form-control" name="shDelNy">
	                            					<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>>삭제여부</option>
													<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
													<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
	                            				</select>
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<select class="form-control" name="shOptionDate">
	                            					<option value="">날짜선택</option>
													<option value="1">최근수정일</option>
	                            				</select>
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<input type="text" id="shstartDate" name="shstartDate" class="form-control shDate" value="${vo.shstartDate}" placeholder="시작일" autocomplete="off">
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<input type="text" id="shendDate" name="shendDate" class="form-control shDate" value="${vo.shendDate}" placeholder="종료일" autocomplete="off">
	                            			</div>
	                            		</div>
	                            		<div class="row">
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<select class="form-control" name="shUseNy">
	                            					<option value="" <c:if test="${empty vo.shUseNy }">selected</c:if>>사용여부</option>
													<option value="0" <c:if test="${vo.shUseNy eq 0 }">selected</c:if>>N</option>
													<option value="1" <c:if test="${vo.shUseNy eq 1 }">selected</c:if>>Y</option>
	                            				</select>
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                           					<select class="form-control" name="shOption">
													<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>선택</option>
													<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 이름</option>
													<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(영문)</option>
												 </select>
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	                            				<input type="text" class="form-control" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력">
	                            			</div>
	                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="display: flex; justify-content: space-between; width: 150px;">
	                            				<button type="button" class="searchBtn" id="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>
	                            				<button type="button" class="resetBtn" id="resetBtn"><i class="fa-solid fa-rotate-left"></i></button>
	                            			</div>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
	                        </form>
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                            <div class="post-block">
	                               <div class="row">
		                               <div class="col"> 
			                           		<h1>코드그룹 리스트</h1>
		                               </div>
								   </div>
								   <div class="row" style="display: flex; justify-content: space-between; height: 30px;">
		                               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"> 
			                           		 <p class="meta">total: <c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }"/></p>
		                               </div>
		                               <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8"> 
			                           		&nbsp;
		                               </div>
		                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" id="rowNum"> 
		                                	<select class="form-control">
		                                		<option>10</option>
		                                		<option>20</option>
		                                		<option>30</option>
		                                		<option>40</option>
		                                	</select>
		                               </div>
								   </div>
	                            </div>
	                            <hr>
	                        </div>
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row">
									<div class="col">
										<table class="table table-striped">
											<tr>
												<th><input class="form-check-input" type="checkbox" name="check" id="allcheck"></th>
												<th>Seq</th>
												<th>코드그룹이름</th>
												<th>영문이름</th>
												<th>코드개수</th>
												<th>최근수정일</th>
												<th>사용유무</th>
												<th>삭제유무</th>
											</tr>
											<tr>
												<c:choose>
													<c:when test="${fn:length(list) eq 0 }">
														<td colspan="7">데이터가 존재하지 않습니다</td>
													</c:when>
													<c:otherwise>	
														<c:forEach items="${list}" var="list" varStatus="status">
															<tr onclick="goForm(${list.ifcgSeq })" class="in">
																<td onClick="event.cancelBubble = true"><input class="form-check-input" type="checkbox" name="check" value="<c:out value="${list.ifcgSeq }"/>"></td>
																<td>
																	<c:out value="${list.ifcgSeq }"/>
																</td>
																<td>
																	<c:out value="${list.ifcgName }"/>
																</td>
																<td>
																	<c:out value="${list.ifcgName_eng }"/>
																</td>
																<td>
																	<c:out value="${list.ifcgcodeCount }"/>
																</td>
																<td>
																	<c:out value="${list.ifcgModDate }"/>
																</td>
																<td id="UseNY">
																	<c:choose>
																		<c:when test="${list.ifcgUseNy eq 0 }">N</c:when>
																		<c:otherwise>Y</c:otherwise>
																	</c:choose>
																</td>
																<td id="DelNY">
																	<c:choose>
																		<c:when test="${list.ifcgDelNy eq 0 }">N</c:when>
																		<c:otherwise>Y</c:otherwise>
																	</c:choose>
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
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="row" style="margin-top: 20px;">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
										<button type="button" class="btn btn-warning"><i class="fa-solid fa-trash-can"></i></button>
										<button type="button" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
								    </div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="display: flex; justify-content: flex-end;">
										<button type="button" class="btn btn-success"><i class="fa-regular fa-file-excel"></i></button>
										<a href="/codegroup/codegroupForm"><button type="button" class="btn btn-primary" id="regbtn" style="margin-left: 5px;"><i class="fa-solid fa-plus"></i></button></a>
									</div>
								</div>
							</div>
	                    </div>
	                    <!-- pagination s -->
						<%@include file="../../../common/xdmin/include/pagination.jsp"%>
						<!-- pagination e -->
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
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
    
		var form = $("form[name=cgform]");
		var ifcgSeq = $("input:hidden[name=ifcgSeq]");
		
		var goUrlList = "/codegroup/codegroupList";
		var goUrlForm = "/codegroup/codegroupForm";
		
		$("#searchBtn").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#resetBtn").on("click", function(){
			$(location).attr("href", goUrlList);
		});
		
		goForm = function(key) {
			ifcgSeq.attr("value", key);
			form.attr("action", goUrlForm).submit();
		}
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
/* 		
		$("#regbtn").on("click", function(){
			form.attr("action", goUrlForm).submit();
		});
 */		
		$(document).ready(function() {
			$("input.shDate").datepicker();
		});
		
		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
    
    </script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
</body>

</html>
